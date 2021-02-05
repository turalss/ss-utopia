package com.utopia;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

import com.utopia.model.UtopiaInstance;
import com.utopia.service.UtopiaInstanceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationContext;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class UtopiaInstanceManager {
	
	@Autowired
  ApplicationArguments applicationArgs;

  @Autowired
  ApplicationContext context;

  @Autowired
  UtopiaInstanceService instanceService;

  @EventListener
  private void onApplicationReady(ApplicationReadyEvent event) {
    
    // Grab custom args for configuration
    String[] customArgs = findCustomArgs(applicationArgs.getSourceArgs());

    // Configure the UtopiaInstance, grabbing the instance.type
    String instanceType = handleArgsConfiguration(customArgs);
    if(instanceType == null) {
      KitUtils.logError("Unable to get application.properties!\nShutting down . . .");
      SpringApplication.exit(context, () -> 0);
    }

    // Grab the list of URIs other UtopiaInstances are running on
    // and generate a new unique URI
    List<UtopiaInstance> otherInstances = instanceService.findAll();
    List<String> uriList = otherInstances.stream().map(UtopiaInstance::getUri).collect(Collectors.toList());
    String newURI = getUniqueUri(uriList);

    // Push this new UtopiaInstance to the Database
    UtopiaInstance savedInstance = instanceService.save(new UtopiaInstance(newURI, "INACTIVE", instanceType));

    // Update the property "utopia.instance.uri" to the URI returned
    // from the database and start listening on the assigned URI 
    // (port for development)
    boolean uriConfigured = handleUriConfiguration(Integer.parseInt(savedInstance.getUri()));
    if(!uriConfigured) {
      KitUtils.logError("Unable to set utopia.instance.uri!\nShutting down . . .");
      SpringApplication.exit(context, () -> 0);
    }
  }

  private static String[] findCustomArgs(String[] args) {
    for (String a : args) {
      if (a.startsWith("--customArgs")) {
        String isolatedArgs = a.replace("--customArgs=", "");
        String[] customArgs = isolatedArgs.split("`");
        KitUtils.logAnnounce("custom Args detected:");
        KitUtils.logSuccess(KitUtils.toString(customArgs));
        return customArgs;
      }
    }
    KitUtils.logWarn("Custom Args not detected.\n" + "Setting configuration to default.");
    return new String[] {"default"};
  }

  public static Properties getConfiguration() {
    // prettier-ignore
    try (InputStream input = new FileInputStream(
    "src/main/resources/application.properties")) {
      Properties props = new Properties();
      props.load(input);
      return props;
    } catch(IOException err) {
      return null;
    }
  }

  private static String getUniqueUri(List<String> uriList) {
    Integer newURI = 8080;
    while(uriList.contains(newURI.toString())) {
      newURI += 1;
    }
    return newURI.toString();
  }

  private static String handleArgsConfiguration(String[] args) {
    Properties props = getConfiguration();
    if(props == null) {
      return null;
    }
    
    // Parse customArgs
    for (String a : args) {
      String[] split = a.split("=");
      if(split.length > 1) {
        String key = a.split("=")[0].toLowerCase();
        String value = a.split("=")[1].toUpperCase();

        // Switch (property)
        switch (key) {

          // instance.type
          case "utopia.instance.type":
            if (
              value.equals("CUSTOMER") ||
              value.equals("AGENT") ||
              value.equals("EMPLOYEE") ||
              value.equals("ADMIN") ||
              value.equals("ORCHESTRATOR")
            ) {
              props.setProperty("utopia.instance.type", value);
            } else {
              KitUtils.logError("Invalid argument for utopia.instance.type: " + value);
            }
            break;

          // invalid property
          default:
            KitUtils.logWarn("Invalid custom argument: " + a + "\nArgument was ignored!");
          break;
        }
      }
    }

    // Announce configuration to console
    String instanceType = props.getProperty("utopia.instance.type");
    KitUtils.logAnnounce("instance created using properties:");
    KitUtils.logSuccess("utopia.instance.type=" + instanceType);
    return instanceType;
  }

  // private static void handleUriConfiguration(String uri)
  private static Boolean handleUriConfiguration(Integer uri) {
    Properties props = getConfiguration();
    if(props == null) {
      return false;
    }

    // Set the property and call the WebServerFactoryManager
    props.setProperty("utopia.instance.uri", uri.toString());
    // webServerFactoryManager.customize(); <- TODO set port here

    // Announce configuration to console
    KitUtils.logAnnounce("URI handshake complete");
    KitUtils.logSuccess("utopia.instance.uri=" + uri);
    return true;
  }
}