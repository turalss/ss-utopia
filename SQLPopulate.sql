USE utopia;

-- airplane Types
INSERT INTO airplane_type (max_capacity) VALUES (300);
INSERT INTO airplane_type (max_capacity) VALUES (800);
INSERT INTO airplane_type (max_capacity) VALUES (400);
INSERT INTO airplane_type (max_capacity) VALUES (200);
INSERT INTO airplane_type (max_capacity) VALUES (100);

-- airplane
INSERT INTO airplane (type_id) VALUES (1);
INSERT INTO airplane (type_id) VALUES (2);
INSERT INTO airplane (type_id) VALUES (3);
INSERT INTO airplane (type_id) VALUES (4);
INSERT INTO airplane (type_id) VALUES (5);

-- airport
DROP TABLE IF EXISTS airport;
CREATE TABLE IF NOT EXISTS airports (
    `id` INT NOT NULL UNIQUE,
    `code` VARCHAR(10) CHARACTER SET utf8,
    `name` VARCHAR(255) CHARACTER SET utf8,
    `cityCode` VARCHAR(10) CHARACTER SET utf8,
    `cityName` VARCHAR(255) CHARACTER SET utf8,
    `countryName` VARCHAR(255) CHARACTER SET utf8,
    `countryCode` VARCHAR(10) CHARACTER SET utf8,
    `timezone` INT,
    `lat` NUMERIC(7, 4),
    `lng` NUMERIC(7, 4),
    PRIMARY KEY (id)
);

-- First Section
INSERT INTO airports VALUES
    (1118,'ABE','Lehigh Valley International Airport','ABE','Allentown','UNITED STATES','US',-5,40.6521,-75.4408),
    (1120,'ABL','Ambler Airport','ABL','Ambler','UNITED STATES','US',-9,67.1064,-157.857),
    (1121,'ABQ','Albuquerque International Airport','ABQ','Albuquerque','UNITED STATES','US',-7,35.0402,-106.609),
    (1122,'ABR','Aberdeen Airport','ABR','Aberdeen','UNITED STATES','US',-6,45.4491,-98.4218),
    (1125,'ACT','Madison Cooper Airport','ACT','Waco','UNITED STATES','US',-6,31.6113,-97.2305),
    (1126,'ACV','Arcata Eureka Airport','ACV','Eureka','UNITED STATES','US',-8,40.9781,-124.109),
    (1131,'ADQ','Kodiak Airport','ADQ','Kodiak','UNITED STATES','US',-9,57.75,-152.494),
    (1366,'ADS','Addison Airport','DFW','Dallas','UNITED STATES','US',-5,32.9686,-96.8364),
    (1134,'AEL','Albert Lea Airport','AEL','Albert Lea','UNITED STATES','US',-100,0,0),
    (1135,'AEX','Alexandria International Airport','AEX','Alexandria','UNITED STATES','US',-6,31.3274,-92.5498),
    (1364,'AFW','Fort Worth Alliance Airport','DFW','Dallas','UNITED STATES','US',-6,32.9878,-97.3189),
    (1137,'AGN','Angoon Airport','AGN','Angoon','UNITED STATES','US',-9,57.5036,-134.585),
    (1149,'AKN','King Salmon Airport','AKN','King Salmon','UNITED STATES','US',-9,58.6768,-156.649),
    (1151,'ALE','Alpine Airport','ALE','Alpine','UNITED STATES','US',-100,0,0),
    (1158,'AMA','Amarillo International Airport','AMA','Amarillo','UNITED STATES','US',-6,35.2194,-101.706),
    (1160,'ANA','Anaheim Airport','ANA','Anaheim','UNITED STATES','US',-100,0,0),
    (1162,'ANC','Anchorage International Airport','ANC','Anchorage','UNITED STATES','US',-9,61.1744,-149.996),
    (1163,'AND','Anderson Airport','AND','Anderson','UNITED STATES','US',-5,34.4946,-82.7094),
    (1164,'ANI','Aniak Airport','ANI','Aniak','UNITED STATES','US',-9,61.5816,-159.543),
    (1165,'ANP','Lee Annapolis Airport','ANP','Annapolis','UNITED STATES','US',-100,0,0),
    (1360,'APA','Centennial Airport','DEN','Denver','UNITED STATES','US',-7,39.5701,-104.849),
    (1171,'APN','Phelps Collins Airport','APN','Alpena','UNITED STATES','US',-5,45.0781,-83.5603),
    (1173,'ART','Watertown Airport','ART','Watertown','UNITED STATES','US',-5,43.9919,-76.0217),
    (1178,'ASN','Talladega Airport','ASN','Talladega','UNITED STATES','US',-100,0,0),
    (1179,'AST','Astoria Airport','AST','Astoria','UNITED STATES','US',-8,46.158,-123.879),
    (1186,'AUG','Maine State Airport','AUG','Augusta','UNITED STATES','US',-5,44.3206,-69.7973),
    (1188,'AUS','Bergstrom International Airport','AUS','Austin','UNITED STATES','US',-6,30.1945,-97.6699),
    (1193,'AVP','Wilkes Barre Scranton International Airport','AVP','Scranton','UNITED STATES','US',-5,41.3385,-75.7234),
    (1195,'AXV','Neil Armstrong Airport','AXV','Wapakoneta','UNITED STATES','US',-100,0,0),
    (1917,'AZA','Williams Gateway Airport','PHX','Phoenix','UNITED STATES','US',-7,33.3078,-111.655),
    (1199,'BCB','Virginia Tech Airport','BCB','Blacksburg','UNITED STATES','US',-100,0,0),
    (1200,'BCE','Bryce Airport','BCE','Bryce','UNITED STATES','US',-7,37.7064,-112.146),
    (1544,'BDL','Bradley International Airport','HFD','Hartford','UNITED STATES','US',-5,41.9389,-72.6832),
    (1201,'BDR','Sikorsky Memorial Airport','BDR','Bridgeport','UNITED STATES','US',-5,41.1635,-73.1262),
    (1202,'BED','Bedford Airport','BED','Bedford','UNITED STATES','US',-5,42.47,-71.289),
    (1204,'BET','Bethel Airport','BET','Bethel','UNITED STATES','US',-9,60.7798,-161.838),
    (1205,'BFD','Bradford Regional Airport','BFD','Bradford','UNITED STATES','US',-5,41.8031,-78.6401),
    (1207,'BFG','Bullfrog Basin Airport','BFG','Bullfrog Basin','UNITED STATES','US',-100,0,0),
    (1209,'BFP','Beaver Falls Airport','BFP','Beaver Falls','UNITED STATES','US',-100,40.7725,-80.3915),
    (1213,'BGR','Bangor International Airport','BGR','Bangor','UNITED STATES','US',-5,44.8074,-68.8281),
    (1215,'BHM','Birmingham International Airport','BHM','Birmingham','UNITED STATES','US',-6,33.5629,-86.7535),
    (1217,'BIH','Bishop Airport','BIH','Bishop','UNITED STATES','US',-100,37.3731,-118.364),
    (1220,'BJC','Jeffco Airport','BJC','Broomfield','UNITED STATES','US',-7,39.9089,-105.117),
    (1222,'BKG','Branson Regional Airport','BKG','Branson','UNITED STATES','US',-6,36.532,-93.2006),
    (1308,'BKL','Burke Lakefront Airport','CLE','Cleveland','UNITED STATES','US',-100,41.525,-81.6833),
    (1226,'BLH','Blythe Airport','BLH','Blythe','UNITED STATES','US',-8,33.6192,-114.717),
    (1227,'BLI','Bellingham International Airport','BLI','Bellingham','UNITED STATES','US',-8,48.7927,-122.538),
    (1230,'BMI','Normal Airport','BMI','Bloomington','UNITED STATES','US',-6,40.4771,-88.9159),
    (1231,'BNA','Nashville International Airport','BNA','Nashville','UNITED STATES','US',-6,36.1245,-86.6782),
    (1234,'BOK','Brookings State Airport','BOK','Brookings','UNITED STATES','US',-100,0,0),
    (1235,'BOS','Logan International Airport','BOS','Boston','UNITED STATES','US',-5,42.3643,-71.0052),
    (1236,'BOW','Bartow Airport','BOW','Bartow','UNITED STATES','US',-6,27.9434,-81.7834),
    (1242,'BRO','South Padre Island International Airport','BRO','Brownsville','UNITED STATES','US',-6,25.9068,-97.4259),
    (1244,'BSI','Blairsville Airport','BSI','Blairsville','UNITED STATES','US',-100,0,0),
    (1247,'BTM','Bert Mooney Airport','BTM','Butte','UNITED STATES','US',-7,45.9548,-112.497),
    (1249,'BTR','Ryan Airport','BTR','Baton Rouge','UNITED STATES','US',-6,30.5332,-91.1496),
    (1250,'BTT','Bettles Airport','BTT','Bettles','UNITED STATES','US',-9,66.9139,-151.529),
    (1251,'BTV','Burlington International Airport','BTV','Burlington','UNITED STATES','US',-5,44.4719,-73.1533),
    (1252,'BUF','Greater Buffalo International Airport','BUF','Buffalo','UNITED STATES','US',-5,42.9405,-78.7322),
    (1253,'BUR','Burbank Glendale Pasadena Airport','BUR','Burbank','UNITED STATES','US',-8,34.2007,-118.359),
    (1257,'BWC','Brawley Airport','BWC','Brawley','UNITED STATES','US',-100,0,0),
    (1260,'BWI','Baltimore Washington International Airport','BWI','Baltimore','UNITED STATES','US',-5,39.1754,-76.6683),
    (1262,'BXS','Borrego Valley Airport','BXS','Borrego Springs','UNITED STATES','US',-7,33.259,-116.321),
    (1263,'BYI','Burley Airport','BYI','Burley','UNITED STATES','US',-100,42.5433,-113.772),
    (1269,'CAE','Columbia Metro Airport','CAE','Columbia','UNITED STATES','US',-5,33.9388,-81.1195),
    (1270,'CAK','Akron Canton Regional Airport','CAK','Akron','UNITED STATES','US',-5,40.9161,-81.4422),
    (1278,'CDR','Chadron Airport','CDR','Chadron','UNITED STATES','US',-7,42.8375,-103.096),
    (1279,'CDV','Mudhole Smith Airport','CDV','Cordova','UNITED STATES','US',-9,60.4918,-145.478),
    (1280,'CDW','Caldwell Wright Airport','CDW','Caldwell','UNITED STATES','US',-4,40.8752,-74.2814),
    (1294,'CHO','Charlottesville Albemarle Airport','CHO','Charlottesville','UNITED STATES','US',-5,38.1386,-78.4529),
    (1295,'CHS','Charleston International Airport','CHS','Charleston','UNITED STATES','US',-5,32.8986,-80.0405),
    (1299,'CIL','Melsing Creek Airport','CIL','Council','UNITED STATES','US',-9,64.8978,-163.703),
    (1300,'CJN','El Cajon Airport','CJN','El Cajon','UNITED STATES','US',-100,0,0),
    (1301,'CKB','Clarksburg Benedum Airport','CKB','Clarksburg','UNITED STATES','US',-5,39.2966,-80.2281),
    (1305,'CLD','Carlsbad Airport','CLD','Carlsbad','UNITED STATES','US',-8,33.0742,-117.165),
    (1307,'CLE','Hopkins International Airport','CLE','Cleveland','UNITED STATES','US',-5,41.4117,-81.8498),
    (1310,'CLM','William Fairchild International Airport','CLM','Port Angeles','UNITED STATES','US',-8,48.1202,-123.5),
    (1311,'CLT','Charlotte Douglas International Airport','CLT','Charlotte','UNITED STATES','US',-5,35.214,-80.9431),
    (1316,'CMH','Port Columbus International Airport','CMH','Columbus','UNITED STATES','US',-5,39.998,-82.8919),
    (1320,'CNM','Carlsbad Airport','CNM','Carlsbad','UNITED STATES','US',-7,32.3375,-104.263),
    (1322,'COD','Yellowstone Regional Airport','COD','Cody','UNITED STATES','US',-7,44.5202,-109.024),
    (1325,'COI','Merrit Island Airport','COI','Cocoa Metro Area','UNITED STATES','US',-100,0,0),
    (1326,'CON','Concord Airport','CON','Concord','UNITED STATES','US',-5,43.2027,-71.5023),
    (1330,'CPX','Culebra Airport','CPX','Culebra','UNITED STATES','US',-4,18.3127,-65.3034),
    (1836,'CRE','Grand Strand Airport','MYR','Myrtle Beach','UNITED STATES','US',-100,33.8118,-78.7239),
    (1331,'CRP','Corpus Christi International Airport','CRP','Corpus Christi','UNITED STATES','US',-6,27.7704,-97.5012),
    (1332,'CRW','Yeager Airport','CRW','Charleston','UNITED STATES','US',-5,38.3731,-81.5932),
    (1333,'CRX','Roscoe Turner Airport','CRX','Corinth','UNITED STATES','US',-100,0,0),
    (1334,'CSG','Columbus Metro Ft Benning Airport','CSG','Columbus','UNITED STATES','US',-5,32.5163,-84.9389),
    (1338,'CSM','Sherman Airport','CSM','Clinton','UNITED STATES','US',-100,35.34,-99.2),
    (1339,'CSN','Carson Airport','CSN','Carson City','UNITED STATES','US',-100,0,0),
    (1340,'CTW','Cottonwood Airport','CTW','Cottonwood','UNITED STATES','US',-100,0,0),
    (1343,'CVG','Cincinnati No Kentucky International Airport','CVG','Cincinnati','UNITED STATES','US',-5,39.0488,-84.6678),
    (1344,'CVN','Clovis Airport','CVN','Clovis','UNITED STATES','US',-6,34.4251,-103.079),
    (1190,'CWA','Central Wisconsin Airport','AUW','Wausau','UNITED STATES','US',-6,44.7727,-89.6466),
    (1348,'CXL','Calexico International Airport','CXL','Calexico','UNITED STATES','US',-8,32.6695,-115.513),
    (1349,'CXO','Montgomery Co Airport','CXO','Conroe','UNITED STATES','US',-6,30.3518,-95.4145),
    (1350,'CYS','Cheyenne Airport','CYS','Cheyenne','UNITED STATES','US',-7,41.1557,-104.812),
    (1351,'DAB','Daytona Beach Regional Airport','DAB','Daytona Beach','UNITED STATES','US',-5,29.1799,-81.0581),
    (1353,'DAY','Dayton International Airport','DAY','Dayton','UNITED STATES','US',-5,39.9024,-84.2194),
    (2203,'DCA','Ronald Reagan National Airport','WAS','Washington','UNITED STATES','US',-5,38.8521,-77.0377),
    (1356,'DCU','Pyor Airport','DCU','Decatur','UNITED STATES','US',-100,0,0),
    (1361,'DEN','Denver International Airport','DEN','Denver','UNITED STATES','US',-7,39.8617,-104.673),
    (1363,'DFI','Defiance Memorial Airport','DFI','Defiance','UNITED STATES','US',-100,0,0),
    (1372,'DLL','Dillon Airport','DLL','Dillon','UNITED STATES','US',-100,0,0),
    (1374,'DMO','Sedalia Memorial Airport','DMO','Sedalia','UNITED STATES','US',-100,0,0),
    (1139,'DNL','Daniel Airport','AGS','Augusta','UNITED STATES','US',-4,33.4665,-82.0394),
    (1381,'DSI','Destin Airport','DSI','Destin','UNITED STATES','US',-100,0,0),
    (1388,'DUC','Halliburton Airport','DUC','Duncan','UNITED STATES','US',-6,34.4713,-97.9599),
    (1392,'DVL','Devils Lake Airport','DVL','Devils Lake','UNITED STATES','US',-6,48.1144,-98.9086),
    (1393,'DVN','Davenport Airport','DVN','Davenport','UNITED STATES','US',-100,0,0),
    (1918,'DVT','Phoenix Deer Valley Airport','PHX','Phoenix','UNITED STATES','US',-7,33.4117,112.457),
    (1573,'DWH','David Wayne Hooks Airport','HOU','Houston','UNITED STATES','US',-6,30.0637,-95.5543),
    (1395,'DYL','Doylestown Airport','DYL','Doylestown','UNITED STATES','US',-100,0,0),
    (1396,'EAA','Eagle Airport','EAA','Eagle','UNITED STATES','US',-9,64.7781,-141.15),
    (1248,'EBR','Baton Rouge Downtown Airport','BTR','Baton Rouge','UNITED STATES','US',-100,0,0),
    (1904,'ECP','Northwest Florida Beaches International Airport','PFN','Panama City','UNITED STATES','US',-6,30.3417,-85.7973),
    (1402,'EED','Needles Airport','EED','Needles','UNITED STATES','US',-100,34.7667,-114.623),
    (1403,'EEN','Dilliant Hopkins Airport','EEN','Keene','UNITED STATES','US',-100,0,0),
    (1408,'EGV','Eagle River Union Airport','EGV','Eagle River','UNITED STATES','US',-6,45.9323,-89.2683),
    (1409,'EHT','Rentschler Airport','EHT','East Hartford','UNITED STATES','US',-100,0,0),
    (1416,'ELM','Elmira Corning Regional Airport','ELM','Elmira','UNITED STATES','US',-5,42.1599,-76.8916),
    (1417,'ELP','El Paso International Airport','ELP','El Paso','UNITED STATES','US',-7,31.8072,-106.378),
    (1420,'EMT','El Monte Airport','EMT','El Monte','UNITED STATES','US',-100,0,0),
    (1424,'EOK','Keokuk Airport','EOK','Keokuk','UNITED STATES','US',-100,0,0),
    (1426,'ERV','Kerrville Airport','ERV','Kerrville','UNITED STATES','US',-6,29.9767,-99.0855),
    (1428,'ESD','Eastsound Orcas Is Airport','ESD','East Sound','UNITED STATES','US',-8,48.7081,-122.911),
    (1430,'ESP','Birchwood Pocono Airport','ESP','East Stroudsburg','UNITED STATES','US',-100,0,0),
    (1431,'ETB','West Bend Airport','ETB','West Bend','UNITED STATES','US',-100,0,0),
    (1434,'EUG','Eugene Airport','EUG','Eugene','UNITED STATES','US',-8,44.1246,-123.212),
    (1436,'EVV','Evansville Regional Airport','EVV','Evansville','UNITED STATES','US',-6,38.037,-87.5324),
    (1437,'EVW','Evanston Airport','EVW','Evanston','UNITED STATES','US',-100,0,0),
    (1441,'EWR','Newark Liberty International Airport','EWR','Newark','UNITED STATES','US',-5,40.6925,-74.1687),
    (1795,'EZF','Shannon Airport','MNZ','Manassas','UNITED STATES','US',-100,0,0),
    (1444,'FAI','Fairbanks International Airport','FAI','Fairbanks','UNITED STATES','US',-9,64.8151,-147.856),
    (1445,'FAJ','Fajardo Airport','FAJ','Fajardo','UNITED STATES','US',-4,18.3089,-65.6619),
    (1446,'FAR','Hector Airport','FAR','Fargo','UNITED STATES','US',-6,46.9207,-96.8158),
    (1448,'FCH','Fresno Chandler Airport','FAT','Fresno','UNITED STATES','US',-100,0,0),
    (1813,'FCM','Flying Cloud Airport','MSP','Minneapolis','UNITED STATES','US',-100,0,0),
    (1455,'FKL','Chess Lamberton Airport','FKL','Franklin','UNITED STATES','US',-5,41.3779,-79.8604),
    (1456,'FLG','Flagstaff Airport','FLG','Flagstaff','UNITED STATES','US',-7,35.1403,-111.669),
    (1458,'FLL','Ft Lauderdale Hollywood International Airport','FLL','Ft Lauderdale','UNITED STATES','US',-5,26.0726,-80.1527),
    (1461,'FLP','Flippin Airport','FLP','Flippin','UNITED STATES','US',-100,0,0),
    (1463,'FMN','Four Corners Regional Airport','FMN','Farmington','UNITED STATES','US',-7,36.7412,-108.23),
    (1469,'FNT','Bishop International Airport','FNT','Flint','UNITED STATES','US',-5,42.9654,-83.7436),
    (1470,'FOB','Fort Bragg Airport','FOB','Fort Bragg','UNITED STATES','US',-100,0,0),
    (1474,'FRD','Friday Harbor Airport','FRD','Friday Harbor','UNITED STATES','US',-8,48.5219,-123.024),
    (1475,'FRG','Republic Airport','FRG','Farmingdale','UNITED STATES','US',-100,40.7288,-73.4134),
    (1489,'GAL','Galena Airport','GAL','Galena','UNITED STATES','US',-9,64.7362,-156.937),
    (1491,'GBG','Galesburg Airport','GBG','Galesburg','UNITED STATES','US',-100,0,0),
    (1492,'GBR','Great Barrington Airport','GBR','Great Barrington','UNITED STATES','US',-100,0,0),
    (1495,'GCN','Grand Canyon Natl Park Airport','GCN','Grand Canyon','UNITED STATES','US',-7,35.9524,-112.147),
    (1499,'GEG','Spokane International Airport','GEG','Spokane','UNITED STATES','US',-8,47.6199,-117.534),
    (1837,'GGE','George Town Airport','MYR','Myrtle Beach','UNITED STATES','US',-100,0,0),
    (1507,'GKT','Gatlinburg Airport','GKT','Gatlinburg','UNITED STATES','US',-100,0,0),
    (1511,'GLR','Otsego Airport','GLR','Gaylord','UNITED STATES','US',-100,0,0),
    (1527,'GMU','Greenville Downtown Airport','GSP','Greenville','UNITED STATES','US',-100,34.8481,-82.35),
    (1516,'GON','Groton New London Airport','GON','New London','UNITED STATES','US',-5,41.3301,-72.0451),
    (1517,'GPT','Biloxi Regional Airport','GPT','Gulfport','UNITED STATES','US',-6,30.4073,-89.0701),
    (1526,'GSP','Greenville Spartanburg Airport','GSP','Greenville','UNITED STATES','US',-5,34.8956,-82.2189),
    (1528,'GST','Gustavus Airport','GST','Glacier Bay','UNITED STATES','US',-9,58.4253,-135.707),
    (1529,'GTF','Great Falls International Airport','GTF','Great Falls','UNITED STATES','US',-7,47.482,-111.371),
    (2172,'GTR','Golden Airport','UBS','Columbus','UNITED STATES','US',-6,33.4503,-88.5914),
    (1530,'GTY','Gettysburg Airport','GTY','Gettysburg','UNITED STATES','US',-100,0,0),
    (1532,'GUF','Edwards Airport','GUF','Gulf Shores','UNITED STATES','US',-100,0,0),
    (1535,'GWO','Leflore Airport','GWO','Greenwood','UNITED STATES','US',-6,33.4943,-90.0847),
    (1536,'GWS','Glenwood Springs Airport','GWS','Glenwood Springs','UNITED STATES','US',-100,0,0),
    (1539,'GYY','Gary International Airport','GYY','Gary','UNITED STATES','US',-6,41.6163,-87.4128),
    (1542,'HDN','Hayden Airport','HDN','Hayden','UNITED STATES','US',-7,40.4812,-107.218),
    (1545,'HFD','Brainard Airport','HFD','Hartford','UNITED STATES','US',-5,41.7367,-72.6494),
    (1548,'HHR','Hawthorne Airport','HHR','Hawthorne','UNITED STATES','US',-8,33.9228,-118.335),
    (1549,'HIB','Hibbing Chisolm Airport','HIB','Hibbing','UNITED STATES','US',-6,47.3866,-92.839),
    (1550,'HIE','Mt washington Regional Airport','HIE','Whitefield','UNITED STATES','US',-100,0,0),
    (1552,'HIO','Portland Hillsboro Airport','HIO','Hillsboro','UNITED STATES','US',-8,45.5404,-122.95),
    (1554,'HKB','Healy Lake Airport','HKB','Healy Lake','UNITED STATES','US',-9,63.8675,-148.969),
    (1568,'HOP','Hopkinsville Christian Country Airport','HOP','Hopkinsville','UNITED STATES','US',-6,36.6686,-87.4962),
    (1572,'HOU','Houston Hobby Airport','HOU','Houston','UNITED STATES','US',-6,29.6454,-95.2789),
    (1576,'HPV','Princeville Airport','HPV','Princeville','UNITED STATES','US',-100,0,0),
    (1577,'HPY','Baytown Airport','HPY','Baytown','UNITED STATES','US',-100,0,0),
    (1578,'HRL','Rio Grande Valley International Airport','HRL','Harlingen','UNITED STATES','US',-6,26.2285,-97.6544),
    (1678,'HSH','Henderson Sky Harbor Airport','LAS','Las Vegas','UNITED STATES','US',-8,35.9728,-115.134),
    (1581,'HSL','Huslia Airport','HSL','Huslia','UNITED STATES','US',-9,65.6978,-156.351),
    (1584,'HSV','Huntsville International Airport','HSV','Huntsville','UNITED STATES','US',-6,34.6372,-86.7751),
    (1585,'HTO','East Hampton Airport','HTO','East Hampton','UNITED STATES','US',-100,0,0),
    (1586,'HTS','Tri State Milton Airport','HTS','Huntington','UNITED STATES','US',-5,38.3667,-82.558),
    (1588,'HTV','Huntsville Airport','HTV','Huntsville','UNITED STATES','US',-100,0,0),
    (1589,'HUC','Humacao Airport','HUC','Humacao','UNITED STATES','US',-100,0,0),
    (1592,'HUM','Terrebonne Airport','HUM','Houma','UNITED STATES','US',-100,0,0),
    (1595,'HVE','Intermediate Airport','HVE','Hanksville','UNITED STATES','US',-100,0,0),
    (1596,'HVN','Tweed New Haven Airport','HVN','New Haven','UNITED STATES','US',-5,41.2637,-72.8868),
    (1602,'IAG','Niagara Falls International Airport','IAG','Niagara Falls','UNITED STATES','US',-5,43.1073,-78.9462),
    (1603,'ICT','Mid Continent Airport','ICT','Wichita','UNITED STATES','US',-6,37.6499,-97.4331),
    (1606,'IFP','Laughlin Bullhead International Airport','IFP','Bullhead City','UNITED STATES','US',-7,35.1574,-114.56),
    (1609,'IKK','Greater Kankakee Airport','IKK','Kankakee','UNITED STATES','US',-6,41.0714,-87.8463),
    (1614,'IMT','Ford Airport','IMT','Iron Mountain','UNITED STATES','US',-5,45.8184,-88.1146),
    (1615,'IND','Indianapolis International Airport','IND','Indianapolis','UNITED STATES','US',-5,39.7173,-86.2944),
    (1616,'INL','International Falls Airport','INL','International Falls','UNITED STATES','US',-6,48.5662,-93.4031),
    (1617,'INT','Smith Reynolds Airport','INT','Winston-Salem','UNITED STATES','US',-5,36.1337,-80.222),
    (1627,'ISP','Long Island Macarthur Airport','ISP','Islip','UNITED STATES','US',-5,40.7952,-73.1002),
    (1629,'ISS','Wiscasset Airport','ISS','Wiscasset','UNITED STATES','US',-100,0,0),
    (1633,'IWD','Ironwood Airport','IWD','Ironwood','UNITED STATES','US',-6,46.5275,-90.1314),
    (1635,'JAC','Jackson Hole Airport','JAC','Jackson','UNITED STATES','US',-7,43.6073,-110.738),
    (1637,'JAN','Jackson Evers International Airport','JAN','Jackson','UNITED STATES','US',-6,32.3112,-90.0759),
    (1638,'JAX','Jacksonville International Airport','JAX','Jacksonville','UNITED STATES','US',-5,30.4941,-81.6879),
    (1775,'JCI','Johnson Industrial Airport','MKC','Kansas City','UNITED STATES','US',-6,38.8309,-94.8903),
    (1644,'JHM','Kapalua Airport','JHM','Kapalua','UNITED STATES','US',-10,20.9629,-156.673),
    (1649,'JMS','Jamestown Airport','JMS','Jamestown','UNITED STATES','US',-6,46.9297,-98.6782),
    (1650,'JNU','Juneau Airport','JNU','Juneau','UNITED STATES','US',-9,58.355,-134.576),
    (1651,'JOT','Joliet Park District Airport','JOT','Joliet','UNITED STATES','US',-100,41.5178,-88.1756),
    (1652,'JST','Johnstown Cambria Airport','JST','Johnstown','UNITED STATES','US',-5,40.3161,-78.8339),
    (1655,'KAE','Kake Airport','KAE','Kake','UNITED STATES','US',-9,56.9731,-133.946),
    (1658,'KIC','Mesa Del Rey Airport','KIC','King City','UNITED STATES','US',-100,0,0),
    (1659,'KKT','Kentland Airport','KKT','Kentland','UNITED STATES','US',-100,0,0),
    (1661,'KLS','Kelso Longview Regional Airport','KLS','Kelso','UNITED STATES','US',-8,46.118,-122.898),
    (1662,'KLW','Klawock Airport','KLW','Klawock','UNITED STATES','US',-9,55.5792,-133.076),
    (1664,'KOA','Keahole Airport','KOA','Kona','UNITED STATES','US',-10,19.7388,-156.046),
    (1665,'KPD','King Of Prussia Airport','KPD','King Of Prussia','UNITED STATES','US',-100,0,0),
    (1667,'KTN','Ketchikan International Airport','KTN','Ketchikan','UNITED STATES','US',-9,55.3556,-131.714),
    (1668,'KTS','Brevig Mission Airport','KTS','Brevig Mission','UNITED STATES','US',-9,65.3314,-166.466),
    (1669,'KYL','Port Largo Airport','KYL','Key Largo','UNITED STATES','US',-100,0,0),
    (1671,'LAA','Lamar Airport','LAA','Lamar','UNITED STATES','US',-7,38.0697,-102.688),
    (1672,'LAF','Lafayette Airport','LAF','Lafayette','UNITED STATES','US',-5,40.4123,-86.9369),
    (1673,'LAL','Lakeland Airport','LAL','Lakeland','UNITED STATES','US',-4,27.9889,-82.0186),
    (1675,'LAN','Lansing Airport','LAN','Lansing','UNITED STATES','US',-5,42.7787,-84.5874),
    (1685,'LAX','Los Angeles International Airport','LAX','Los Angeles','UNITED STATES','US',-8,33.9425,-118.408),
    (1686,'LBB','Lubbock Preston Smith International Airport','LBB','Lubbock','UNITED STATES','US',-6,33.6636,-101.823),
    (1690,'LBT','Lumberton Airport','LBT','Lumberton','UNITED STATES','US',-100,0,0),
    (1315,'LCK','Rickenbacker International Airport','CMH','Columbus','UNITED STATES','US',-5,39.8138,-82.9278),
    (1697,'LEW','Auburn Lewiston Airport','LEW','Lewiston','UNITED STATES','US',-100,0,0),
    (1702,'LGC','Calloway Airport','LGC','La Grange','UNITED STATES','US',-4,33.0089,-85.0726),
    (1703,'LGU','Logan Airport','LGU','Logan','UNITED STATES','US',-7,41.791,-111.852),
    (1706,'LJN','Lake Jackson Airport','LJN','Lake Jackson','UNITED STATES','US',-100,0,0),
    (1707,'LLY','Burlington Country Airport','LLY','Mount Holly','UNITED STATES','US',-100,0,0),
    (1711,'LNS','Lancaster Airport','LNS','Lancaster','UNITED STATES','US',-5,40.1217,-76.2961),
    (1712,'LNY','Lanai Airport','LNY','Lanai','UNITED STATES','US',-10,20.7856,-156.951),
    (1713,'LOZ','Corbin London Airport','LOZ','London','UNITED STATES','US',-100,37.087,-84.0773),
    (2083,'LPC','Lompoc Airport','SMX','Santa Maria','UNITED STATES','US',-100,0,0),
    (1714,'LPO','La Porte Airport','LPO','La Porte','UNITED STATES','US',-100,0,0),
    (1715,'LPS','Lopez Island Airport','LPS','Lopez Island','UNITED STATES','US',-8,48.4839,-122.938),
    (1717,'LRU','Las Cruces Crawford Airport','LRU','Las Cruces','UNITED STATES','US',-7,32.2894,-106.922),
    (1719,'LSN','Los Banos Airport','LSN','Los Banos','UNITED STATES','US',-100,0,0),
    (1724,'LVK','Bron Airport','LVK','Livermore','UNITED STATES','US',-8,37.4136,-121.491),
    (1726,'LVS','Las Vegas Airport','LVS','Las Vegas','UNITED STATES','US',-7,35.6542,-105.142),
    (1728,'LWB','Greenbrier Valley Airport','LWB','Lewisburg','UNITED STATES','US',-5,37.8583,-80.3994),
    (1730,'LWM','Lawrence Airport','LWM','Lawrence','UNITED STATES','US',-4,42.7172,-71.1234),
    (1731,'LWS','Lewiston Nez Pierce Airport','LWS','Lewiston','UNITED STATES','US',-8,46.3745,-117.015),
    (1737,'MAF','Midland International Airport','MAF','Midland','UNITED STATES','US',-6,31.9425,-102.202),
    (1738,'MAZ','Eugenio M De Hostos Airport','MAZ','Mayaguez','UNITED STATES','US',-4,18.2557,-67.1485),
    (1739,'MBL','Manistee Airport','MBL','Manistee','UNITED STATES','US',-5,44.2725,-86.2469),
    (1740,'MBS','Saginaw Airport','MBS','Saginaw','UNITED STATES','US',-5,43.5329,-84.0796),
    (1881,'MCO','Orlando International Airport','ORL','Orlando','UNITED STATES','US',-5,28.4294,-81.309),
    (1745,'MDH','Southern Illinois Airport','MDH','Carbondale','UNITED STATES','US',-100,0,0),
    (1754,'MFH','Mesquite Airport','MFH','Mesquite','UNITED STATES','US',-100,0,0),
    (1761,'MGR','Moultrie Airport','MGR','Moultrie','UNITED STATES','US',-4,31.0849,-83.8033),
    (1765,'MHT','Manchester Airport','MHT','Manchester','UNITED STATES','US',-5,42.9326,-71.4357),
    (1812,'MIC','Crystal Airport','MSP','Minneapolis','UNITED STATES','US',-100,0,0),
    (1871,'MIQ','Millard Airport','OMA','Omaha','UNITED STATES','US',-100,0,0),
    (1772,'MIV','Millville Airport','MIV','Millville','UNITED STATES','US',-5,39.3678,-75.0722),
    (1777,'MKE','General Mitchell International Airport','MKE','Milwaukee','UNITED STATES','US',-6,42.9472,-87.8966),
    (1779,'MKK','Molokai Airport','MKK','Hoolehua','UNITED STATES','US',-10,21.1529,-157.096),
    (1787,'MLT','Millinocket Airport','MLT','Millinocket','UNITED STATES','US',-5,45.6478,-68.6856),
    (1792,'MMU','Morristown Airport','MMU','Morristown','UNITED STATES','US',-5,40.7994,-74.4149),
    (1794,'MNZ','Manassas Airport','MNZ','Manassas','UNITED STATES','US',-100,0,0),
    (1800,'MOU','Mountain Village Airport','MOU','Mountain Village','UNITED STATES','US',-9,62.0954,-163.682),
    (1801,'MPR','McPherson Airport','MPR','McPherson','UNITED STATES','US',-100,0,0),
    (1802,'MPV','E F Knapp Airport','MPV','Montpelier','UNITED STATES','US',-5,44.2035,-72.5623),
    (1803,'MQT','Sawyer International Airport','MQT','Marquette','UNITED STATES','US',-5,46.3536,-87.3953),
    (1804,'MQY','Smyrna Airport','MQY','Smyrna','UNITED STATES','US',-100,36.009,-86.52),
    (1805,'MRB','Martinsburgh Regional Airport','MRB','Martinsburg','UNITED STATES','US',-5,39.2407,-77.591),
    (1806,'MRC','Maury Country Airport','MRC','Columbia','UNITED STATES','US',-100,0,0),
    (1809,'MSL','Muscle Shoals Airport','MSL','Muscle Shoals','UNITED STATES','US',-6,34.7453,-87.6102),
    (1817,'MSY','Louis Armstrong International Airport','MSY','New Orleans','UNITED STATES','US',-6,29.9934,-90.258),
    (1819,'MTH','Marathon Airport','MTH','Marathon','UNITED STATES','US',-5,24.7261,-81.0514),
    (1822,'MTP','Sky Portal Airport','MTP','Montauk','UNITED STATES','US',-100,41.0765,-71.9208),
    (1824,'MUE','Waimea Airport','MUE','Kamuela','UNITED STATES','US',-10,20.0013,-155.668),
    (1827,'MVN','Mt Vernon Outland Airport','MVN','Mt Vernon','UNITED STATES','US',-100,0,0),
    (1833,'MXY','McCarthy Airport','MXY','Mccarthy','UNITED STATES','US',-8,61.4371,-142.903),
    (1834,'MYL','Mccall Airport','MYL','Mccall','UNITED STATES','US',-7,44.8897,-116.101),
    (1818,'NEW','New Lakefront Airport','MSY','New Orleans','UNITED STATES','US',-100,30.0424,-90.0283),
    (1842,'NOT','Novato Airport','NOT','Novato','UNITED STATES','US',-100,0,0),
    (1843,'NPT','Newport State Airport','NPT','Newport','UNITED STATES','US',-100,0,0),
    (1844,'NQI','Naval Air Station Airport','NQI','Kingsville','UNITED STATES','US',-6,27.5072,-97.8097),
    (1846,'NUL','Nulato Airport','NUL','Nulato','UNITED STATES','US',-9,64.7294,-158.074),
    (1851,'OAK','Metro Oakland International Airport','OAK','Oakland','UNITED STATES','US',-8,37.7213,-122.221),
    (1853,'OCA','Ocean Reef Airport','OCA','Ocean Reef','UNITED STATES','US',-5,25.3254,-80.2748),
    (1858,'OEA','Oneal Airport','OEA','Vincennes','UNITED STATES','US',-100,0,0),
    (1862,'OGG','Kahului Airport','OGG','Maui','UNITED STATES','US',-10,20.8986,-156.43),
    (1656,'OJC','Johnson Executive Airport','KCK','Kansas City','UNITED STATES','US',-100,0,0),
    (1866,'OKC','Will Rogers World Airport','OKC','Oklahoma City','UNITED STATES','US',-6,35.3931,-97.6007),
    (1868,'OLM','Olympia Airport','OLM','Olympia','UNITED STATES','US',-7,46.9694,-122.903),
    (1869,'OLS','International Airport','OLS','Nogales','UNITED STATES','US',-7,31.4177,-110.848),
    (1870,'OLU','Columbus Airport','OLU','Columbus','UNITED STATES','US',-100,0,0),
    (1873,'OME','Nome Airport','OME','Nome','UNITED STATES','US',-9,64.5122,-165.445),
    (1767,'OPF','Opa Locka Airport','MIA','Miami','UNITED STATES','US',-5,25.907,-80.2784),
    (1292,'ORD','O''Hare International Airport','CHI','Chicago','UNITED STATES','US',-6,41.9786,-87.9048),
    (1878,'ORF','Norfolk International Airport','ORF','Norfolk','UNITED STATES','US',-5,36.8946,-76.2012),
    (1879,'ORH','Worcester Airport','ORH','Worcester','UNITED STATES','US',-5,42.2673,-71.8757),
    (1880,'ORL','Herndon Airport','ORL','Orlando','UNITED STATES','US',-5,28.5455,-81.3329),
    (1883,'OTG','Worthington Airport','OTG','Worthington','UNITED STATES','US',-100,0,0),
    (1885,'OTM','Industrial Airport','OTM','Ottumwa','UNITED STATES','US',-100,41.1066,-92.4479),
    (1886,'OTS','Ancortes Airport','OTS','Ancortes','UNITED STATES','US',-8,48.4989,-122.662),
    (1888,'OWA','Owatonna Airport','OWA','Owatonna','UNITED STATES','US',-100,0,0),
    (1890,'OWD','Norwood Ma Airport','OWD','Norwood','UNITED STATES','US',-4,42.1905,-71.1729),
    (1891,'OXC','Waterbury Oxford Airport','OXC','Oxford','UNITED STATES','US',-4,41.4786,-73.1352),
    (1892,'OXR','Oxnard Ventura Airport','OXR','Oxnard','UNITED STATES','US',-8,34.2008,-119.207),
    (1895,'PAO','Palo Alto Airport','PAO','Palo Alto','UNITED STATES','US',-100,0,0),
    (1896,'PBF','Pine Bluff Airport','PBF','Pine Bluff','UNITED STATES','US',-6,34.1731,-91.9356),
    (1897,'PBG','Plattsburgh International Airport','PBG','Plattsburgh','UNITED STATES','US',-5,44.6509,-73.4681),
    (1899,'PBI','Palm Beach International Airport','PBI','West Palm Beach','UNITED STATES','US',-5,26.6832,-80.0956),
    (1901,'PCT','Princeton Airport','PCT','Princeton','UNITED STATES','US',-100,0,0),
    (1903,'PDX','Portland International Airport','PDX','Portland','UNITED STATES','US',-8,45.5887,-122.598),
    (1906,'PGA','Page Airport','PGA','Page','UNITED STATES','US',-7,36.9261,-111.448),
    (1910,'PGV','Pitt Greenville Airport','PGV','Greenville','UNITED STATES','US',-5,35.6353,-77.3853),
    (1911,'PHF','Williamsburg International Airport','PHF','Newport News','UNITED STATES','US',-5,37.1319,-76.493),
    (1913,'PHL','Philadelphia International Airport','PHL','Philadelphia','UNITED STATES','US',-5,39.8719,-75.2411),
    (1916,'PHX','Sky Harbor International Airport','PHX','Phoenix','UNITED STATES','US',-7,33.4343,-112.012),
    (1919,'PIA','Greater Peoria Airport','PIA','Peoria','UNITED STATES','US',-6,40.6642,-89.6933),
    (1721,'PIB','Hattiesburg Laurel Regional Airport','LUL','Laurel','UNITED STATES','US',-6,31.4671,-89.3371),
    (2151,'PIE','St Petersburg Clearwater Airport','TPA','Tampa','UNITED STATES','US',-5,27.9102,-82.6874),
    (1923,'PIT','Pittsburgh International Airport','PIT','Pittsburgh','UNITED STATES','US',-5,40.4915,-80.2329),
    (1924,'PIZ','Dew Station Airport','PIZ','Point Lay','UNITED STATES','US',-9,69.7329,-163.005),
    (1925,'PJB','Payson Airport','PJB','Payson','UNITED STATES','US',-100,0,0),
    (1928,'PLK','M Graham Clark Airport','PLK','Point Lookout','UNITED STATES','US',-100,0,0),
    (1931,'PMD','La Palmdale Regional Airport','PMD','Palmdale','UNITED STATES','US',-8,34.6294,-118.085),
    (1936,'POE','Fort Polk Airport','POE','Fort Polk','UNITED STATES','US',-6,31.0448,-93.1917),
    (1939,'PPM','Pompano Beach Airport','PPM','Pompano Beach','UNITED STATES','US',-100,0,0),
    (1944,'PSB','Midstate Airport','PSB','Philipsburg','UNITED STATES','US',-100,0,0),
    (1945,'PSC','Tri Cities Airport','PSC','Pasco','UNITED STATES','US',-8,46.2647,-119.119),
    (1946,'PSE','Mercedita Airport','PSE','Ponce','UNITED STATES','US',-4,18.0083,-66.563),
    (1949,'PSK','New River Valley Airport','PSK','Dublin','UNITED STATES','US',-100,0,0),
    (1950,'PSM','Portsmouth Pease International Airport','PSM','Portsmouth','UNITED STATES','US',-5,43.0779,-70.8233),
    (1953,'PTK','Oakland Pontiac Airport','PTK','Pontiac','UNITED STATES','US',-100,42.6655,-83.4201),
    (1956,'PUB','Pueblo Airport','PUB','Pueblo','UNITED STATES','US',-7,38.2891,-104.497),
    (1959,'PUW','Pullman Moscow Airport','PUW','Pullman','UNITED STATES','US',-8,46.7439,-117.11),
    (1961,'PVD','T F Green St Airport','PVD','Providence','UNITED STATES','US',-5,41.7326,-71.4204),
    (1962,'PVF','Placerville Airport','PVF','Placerville','UNITED STATES','US',-100,0,0),
    (1963,'PVU','Provo Airport','PVU','Provo','UNITED STATES','US',-6,40.2181,-111.722),
    (1965,'PVZ','Casement Airport','PVZ','Painesville','UNITED STATES','US',-100,0,0),
    (1864,'PWA','Wiley Post Airport','OKC','Oklahoma City','UNITED STATES','US',-100,35.5342,-97.6471),
    (1289,'PWK','Pal Waukee Airport','CHI','Chicago','UNITED STATES','US',-6,42.1143,-87.9015),
    (1968,'PYM','Plymouth Airport','PYM','Plymouth','UNITED STATES','US',-4,41.909,-70.7288),
    (1972,'RAC','Horlick Airport','RAC','Racine','UNITED STATES','US',-100,0,0),
    (1978,'RCE','Roche Harbor Airport','RCE','Roche Harbor','UNITED STATES','US',-8,48.6081,-123.16),
    (1983,'RDU','Raleigh Durham International Airport','RDU','Raleigh','UNITED STATES','US',-5,35.8776,-78.7875),
    (1290,'RFD','Chicago Rockford Airport','CHI','Chicago','UNITED STATES','US',-6,42.1954,-89.0972),
    (1988,'RIC','Richmond International Airport','RIC','Richmond','UNITED STATES','US',-5,37.5052,-77.3197),
    (1992,'RKC','Yreka Airport','RKC','Yreka','UNITED STATES','US',-100,0,0),
    (1993,'RKD','Rockland Airport','RKD','Rockland','UNITED STATES','US',-5,44.0601,-69.0992),
    (1997,'RLA','National Airport','RLA','Rolla','UNITED STATES','US',-100,38.1274,-91.7695),
    (1998,'RLD','Richland Airport','RLD','Richland','UNITED STATES','US',-100,0,0),
    (2000,'RMG','Richard B Russell Airport','RMG','Rome','UNITED STATES','US',-4,34.3508,-85.1587),
    (2002,'RNO','Reno Tahoe International Airport','RNO','Reno','UNITED STATES','US',-8,39.4991,-119.768),
    (2003,'RNT','Renton Airport','RNT','Renton','UNITED STATES','US',-100,47.4933,-122.215),
    (2004,'ROA','Roanoke Regional Airport','ROA','Roanoke','UNITED STATES','US',-5,37.3255,-79.9754),
    (2006,'ROG','Rogers Airport','ROG','Rogers','UNITED STATES','US',-100,0,0),
    (2009,'RSN','Ruston Regional Airport','RSN','Ruston','UNITED STATES','US',-100,0,0),
    (1465,'RSW','Regional Southwest Airport','FMY','Fort Myers','UNITED STATES','US',-5,26.5362,-81.7552),
    (2013,'RUT','Rutland Airport','RUT','Rutland','UNITED STATES','US',-5,43.5294,-72.9496),
    (2014,'RVR','Green River Airport','RVR','Green River','UNITED STATES','US',-4,18.2453,-65.6433),
    (2015,'RWI','Wilson Airport','RWI','Rocky Mount','UNITED STATES','US',-5,35.8563,-77.8919),
    (2211,'RZH','Quartz Hill Airport','WJF','Lancaster','UNITED STATES','US',-100,0,0),
    (1676,'SAA','Lar Shively Airport','LAR','Laramie','UNITED STATES','US',-6,41.4449,-106.824),
    (2020,'SAC','Sacramento Executive Airport','SAC','Sacramento','UNITED STATES','US',-8,38.5125,-121.493),
    (2025,'SAN','Lindbergh International Airport','SAN','San Diego','UNITED STATES','US',-8,32.7336,-117.19),
    (2026,'SAR','Sparta Community Airport','SAR','Sparta','UNITED STATES','US',-100,38.1489,-89.6987),
    (2029,'SAV','Savannah International Airport','SAV','Savannah','UNITED STATES','US',-5,32.1276,-81.2021),
    (2030,'SBA','Santa Barbara Airport','SBA','Santa Barbara','UNITED STATES','US',-8,34.4262,-119.84),
    (2034,'SBD','San Bernardino International Airport','SBT','San Bernardino','UNITED STATES','US',-8,34.0954,-117.235),
    (2031,'SBM','Sheboygan Airport','SBM','Sheboygan','UNITED STATES','US',-100,0,0),
    (2032,'SBN','Michiana Regional Airport','SBN','South Bend','UNITED STATES','US',-5,41.7087,-86.3173),
    (2033,'SBS','Steamboat Airport','SBS','Steamboat Springs','UNITED STATES','US',-6,40.5163,-106.866),
    (2035,'SBY','Wicomico Regional Airport','SBY','Salisbury Ocean City','UNITED STATES','US',-5,38.3405,-75.5103),
    (2036,'SCC','Prudhoe Bay Deadhorse Airport','SCC','Prudhoe Bay Deadhorse','UNITED STATES','US',-9,70.1947,-148.465),
    (2040,'SCK','Stockton Metro Airport','SCK','Stockton','UNITED STATES','US',-8,37.8942,-121.238),
    (2042,'SDF','Louisville International Airport','SDF','Louisville','UNITED STATES','US',-5,38.1741,-85.7365),
    (2043,'SDP','Sand Point Airport','SDP','Sand Point','UNITED STATES','US',-9,55.315,-160.523),
    (2044,'SDX','Sedona Airport','SDX','Sedona','UNITED STATES','US',-7,34.8486,-111.788),
    (2046,'SEA','Seattle Tacoma International Airport','SEA','Seattle','UNITED STATES','US',-8,47.449,-122.309),
    (2050,'SEF','Air Terminal Airport','SEF','Sebring','UNITED STATES','US',-100,0,0),
    (2052,'SFB','Orlando Sanford Airport','SFB','Sanford','UNITED STATES','US',-5,28.7776,-81.2375),
    (2053,'SFM','Sanford Regional Airport','SFM','Sanford','UNITED STATES','US',-5,43.3938,-70.708),
    (2054,'SFO','San Francisco International Airport','SFO','San Francisco','UNITED STATES','US',-8,37.619,-122.375),
    (2062,'SHD','Shenandoah Valley Airport','SHD','Staunton','UNITED STATES','US',-5,38.2639,-78.8964),
    (2064,'SHV','Shreveport Regional Airport','SHV','Shreveport','UNITED STATES','US',-6,32.4466,-93.8256),
    (2066,'SIG','Isla Grande Airport','SIG','Isla Grande','UNITED STATES','US',-4,18.4568,-66.0981),
    (2067,'SIT','Sitka Airport','SIT','Sitka','UNITED STATES','US',-9,57.0471,-135.362),
    (2068,'SJC','San Jose International Airport','SJC','San Jose','UNITED STATES','US',-8,37.3626,-121.929),
    (2072,'SJF','St John Island Airport','SJF','St John','UNITED STATES','US',-100,0,0),
    (2075,'SKY','Griffing Sandusky Airport','SKY','Sandusky','UNITED STATES','US',-5,41.4334,-82.6523),
    (2078,'SLK','Adirondack Airport','SLK','Saranac Lake','UNITED STATES','US',-5,44.3853,-74.2062),
    (2080,'SLT','Salida Airport','SLT','Salida','UNITED STATES','US',-100,0,0),
    (2082,'SMX','Santa Maria Public Airport','SMX','Santa Maria','UNITED STATES','US',-8,34.8989,-120.457),
    (2084,'SNA','John Wayne Airport','SNA','Santa Ana','UNITED STATES','US',-8,33.6757,-117.868),
    (2085,'SNL','Shawnee Airport','SNL','Shawnee','UNITED STATES','US',-100,0,0),
    (2086,'SNS','Salinas Airport','SNS','Salinas','UNITED STATES','US',-100,36.6628,-121.606),
    (2088,'SOP','Pinehurst Airport','SOP','Pinehurst','UNITED STATES','US',-100,35.2374,-79.3912),
    (2089,'SOV','Seldovia Airport','SOV','Seldovia','UNITED STATES','US',-100,59.4424,-151.704),
    (2090,'SOW','Show Low Airport','SOW','Show Low','UNITED STATES','US',-7,34.2656,-110.006),
    (2092,'SPG','Whitted Airport','SPG','St Petersburg','UNITED STATES','US',-5,27.7651,-82.627),
    (2093,'SPI','Capital Airport','SPI','Springfield','UNITED STATES','US',-6,39.8441,-89.6779),
    (2097,'SQA','Santa Ynez Airport','SQA','Santa Ynez','UNITED STATES','US',-100,0,0),
    (2099,'SQL','San Carlos Airport','SQL','San Carlos','UNITED STATES','US',-8,37.5119,-122.249),
    (2100,'SRQ','Sarasota Bradenton Airport','SRQ','Sarasota','UNITED STATES','US',-5,27.3954,-82.5544),
    (2101,'SRU','Skypark Airport','SRU','Santa Cruz','UNITED STATES','US',-100,0,0),
    (2102,'SSI','McKinnon Airport','SSI','St Simons Is','UNITED STATES','US',-100,31.1518,-81.3913),
    (2106,'STJ','Rosecrans Memorial Airport','STJ','St Joseph','UNITED STATES','US',-6,39.7719,-94.9097),
    (2110,'STP','Downtown St Paul Airport','STP','St Paul','UNITED STATES','US',0,51.53,-0.125),
    (2112,'STT','Cyril E King Airport','STT','St Thomas','UNITED STATES','US',-4,18.3373,-64.9734),
    (2113,'STX','Alexander Hamilton Airport','STX','St Croix','UNITED STATES','US',-4,17.7019,-64.7986),
    (2115,'SUE','Door Country Airport','SUE','Sturgeon Bay','UNITED STATES','US',-6,44.8437,-87.4216),
    (2107,'SUS','Spirit Of St Louis Airport','STL','St Louis','UNITED STATES','US',-7,38.6621,-90.652),
    (2119,'SUW','Richard I Bong Airport','SUW','Superior','UNITED STATES','US',-100,0,0),
    (2120,'SUX','Sioux Gateway Airport','SUX','Sioux City','UNITED STATES','US',-6,42.4026,-96.3844),
    (2123,'SWD','Seward Airport','SWD','Seward','UNITED STATES','US',-8,60.1269,-149.419),
    (2124,'SWF','Stewart Airport','SWF','Newburgh','UNITED STATES','US',-5,41.5041,-74.1048),
    (1194,'SXC','Catalina Airport','AVX','Catalina Island','UNITED STATES','US',-100,0,0),
    (2127,'SZP','Santa Paula Airport','SZP','Santa Paula','UNITED STATES','US',-100,0,0),
    (1957,'TAD','Las Animas Airport','PUB','Pueblo','UNITED STATES','US',-100,0,0),
    (2128,'TAL','Ralph Calhoun Airport','TAL','Tanana','UNITED STATES','US',-9,65.1796,-152.076),
    (1727,'TCC','Tucumcari Airport','LVS','Las Vegas','UNITED STATES','US',-7,35.1828,-103.603),
    (2130,'TCL','Van De Graff Airport','TCL','Tuscaloosa','UNITED STATES','US',-6,33.2206,-87.6114),
    (1157,'TDW','Tradewind Airport','AMA','Amarillo','UNITED STATES','US',-100,0,0),
    (2131,'TEB','Teterboro Airport','TEB','Teterboro','UNITED STATES','US',-5,40.8501,-74.0608),
    (2133,'THA','Northern Airport','THA','Tullahoma','UNITED STATES','US',-100,0,0),
    (2135,'THV','York Airport','THV','York','UNITED STATES','US',-100,0,0),
    (2136,'TIW','Tacoma Industrial Airport','TIW','Tacoma','UNITED STATES','US',-100,47.2679,-122.578),
    (2137,'TIX','Space Center Executive Airport','TIX','Titusville','UNITED STATES','US',-100,28.5148,-80.7992),
    (2138,'TKF','Truckee Airport','TKF','Truckee','UNITED STATES','US',-100,39.32,-120.14),
    (2139,'TKJ','Tok Airport','TKJ','Tok Ak','UNITED STATES','US',-100,63.2955,-143.006),
    (2142,'TMA','Henry Tift Myers Airport','TMA','Tifton','UNITED STATES','US',-5,31.429,-83.4885),
    (1770,'TMB','Tamiami Airport','MIA','Miami','UNITED STATES','US',-5,25.6479,-80.4328),
    (2144,'TOG','Togiak Village Airport','TOG','Togiak','UNITED STATES','US',-9,59.0528,-160.397),
    (2145,'TOL','Toledo Express Airport','TOL','Toledo','UNITED STATES','US',-5,41.5868,-83.8078),
    (2146,'TOP','Phillip Billard Airport','TOP','Topeka','UNITED STATES','US',-6,39.0687,-95.6225),
    (2150,'TPF','Peter O Knight Airport','TPA','Tampa','UNITED STATES','US',-100,0,0),
    (2152,'TPH','Tonopah Airport','TPH','Tonopah','UNITED STATES','US',-100,38.0601,-117.087),
    (2153,'TPL','Temple Airport','TPL','Temple','UNITED STATES','US',-6,31.1525,-97.4078),
    (2159,'TRX','Trenton Airport','TTN','Trenton','UNITED STATES','US',-100,0,0),
    (2156,'TSM','Taos Airport','TSM','Taos','UNITED STATES','US',-100,0,0),
    (2157,'TTD','Troutdale Airport','TTD','Troutdale','UNITED STATES','US',-8,45.5494,-122.401),
    (2158,'TTN','Trenton Mercer Airport','TTN','Trenton','UNITED STATES','US',-5,40.2767,-74.8135),
    (2162,'TUS','Tucson International Airport','TUS','Tucson','UNITED STATES','US',-7,32.1161,-110.941),
    (2163,'TVC','Cherry Capital Airport','TVC','Traverse City','UNITED STATES','US',-5,44.7414,-85.5822),
    (2165,'TVL','Lake Tahoe Airport','TVL','Lake Tahoe','UNITED STATES','US',-8,38.8939,-119.995),
    (2166,'TWA','Twin Hills Airport','TWA','Twin Hills','UNITED STATES','US',-9,59.0744,-160.275),
    (2170,'TYS','McGhee Tyson Airport','TYS','Knoxville','UNITED STATES','US',-5,35.811,-83.994),
    (2174,'UDD','Bermuda Dunes Airport','UDD','Palm Desert','UNITED STATES','US',-7,33.7484,-116.275),
    (2175,'UGN','Memorial Airport','UGN','Waukegan','UNITED STATES','US',-6,42.4222,-87.8679),
    (1383,'UIZ','Berz Macomb Airport','DTT','Detroit','UNITED STATES','US',-100,0,0),
    (2177,'UKI','Ukiah Airport','UKI','Ukiah','UNITED STATES','US',-100,39.126,-123.201),
    (2178,'UKT','Upper Bucks Airport','UKT','Quakertown','UNITED STATES','US',-100,0,0),
    (2179,'ULM','New Ulm Airport','ULM','New Ulm','UNITED STATES','US',-100,0,0),
    (2180,'UNK','Unalakleet Airport','UNK','Unalakleet','UNITED STATES','US',-9,63.8883,-160.799),
    (2182,'UST','St Augustine Airport','UST','St Augustine','UNITED STATES','US',-5,29.9592,-81.3397),
    (2184,'VCT','Victoria Regional Airport','VCT','Victoria','UNITED STATES','US',-6,28.8526,-96.9185),
    (2191,'VJI','Virginia Highlands Airport','VJI','Abingdon','UNITED STATES','US',-100,0,0),
    (2192,'VKS','Vicksburg Airport','VKS','Vicksburg','UNITED STATES','US',-100,0,0),
    (2194,'VLO','Stolport Airport','VLO','Vallejo','UNITED STATES','US',-100,0,0),
    (1683,'VNY','Van Nuys Airport','LAX','Los Angeles','UNITED STATES','US',-8,34.2098,-118.49),
    (2196,'VPS','Ft Walton Beach Airport','VPS','Valparaiso','UNITED STATES','US',-6,30.4832,-86.5254),
    (2199,'VQS','Vieques Airport','VQS','Vieques','UNITED STATES','US',-4,18.1158,-65.4227),
    (2201,'VYS','Illinois Valley Regional Airport','VYS','Peru','UNITED STATES','US',-100,41.3519,-89.1531),
    (2202,'WAL','Wallops Airport','WAL','Chincoteague','UNITED STATES','US',-5,37.9402,-75.4664),
    (2209,'WGO','Winchester Airport','WGO','Winchester','UNITED STATES','US',-100,0,0),
    (2210,'WJF','Williams J Fox Airport','WJF','Lancaster','UNITED STATES','US',-100,34.7411,-118.219),
    (2213,'WLK','Selawik Airport','WLK','Selawik','UNITED STATES','US',-9,66.6,-159.986),
    (2215,'WMH','Mountain Home Airport','WMH','Mountain Home','UNITED STATES','US',-100,0,0),
    (2220,'WVL','Robert La Fleur Airport','WVL','Waterville','UNITED STATES','US',-100,0,0),
    (2221,'WWD','Cape May Airport','WWD','Cape May','UNITED STATES','US',-5,39.0085,-74.9083),
    (2222,'WWR','West Woodward Airport','WWR','Woodward','UNITED STATES','US',-100,0,0),
    (2223,'WWT','Newtok Airport','WWT','Newtok','UNITED STATES','US',-10,60.9392,-164.641),
    (2224,'WYS','West Yellowstone Airport','WYS','West Yellowstone','UNITED STATES','US',-7,44.6883,-111.118),
    (1486,'XNA','Northwest Arkansas Regional Airport','FYV','Fayetteville','UNITED STATES','US',-6,36.2819,-94.3068),
    (2225,'YAK','Yakutat Airport','YAK','Yakutat','UNITED STATES','US',-9,59.3012,-139.394),
    (1384,'YIP','Willow Run Airport','DTT','Detroit','UNITED STATES','US',-5,42.2379,-83.5304),
    (1110,'YKM','Yakima Terminal Airport','YKM','Yakima','UNITED STATES','US',-8,46.5682,-120.544),
    (1116,'ZZV','Zanesville Airport','ZZV','Zanesville','UNITED STATES','US',-100,39.9445,-81.8921);


 -- route
INSERT INTO route (origin_id, destination_id) VALUES ('MIA','JFK');
INSERT INTO route (origin_id, destination_id) VALUES ('MIA','LAX');
INSERT INTO route (origin_id, destination_id) VALUES ('JFK','LAX');
INSERT INTO route (origin_id, destination_id) VALUES ('ORD','SJU');
INSERT INTO route (origin_id, destination_id) VALUES ('JFK','DCA');
INSERT INTO route (origin_id, destination_id) VALUES ('MIA','DCA');
INSERT INTO route (origin_id, destination_id) VALUES ('DCA','ORD');
INSERT INTO route (origin_id, destination_id) VALUES ('SAN','LAX');
INSERT INTO route (origin_id, destination_id) VALUES ('SFO','DCA');
INSERT INTO route (origin_id, destination_id) VALUES ('JFK','SJU');

-- flight
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (1, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (2, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (3, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (4, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (5, 1 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (6, 2 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (7, 4 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (8, 4 , 4, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (9, 3 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (10, 4 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (11, 4 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (12, 2 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (13, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 2, 205.12);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (14, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 399.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (15, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 333.22);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (16, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 2, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (17, 1 , 1, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 400.01);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (18, 3 , 2, CAST(N'2021-02-08 11:30:00.000' AS DateTime), 3, 199.22);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (19, 3 , 2, CAST(N'2021-02-08 11:30:00.000' AS DateTime), 1, 111.11);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (20, 3 , 2, CAST(N'2021-02-08 11:30:00.000' AS DateTime), 3, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (21, 3 , 2, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 2, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (22, 4 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 2, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (23, 4 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);
INSERT INTO flight (id, route_id, airplane_id, departure_time, reserved_seats, seat_price) VALUES (24, 4 , 3, CAST(N'2021-02-08 10:30:00.000' AS DateTime), 1, 305.00);

-- booking
DROP TABLE IF EXISTS booking;
CREATE TABLE IF NOT EXISTS booking (
    `id` INT NOT NULL UNIQUE,
    `confirmation_code` VARCHAR(100) CHARACTER SET utf8,
    `status` VARCHAR(9) CHARACTER SET utf8,
    PRIMARY KEY (id)
);
INSERT INTO booking VALUES
    (1,'2WvaOL8xO4OOj5y01B9HCkxL0qQ7GrrkK8Dq6cHrSfHQx30FBKQtxcnFJ1il9RRIdl2t9Mv9dCUSBLEhEA8SPZJFTek2IWL1mNBb','ACTIVE'),
    (2,'YA8k8MWk7XTpzuF0g4e2m7tNSYTuLA3ZLdc19GS9IxTJA6uPYWus3vcPcrx1Zvr41bu0qagdQ1kfzbjKlHJpQ7v4fuUNySNm2Pca','ACTIVE'),
    (3,'9TNZtfLpM5mSVA2F7o1QHA6h9JCCoWrwdrGtIbN0YUcyrXGPZvI8z2D6xpAH9YBB66MXwn5qdJ7C93DmSC2je0IXMU4kMzZtpc2z','ACTIVE'),
    (4,'qC5jIg7nuRYtIO8DXAdyV29ukSpnjRR92O0wmsFsRQPN3bn2JevlRKpg6uskXEzXyBRPRtpmfqvdH9HZfrtIT08dQLDjoFnOwfKx','ACTIVE'),
    (5,'QiEFt3CSLastQzZkAt3NAjdb548ZJV96aSMf6cuJL7iyCYmAUFBp7YxVeZSwcbElqgDf7opKDJjo5FOKfxVrFdQQSCNxMnkxKF3','ONHOLD'),
    (6,'io4B7LUBfnNRjHTYqAkvmWB7ZzuFrXaLR58inDlBFJTeNfAcbWcxN0sEd6UnYVt21jdtr8QNVPg3pBXxmYpZJ3Un9TdY3vf0cPu5','ONHOLD'),
    (7,'tEIcQYRaNBpBHRivjP9H0Kru8TweLIJL35qeHByiGpXYxNKRTIV57Zi3vfHT9XgQ4NrR15slUonZ3owNW36mhJOmjZSEaR1XwYoR','INACTIVE'),
    (8,'Bm75F1sl9e76nYJLU1OuPYYab3NgjL6a1ZdZcwO57LO1SjCFFP6xdbH4FG1xsLrHLq5qB7FAea9Wi2tj8GjLtNxNc2ai9qjBSg4X','INACTIVE'),
    (9,'xD1PO26BbAcKsMLuHUw55Hup8lEBjcTeYrIVC13J2ybXU0Istoo4xRu0fIXIMppAJknR1sXnzoVeHA2e7khjUiIkcklYub0cbGmd','INACTIVE'),
    (10,'BTqkaxHgKBEdwPhGLod8ii7r6rPdwVu17nbGQ12P0aPKNBmVvADCRxSfa8gvnI3Xbsj3gNBgaVXaDv71FyuQAeeGCcBCQ3i4m5OY','INACTIVE'),
    (11,'ytEjto8DxiPO3nwEJO78oUvY4hAdR6XGQ62KwpPg4tXQue1fUFdr92fMqyezeU156HDsZ4LTj59wcMvvTyyBE7WOLzkl7xDsgAU8','INACTIVE'),
    (12,'KHBU7nBE2QtCWazuYUYHGBammwYNfHEzqS3vp9xzljuE9sc8q8hvHJ8tLGhKJZAAX5WWxYj2t7KW29DdiwlncS3zh5YRK6E2shcF','CANCELLED'),
    (13,'sjSHA9Ir68KKTE9h01a16CC7NttS8tSz35ycRDJkybrLW31JYghOioGDqV4rH95M0wXFaQrQPVihGvsMGQ463vx7JKXEX5u5dwMM','CANCELLED'),
    (14,'JNM55rpV1axbb0yukyTwEvEttw89D3avUYt0VnuSqPFnxAvBgRJh8pnsIBIbtkhgIVP23T5NcG4PD1VFPZGrtpjZDQgopEYMB15s','CANCELLED'),
    (15,'jTnOrQ5PsmpsXE1SMjl5x03KnxI7xspbtTLzWAaofGvpuapi2IQxouCA4tklVOUk0sqN4J98TXHICx6ee3WZA8OkRxos8i8dfu9I','CANCELLED'),
    (16,'2mo29JYrxljZBBNJoxabjKyxVJppHIA1x8n93hWyUtOGcf0yRJzVPbchoiTP2yzsrs8e0UV23YhwvEmUXw4pLw4f885uhGTvo0WM','CANCELLED'),
    (17,'iCgRUaWysKcOvBWM9eF7u816vhQXVjiITbWAGySYetJKaFGjkaMkysJq0aG9RrRht1aGaWDGdOYqdh73JdRjZbmoz5qgDN5VqdQb','ACTIVE'),
    (18,'EmdXDBc52hmE6kFY1oe0suMuVBS7K095XAqB8wRvfIzN9N5IfRUFGPV6nzHdfVFqh5bY05zNDiEySujruTklpKRCgRIv8RdLa2ln','ACTIVE');

-- flight_booking
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (1,1);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (2,2);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (3,3);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (4,4);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (5,5);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (6,6);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (7,7);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (8,8);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (9,9);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (10,10);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (11,11);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (12,12);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (13,13);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (14,14);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (15,15);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (16,16);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (17,17);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (18,18);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (19,19);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (20,20);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (21,21);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (22,22);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (23,23);
INSERT INTO flight_bookings (flight_id, booking_id) VALUES (24,24);

-- passanger
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (1,'Tural', 'Hasanli', '1990-11-23','male', '400 W 50TH Street, NY, NY10019');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (2,'Theresita', 'Dowsey', '1990-11-23','male', '6 Old Shore Avenue');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (3,'Loralyn', 'Heersema', '1990-11-23','male', '910 Pierstorff Drive');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (4,'Shandeigh', 'Trytsman', '1990-11-23','male', '2075 Karstens Trail');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (5,'Bo', 'Morforth', '1990-11-23','male', '16921 5th Avenue');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (6,'Nanny', 'Meekings', '1990-11-23','male', '85 Claremont Drive');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (7,'Frank', 'Flecknell', '1990-11-23','male', '7275 Shoshone Drive');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (8,'Donnamarie', 'Coleiro', '1990-11-23','male', '75015 Hauk Avenue');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (9,'Husain', 'Bremley', '1990-11-23','male', '9362 Anniversary Trail');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (10,'Drucie', 'Pavlenko', '1990-11-23','male', '400 W 50TH Street, NY, NY10019');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (11,'Ethelyn', 'Rudall', '1990-11-23','male', '3 Oriole Place');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (12,'Catarina', 'Sneezum', '1990-11-23','male', '84558 Novick Center');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (13,'Johannes', 'Tunnicliffe', '1990-11-23','male', '04 Homewood Court9');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (14,'Steven', 'Samarth', '1990-11-23','male', '3134 Algoma Trail');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (15,'Westbrooke', 'Terrelly', '1990-11-23','male', '0223 Pine View Center');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (16,'Lari', 'Itzkowicz', '1990-11-23','male', '397 Del Sol Place');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (17,'Becca', 'Skepper', '1990-11-23','male', '05689 Lindbergh Road');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (18,'Ibbie', 'Otham', '1990-11-23','male', '75 Ronald Regan Alley');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (19,'Daisie', 'Cowdroy', '1990-11-23','male', '8 Vahlen Place');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (20,'Zach', 'Dongall', '1990-11-23','male', '931 Kingsford Way');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (21,'Arlena', 'Guiet', '1990-11-23','male', '68 Lakeland Circle');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (22,'Marlo', 'Bloxland', '1990-11-23','male', '822 Nobel Crossing');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (23,'Peggy', 'Dowthwaite', '1990-11-23','male', '400 Mandrake Avenue');
INSERT INTO passenger (booking_id, given_name, family_name, dob, gender, address) 
VALUES (24,'Gracia', 'Grinikhinov', '1990-11-23','male', '559 3rd Park');

-- booking payment

INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (1, 'AA9901', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (2, 'AA9902', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (3, 'AA9903', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (4, 'AA9904', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (5, 'AA9905', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (6, 'AA9906', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (7, 'AA9907', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (8, 'AA9908', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (9, 'AA9909', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (10, 'AA9910', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (11, 'AA9911', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (12, 'AA9912', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (13, 'AA9913', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (14, 'AA9914', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (15, 'AA9915', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (16, 'AA9916', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (17, 'AA9917', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (18, 'AA9918', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (19, 'AA9919', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (20, 'AA9920', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (21, 'AA9921', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (22, 'AA9922', 0);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (23, 'AA9923', 1);
INSERT INTO booking_payment (booking_id, stripe_id, refunded) VALUES (24, 'AA9924', 0);

-- user_role
INSERT INTO user_role (name) VALUES ('user');
INSERT INTO user_role (name) VALUES ('agent');
INSERT INTO user_role (name) VALUES ('counter');

-- user
INSERT INTO user (role_id, given_name, family_name, username, email, password, phone) 
VALUES (1, 'Tural', 'Hasanli', 'thasnali', 'tural.hasanli90@gmail.com', '12345678', '6465579796');
INSERT INTO user (role_id, given_name, family_name, username, email, password, phone) 
VALUES (2, 'Travel', 'LLC', 'travelllc', 'travel@llc.rm', '12345678', '7547151714');
INSERT INTO user (role_id, given_name, family_name, username, email, password, phone) 
VALUES (1, 'Tyler', 'Joshua', 'tj', 'tj@gmail.com', '1277345678', '647765579796');
INSERT INTO user (role_id, given_name, family_name, username, email, password, phone) 
VALUES (3, 'Chirtian', 'Reyes', 'tfdj', 'tfdj@gmail.com', '12773454545678', '6477465579796');

-- booking_agent
INSERT INTO booking_agent (booking_id, agent_id) VALUES (1, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (2, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (3, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (4, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (5, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (6, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (7, 2);

-- booking_user
INSERT INTO booking_user (booking_id, user_id) VALUES (13, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (14, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (15, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (16, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (17, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (22, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (23, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (24, 1);

-- booking_guest 
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (8, 'jlsdj@gmail.com', '6194457645');
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (9, 'jdslka@gmai.com', '6194412645');
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (10, 'dsdfds@gmail.com', '6194717645');
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (11, 'fjsdlkf@gmail.com', '6132457645');
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (12, 'tryry@gmail.com', '6197657645');
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (18, 'flksdjfkl@gmail.com', '6894457645');
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (19, 'rueoiwt@gmail.com', '6194457645');
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (20, 'otuior@gmail.com', '6194547645');
INSERT INTO booking_guest (booking_id, contact_email, contact_phone) VALUES (21, 'ksd@gmail.com', '6784457645');