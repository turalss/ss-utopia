package com.utopia;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class UtopiaInstanceManager {
  
  @Autowired 
  ApplicationArguments applicationArgs;

  @EventListener
  public void onApplicationEvent(ContextRefreshedEvent event) {
    String[] customArgs = findCustomArgs(applicationArgs.getSourceArgs());
    if(customArgs != null) {
      handleConfiguration(customArgs);
		}
		
		// Get All Microservices from UtopiaInstanceController
		// Generate new unique URI
		// Push new UtopiaInstance to DB
  }

  private static String[] findCustomArgs(String[] args) {
    for (String a : args) {
      if (a.startsWith("--customArgs")) {
        String isolatedArgs = a.replace("--customArgs=", "");
        String[] customArgs = isolatedArgs.split("`");
        KitUtils.logWarn(
          "Custom Args Detected!\n" + KitUtils.toString(customArgs)
        );
        return customArgs;
      }
    }
    return null;
  }

  private static void handleConfiguration(String[] args) {
		try (InputStream input = new FileInputStream("src/main/resources/application.properties")) {
		
			Properties props = new Properties();
			props.load(input);

			for (String a : args) {
				String key = a.split("=")[0];
				String value = a.split("=")[1];
				switch (key) {
					case "utopia.instance.type":
						if (
							value.equals("customer") 	||
							value.equals("agent") 		||
							value.equals("employee") 	||
							value.equals("admin") 		||
							value.equals("orchestrator")
						) {
							props.setProperty("utopia.instance.type", value);
							KitUtils.logSuccess("Property set: utopia.instance.type=" + value);
						} else {
							KitUtils.logError(
								"Invalid argument for utopia.instance.type: " + value
							);
						}
					break;

					default:
						KitUtils.logWarn(
							"Invalid custom argument: " + a + "\nArgument was ignored!"
						);
					break;
				}
			}
		} catch(IOException e) {
      KitUtils.logError(
        "Unable to get application.properties!\nShutting down . . ."
      );
      System.exit(0);
		}
  }
}
