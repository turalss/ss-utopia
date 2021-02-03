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
    `code` VARCHAR(10) CHARACTER SET utf8,
    `name` VARCHAR(255) CHARACTER SET utf8,
    `cityCode` VARCHAR(10) CHARACTER SET utf8,
    `cityName` VARCHAR(255) CHARACTER SET utf8,
    `countryName` VARCHAR(255) CHARACTER SET utf8,
    `countryCode` VARCHAR(10) CHARACTER SET utf8,
    `timezone` INT,
    `lat` NUMERIC(7, 4),
    `lng` NUMERIC(7, 4),
    `id` INT
);

-- First Section
INSERT INTO airports VALUES
    ('ABE','Lehigh Valley International Airport','ABE','Allentown','UNITED STATES','US',-5,40.6521,-75.4408,1118),
    ('ABL','Ambler Airport','ABL','Ambler','UNITED STATES','US',-9,67.1064,-157.857,1120),
    ('ABQ','Albuquerque International Airport','ABQ','Albuquerque','UNITED STATES','US',-7,35.0402,-106.609,1121),
    ('ABR','Aberdeen Airport','ABR','Aberdeen','UNITED STATES','US',-6,45.4491,-98.4218,1122),
    ('ACT','Madison Cooper Airport','ACT','Waco','UNITED STATES','US',-6,31.6113,-97.2305,1125),
    ('ACV','Arcata Eureka Airport','ACV','Eureka','UNITED STATES','US',-8,40.9781,-124.109,1126),
    ('ADQ','Kodiak Airport','ADQ','Kodiak','UNITED STATES','US',-9,57.75,-152.494,1131),
    ('ADS','Addison Airport','DFW','Dallas','UNITED STATES','US',-5,32.9686,-96.8364,1366),
    ('AEL','Albert Lea Airport','AEL','Albert Lea','UNITED STATES','US',-100,0,0,1134),
    ('AEX','Alexandria International Airport','AEX','Alexandria','UNITED STATES','US',-6,31.3274,-92.5498,1135),
    ('AFW','Fort Worth Alliance Airport','DFW','Dallas','UNITED STATES','US',-6,32.9878,-97.3189,1364),
    ('AGN','Angoon Airport','AGN','Angoon','UNITED STATES','US',-9,57.5036,-134.585,1137),
    ('AKN','King Salmon Airport','AKN','King Salmon','UNITED STATES','US',-9,58.6768,-156.649,1149),
    ('ALE','Alpine Airport','ALE','Alpine','UNITED STATES','US',-100,0,0,1151),
    ('AMA','Amarillo International Airport','AMA','Amarillo','UNITED STATES','US',-6,35.2194,-101.706,1158),
    ('ANA','Anaheim Airport','ANA','Anaheim','UNITED STATES','US',-100,0,0,1160),
    ('ANC','Anchorage International Airport','ANC','Anchorage','UNITED STATES','US',-9,61.1744,-149.996,1162),
    ('AND','Anderson Airport','AND','Anderson','UNITED STATES','US',-5,34.4946,-82.7094,1163),
    ('ANI','Aniak Airport','ANI','Aniak','UNITED STATES','US',-9,61.5816,-159.543,1164),
    ('ANP','Lee Annapolis Airport','ANP','Annapolis','UNITED STATES','US',-100,0,0,1165),
    ('APA','Centennial Airport','DEN','Denver','UNITED STATES','US',-7,39.5701,-104.849,1360),
    ('APN','Phelps Collins Airport','APN','Alpena','UNITED STATES','US',-5,45.0781,-83.5603,1171),
    ('ART','Watertown Airport','ART','Watertown','UNITED STATES','US',-5,43.9919,-76.0217,1173),
    ('ASN','Talladega Airport','ASN','Talladega','UNITED STATES','US',-100,0,0,1178),
    ('AST','Astoria Airport','AST','Astoria','UNITED STATES','US',-8,46.158,-123.879,1179),
    ('AUG','Maine State Airport','AUG','Augusta','UNITED STATES','US',-5,44.3206,-69.7973,1186),
    ('AUS','Bergstrom International Airport','AUS','Austin','UNITED STATES','US',-6,30.1945,-97.6699,1188),
    ('AVP','Wilkes Barre Scranton International Airport','AVP','Scranton','UNITED STATES','US',-5,41.3385,-75.7234,1193),
    ('AXV','Neil Armstrong Airport','AXV','Wapakoneta','UNITED STATES','US',-100,0,0,1195),
    ('AZA','Williams Gateway Airport','PHX','Phoenix','UNITED STATES','US',-7,33.3078,-111.655,1917),
    ('BCB','Virginia Tech Airport','BCB','Blacksburg','UNITED STATES','US',-100,0,0,1199),
    ('BCE','Bryce Airport','BCE','Bryce','UNITED STATES','US',-7,37.7064,-112.146,1200),
    ('BDL','Bradley International Airport','HFD','Hartford','UNITED STATES','US',-5,41.9389,-72.6832,1544),
    ('BDR','Sikorsky Memorial Airport','BDR','Bridgeport','UNITED STATES','US',-5,41.1635,-73.1262,1201),
    ('BED','Bedford Airport','BED','Bedford','UNITED STATES','US',-5,42.47,-71.289,1202),
    ('BET','Bethel Airport','BET','Bethel','UNITED STATES','US',-9,60.7798,-161.838,1204),
    ('BFD','Bradford Regional Airport','BFD','Bradford','UNITED STATES','US',-5,41.8031,-78.6401,1205),
    ('BFG','Bullfrog Basin Airport','BFG','Bullfrog Basin','UNITED STATES','US',-100,0,0,1207),
    ('BFP','Beaver Falls Airport','BFP','Beaver Falls','UNITED STATES','US',-100,40.7725,-80.3915,1209),
    ('BGR','Bangor International Airport','BGR','Bangor','UNITED STATES','US',-5,44.8074,-68.8281,1213),
    ('BHM','Birmingham International Airport','BHM','Birmingham','UNITED STATES','US',-6,33.5629,-86.7535,1215),
    ('BIH','Bishop Airport','BIH','Bishop','UNITED STATES','US',-100,37.3731,-118.364,1217),
    ('BJC','Jeffco Airport','BJC','Broomfield','UNITED STATES','US',-7,39.9089,-105.117,1220),
    ('BKG','Branson Regional Airport','BKG','Branson','UNITED STATES','US',-6,36.532,-93.2006,1222),
    ('BKL','Burke Lakefront Airport','CLE','Cleveland','UNITED STATES','US',-100,41.525,-81.6833,1308),
    ('BLH','Blythe Airport','BLH','Blythe','UNITED STATES','US',-8,33.6192,-114.717,1226),
    ('BLI','Bellingham International Airport','BLI','Bellingham','UNITED STATES','US',-8,48.7927,-122.538,1227),
    ('BMI','Normal Airport','BMI','Bloomington','UNITED STATES','US',-6,40.4771,-88.9159,1230),
    ('BNA','Nashville International Airport','BNA','Nashville','UNITED STATES','US',-6,36.1245,-86.6782,1231),
    ('BOK','Brookings State Airport','BOK','Brookings','UNITED STATES','US',-100,0,0,1234),
    ('BOS','Logan International Airport','BOS','Boston','UNITED STATES','US',-5,42.3643,-71.0052,1235),
    ('BOW','Bartow Airport','BOW','Bartow','UNITED STATES','US',-6,27.9434,-81.7834,1236),
    ('BRO','South Padre Island International Airport','BRO','Brownsville','UNITED STATES','US',-6,25.9068,-97.4259,1242),
    ('BSI','Blairsville Airport','BSI','Blairsville','UNITED STATES','US',-100,0,0,1244),
    ('BTM','Bert Mooney Airport','BTM','Butte','UNITED STATES','US',-7,45.9548,-112.497,1247),
    ('BTR','Ryan Airport','BTR','Baton Rouge','UNITED STATES','US',-6,30.5332,-91.1496,1249),
    ('BTT','Bettles Airport','BTT','Bettles','UNITED STATES','US',-9,66.9139,-151.529,1250),
    ('BTV','Burlington International Airport','BTV','Burlington','UNITED STATES','US',-5,44.4719,-73.1533,1251),
    ('BUF','Greater Buffalo International Airport','BUF','Buffalo','UNITED STATES','US',-5,42.9405,-78.7322,1252),
    ('BUR','Burbank Glendale Pasadena Airport','BUR','Burbank','UNITED STATES','US',-8,34.2007,-118.359,1253),
    ('BWC','Brawley Airport','BWC','Brawley','UNITED STATES','US',-100,0,0,1257),
    ('BWI','Baltimore Washington International Airport','BWI','Baltimore','UNITED STATES','US',-5,39.1754,-76.6683,1260),
    ('BXS','Borrego Valley Airport','BXS','Borrego Springs','UNITED STATES','US',-7,33.259,-116.321,1262),
    ('BYI','Burley Airport','BYI','Burley','UNITED STATES','US',-100,42.5433,-113.772,1263),
    ('CAE','Columbia Metro Airport','CAE','Columbia','UNITED STATES','US',-5,33.9388,-81.1195,1269),
    ('CAK','Akron Canton Regional Airport','CAK','Akron','UNITED STATES','US',-5,40.9161,-81.4422,1270),
    ('CDR','Chadron Airport','CDR','Chadron','UNITED STATES','US',-7,42.8375,-103.096,1278),
    ('CDV','Mudhole Smith Airport','CDV','Cordova','UNITED STATES','US',-9,60.4918,-145.478,1279),
    ('CDW','Caldwell Wright Airport','CDW','Caldwell','UNITED STATES','US',-4,40.8752,-74.2814,1280),
    ('CHO','Charlottesville Albemarle Airport','CHO','Charlottesville','UNITED STATES','US',-5,38.1386,-78.4529,1294),
    ('CHS','Charleston International Airport','CHS','Charleston','UNITED STATES','US',-5,32.8986,-80.0405,1295),
    ('CIL','Melsing Creek Airport','CIL','Council','UNITED STATES','US',-9,64.8978,-163.703,1299),
    ('CJN','El Cajon Airport','CJN','El Cajon','UNITED STATES','US',-100,0,0,1300),
    ('CKB','Clarksburg Benedum Airport','CKB','Clarksburg','UNITED STATES','US',-5,39.2966,-80.2281,1301),
    ('CLD','Carlsbad Airport','CLD','Carlsbad','UNITED STATES','US',-8,33.0742,-117.165,1305),
    ('CLE','Hopkins International Airport','CLE','Cleveland','UNITED STATES','US',-5,41.4117,-81.8498,1307),
    ('CLM','William Fairchild International Airport','CLM','Port Angeles','UNITED STATES','US',-8,48.1202,-123.5,1310),
    ('CLT','Charlotte Douglas International Airport','CLT','Charlotte','UNITED STATES','US',-5,35.214,-80.9431,1311),
    ('CMH','Port Columbus International Airport','CMH','Columbus','UNITED STATES','US',-5,39.998,-82.8919,1316),
    ('CNM','Carlsbad Airport','CNM','Carlsbad','UNITED STATES','US',-7,32.3375,-104.263,1320),
    ('COD','Yellowstone Regional Airport','COD','Cody','UNITED STATES','US',-7,44.5202,-109.024,1322),
    ('COI','Merrit Island Airport','COI','Cocoa Metro Area','UNITED STATES','US',-100,0,0,1325),
    ('CON','Concord Airport','CON','Concord','UNITED STATES','US',-5,43.2027,-71.5023,1326),
    ('CPX','Culebra Airport','CPX','Culebra','UNITED STATES','US',-4,18.3127,-65.3034,1330),
    ('CRE','Grand Strand Airport','MYR','Myrtle Beach','UNITED STATES','US',-100,33.8118,-78.7239,1836),
    ('CRP','Corpus Christi International Airport','CRP','Corpus Christi','UNITED STATES','US',-6,27.7704,-97.5012,1331),
    ('CRW','Yeager Airport','CRW','Charleston','UNITED STATES','US',-5,38.3731,-81.5932,1332),
    ('CRX','Roscoe Turner Airport','CRX','Corinth','UNITED STATES','US',-100,0,0,1333),
    ('CSG','Columbus Metro Ft Benning Airport','CSG','Columbus','UNITED STATES','US',-5,32.5163,-84.9389,1334),
    ('CSM','Sherman Airport','CSM','Clinton','UNITED STATES','US',-100,35.34,-99.2,1338),
    ('CSN','Carson Airport','CSN','Carson City','UNITED STATES','US',-100,0,0,1339),
    ('CTW','Cottonwood Airport','CTW','Cottonwood','UNITED STATES','US',-100,0,0,1340),
    ('CVG','Cincinnati No Kentucky International Airport','CVG','Cincinnati','UNITED STATES','US',-5,39.0488,-84.6678,1343),
    ('CVN','Clovis Airport','CVN','Clovis','UNITED STATES','US',-6,34.4251,-103.079,1344),
    ('CWA','Central Wisconsin Airport','AUW','Wausau','UNITED STATES','US',-6,44.7727,-89.6466,1190),
    ('CXL','Calexico International Airport','CXL','Calexico','UNITED STATES','US',-8,32.6695,-115.513,1348),
    ('CXO','Montgomery Co Airport','CXO','Conroe','UNITED STATES','US',-6,30.3518,-95.4145,1349),
    ('CYS','Cheyenne Airport','CYS','Cheyenne','UNITED STATES','US',-7,41.1557,-104.812,1350),
    ('DAB','Daytona Beach Regional Airport','DAB','Daytona Beach','UNITED STATES','US',-5,29.1799,-81.0581,1351),
    ('DAY','Dayton International Airport','DAY','Dayton','UNITED STATES','US',-5,39.9024,-84.2194,1353),
    ('DCA','Ronald Reagan National Airport','WAS','Washington','UNITED STATES','US',-5,38.8521,-77.0377,2203),
    ('DCU','Pyor Airport','DCU','Decatur','UNITED STATES','US',-100,0,0,1356),
    ('DEN','Denver International Airport','DEN','Denver','UNITED STATES','US',-7,39.8617,-104.673,1361),
    ('DFI','Defiance Memorial Airport','DFI','Defiance','UNITED STATES','US',-100,0,0,1363),
    ('DLL','Dillon Airport','DLL','Dillon','UNITED STATES','US',-100,0,0,1372),
    ('DMO','Sedalia Memorial Airport','DMO','Sedalia','UNITED STATES','US',-100,0,0,1374),
    ('DNL','Daniel Airport','AGS','Augusta','UNITED STATES','US',-4,33.4665,-82.0394,1139),
    ('DSI','Destin Airport','DSI','Destin','UNITED STATES','US',-100,0,0,1381),
    ('DUC','Halliburton Airport','DUC','Duncan','UNITED STATES','US',-6,34.4713,-97.9599,1388),
    ('DVL','Devils Lake Airport','DVL','Devils Lake','UNITED STATES','US',-6,48.1144,-98.9086,1392),
    ('DVN','Davenport Airport','DVN','Davenport','UNITED STATES','US',-100,0,0,1393),
    ('DVT','Phoenix Deer Valley Airport','PHX','Phoenix','UNITED STATES','US',-7,33.4117,112.457,1918),
    ('DWH','David Wayne Hooks Airport','HOU','Houston','UNITED STATES','US',-6,30.0637,-95.5543,1573),
    ('DYL','Doylestown Airport','DYL','Doylestown','UNITED STATES','US',-100,0,0,1395),
    ('EAA','Eagle Airport','EAA','Eagle','UNITED STATES','US',-9,64.7781,-141.15,1396),
    ('EBR','Baton Rouge Downtown Airport','BTR','Baton Rouge','UNITED STATES','US',-100,0,0,1248),
    ('ECP','Northwest Florida Beaches International Airport','PFN','Panama City','UNITED STATES','US',-6,30.3417,-85.7973,1904),
    ('EED','Needles Airport','EED','Needles','UNITED STATES','US',-100,34.7667,-114.623,1402),
    ('EEN','Dilliant Hopkins Airport','EEN','Keene','UNITED STATES','US',-100,0,0,1403),
    ('EGV','Eagle River Union Airport','EGV','Eagle River','UNITED STATES','US',-6,45.9323,-89.2683,1408),
    ('EHT','Rentschler Airport','EHT','East Hartford','UNITED STATES','US',-100,0,0,1409),
    ('ELM','Elmira Corning Regional Airport','ELM','Elmira','UNITED STATES','US',-5,42.1599,-76.8916,1416),
    ('ELP','El Paso International Airport','ELP','El Paso','UNITED STATES','US',-7,31.8072,-106.378,1417),
    ('EMT','El Monte Airport','EMT','El Monte','UNITED STATES','US',-100,0,0,1420),
    ('EOK','Keokuk Airport','EOK','Keokuk','UNITED STATES','US',-100,0,0,1424),
    ('ERV','Kerrville Airport','ERV','Kerrville','UNITED STATES','US',-6,29.9767,-99.0855,1426),
    ('ESD','Eastsound Orcas Is Airport','ESD','East Sound','UNITED STATES','US',-8,48.7081,-122.911,1428),
    ('ESP','Birchwood Pocono Airport','ESP','East Stroudsburg','UNITED STATES','US',-100,0,0,1430),
    ('ETB','West Bend Airport','ETB','West Bend','UNITED STATES','US',-100,0,0,1431),
    ('EUG','Eugene Airport','EUG','Eugene','UNITED STATES','US',-8,44.1246,-123.212,1434),
    ('EVV','Evansville Regional Airport','EVV','Evansville','UNITED STATES','US',-6,38.037,-87.5324,1436),
    ('EVW','Evanston Airport','EVW','Evanston','UNITED STATES','US',-100,0,0,1437),
    ('EWR','Newark Liberty International Airport','EWR','Newark','UNITED STATES','US',-5,40.6925,-74.1687,1441),
    ('EZF','Shannon Airport','MNZ','Manassas','UNITED STATES','US',-100,0,0,1795),
    ('FAI','Fairbanks International Airport','FAI','Fairbanks','UNITED STATES','US',-9,64.8151,-147.856,1444),
    ('FAJ','Fajardo Airport','FAJ','Fajardo','UNITED STATES','US',-4,18.3089,-65.6619,1445),
    ('FAR','Hector Airport','FAR','Fargo','UNITED STATES','US',-6,46.9207,-96.8158,1446),
    ('FCH','Fresno Chandler Airport','FAT','Fresno','UNITED STATES','US',-100,0,0,1448),
    ('FCM','Flying Cloud Airport','MSP','Minneapolis','UNITED STATES','US',-100,0,0,1813),
    ('FKL','Chess Lamberton Airport','FKL','Franklin','UNITED STATES','US',-5,41.3779,-79.8604,1455),
    ('FLG','Flagstaff Airport','FLG','Flagstaff','UNITED STATES','US',-7,35.1403,-111.669,1456),
    ('FLL','Ft Lauderdale Hollywood International Airport','FLL','Ft Lauderdale','UNITED STATES','US',-5,26.0726,-80.1527,1458),
    ('FLP','Flippin Airport','FLP','Flippin','UNITED STATES','US',-100,0,0,1461),
    ('FMN','Four Corners Regional Airport','FMN','Farmington','UNITED STATES','US',-7,36.7412,-108.23,1463),
    ('FNT','Bishop International Airport','FNT','Flint','UNITED STATES','US',-5,42.9654,-83.7436,1469),
    ('FOB','Fort Bragg Airport','FOB','Fort Bragg','UNITED STATES','US',-100,0,0,1470),
    ('FRD','Friday Harbor Airport','FRD','Friday Harbor','UNITED STATES','US',-8,48.5219,-123.024,1474),
    ('FRG','Republic Airport','FRG','Farmingdale','UNITED STATES','US',-100,40.7288,-73.4134,1475),
    ('GAL','Galena Airport','GAL','Galena','UNITED STATES','US',-9,64.7362,-156.937,1489),
    ('GBG','Galesburg Airport','GBG','Galesburg','UNITED STATES','US',-100,0,0,1491),
    ('GBR','Great Barrington Airport','GBR','Great Barrington','UNITED STATES','US',-100,0,0,1492),
    ('GCN','Grand Canyon Natl Park Airport','GCN','Grand Canyon','UNITED STATES','US',-7,35.9524,-112.147,1495),
    ('GEG','Spokane International Airport','GEG','Spokane','UNITED STATES','US',-8,47.6199,-117.534,1499),
    ('GGE','George Town Airport','MYR','Myrtle Beach','UNITED STATES','US',-100,0,0,1837),
    ('GKT','Gatlinburg Airport','GKT','Gatlinburg','UNITED STATES','US',-100,0,0,1507),
    ('GLR','Otsego Airport','GLR','Gaylord','UNITED STATES','US',-100,0,0,1511),
    ('GMU','Greenville Downtown Airport','GSP','Greenville','UNITED STATES','US',-100,34.8481,-82.35,1527),
    ('GON','Groton New London Airport','GON','New London','UNITED STATES','US',-5,41.3301,-72.0451,1516),
    ('GPT','Biloxi Regional Airport','GPT','Gulfport','UNITED STATES','US',-6,30.4073,-89.0701,1517),
    ('GSP','Greenville Spartanburg Airport','GSP','Greenville','UNITED STATES','US',-5,34.8956,-82.2189,1526),
    ('GST','Gustavus Airport','GST','Glacier Bay','UNITED STATES','US',-9,58.4253,-135.707,1528),
    ('GTF','Great Falls International Airport','GTF','Great Falls','UNITED STATES','US',-7,47.482,-111.371,1529),
    ('GTR','Golden Airport','UBS','Columbus','UNITED STATES','US',-6,33.4503,-88.5914,2172),
    ('GTY','Gettysburg Airport','GTY','Gettysburg','UNITED STATES','US',-100,0,0,1530),
    ('GUF','Edwards Airport','GUF','Gulf Shores','UNITED STATES','US',-100,0,0,1532),
    ('GWO','Leflore Airport','GWO','Greenwood','UNITED STATES','US',-6,33.4943,-90.0847,1535),
    ('GWS','Glenwood Springs Airport','GWS','Glenwood Springs','UNITED STATES','US',-100,0,0,1536),
    ('GYY','Gary International Airport','GYY','Gary','UNITED STATES','US',-6,41.6163,-87.4128,1539),
    ('HDN','Hayden Airport','HDN','Hayden','UNITED STATES','US',-7,40.4812,-107.218,1542),
    ('HFD','Brainard Airport','HFD','Hartford','UNITED STATES','US',-5,41.7367,-72.6494,1545),
    ('HHR','Hawthorne Airport','HHR','Hawthorne','UNITED STATES','US',-8,33.9228,-118.335,1548),
    ('HIB','Hibbing Chisolm Airport','HIB','Hibbing','UNITED STATES','US',-6,47.3866,-92.839,1549),
    ('HIE','Mt washington Regional Airport','HIE','Whitefield','UNITED STATES','US',-100,0,0,1550),
    ('HIO','Portland Hillsboro Airport','HIO','Hillsboro','UNITED STATES','US',-8,45.5404,-122.95,1552),
    ('HKB','Healy Lake Airport','HKB','Healy Lake','UNITED STATES','US',-9,63.8675,-148.969,1554),
    ('HOP','Hopkinsville Christian Country Airport','HOP','Hopkinsville','UNITED STATES','US',-6,36.6686,-87.4962,1568),
    ('HOU','Houston Hobby Airport','HOU','Houston','UNITED STATES','US',-6,29.6454,-95.2789,1572),
    ('HPV','Princeville Airport','HPV','Princeville','UNITED STATES','US',-100,0,0,1576),
    ('HPY','Baytown Airport','HPY','Baytown','UNITED STATES','US',-100,0,0,1577),
    ('HRL','Rio Grande Valley International Airport','HRL','Harlingen','UNITED STATES','US',-6,26.2285,-97.6544,1578),
    ('HSH','Henderson Sky Harbor Airport','LAS','Las Vegas','UNITED STATES','US',-8,35.9728,-115.134,1678),
    ('HSL','Huslia Airport','HSL','Huslia','UNITED STATES','US',-9,65.6978,-156.351,1581),
    ('HSV','Huntsville International Airport','HSV','Huntsville','UNITED STATES','US',-6,34.6372,-86.7751,1584),
    ('HTO','East Hampton Airport','HTO','East Hampton','UNITED STATES','US',-100,0,0,1585),
    ('HTS','Tri State Milton Airport','HTS','Huntington','UNITED STATES','US',-5,38.3667,-82.558,1586),
    ('HTV','Huntsville Airport','HTV','Huntsville','UNITED STATES','US',-100,0,0,1588),
    ('HUC','Humacao Airport','HUC','Humacao','UNITED STATES','US',-100,0,0,1589),
    ('HUM','Terrebonne Airport','HUM','Houma','UNITED STATES','US',-100,0,0,1592),
    ('HVE','Intermediate Airport','HVE','Hanksville','UNITED STATES','US',-100,0,0,1595),
    ('HVN','Tweed New Haven Airport','HVN','New Haven','UNITED STATES','US',-5,41.2637,-72.8868,1596),
    ('IAG','Niagara Falls International Airport','IAG','Niagara Falls','UNITED STATES','US',-5,43.1073,-78.9462,1602),
    ('ICT','Mid Continent Airport','ICT','Wichita','UNITED STATES','US',-6,37.6499,-97.4331,1603),
    ('IFP','Laughlin Bullhead International Airport','IFP','Bullhead City','UNITED STATES','US',-7,35.1574,-114.56,1606),
    ('IKK','Greater Kankakee Airport','IKK','Kankakee','UNITED STATES','US',-6,41.0714,-87.8463,1609),
    ('IMT','Ford Airport','IMT','Iron Mountain','UNITED STATES','US',-5,45.8184,-88.1146,1614),
    ('IND','Indianapolis International Airport','IND','Indianapolis','UNITED STATES','US',-5,39.7173,-86.2944,1615),
    ('INL','International Falls Airport','INL','International Falls','UNITED STATES','US',-6,48.5662,-93.4031,1616),
    ('INT','Smith Reynolds Airport','INT','Winston-Salem','UNITED STATES','US',-5,36.1337,-80.222,1617),
    ('ISP','Long Island Macarthur Airport','ISP','Islip','UNITED STATES','US',-5,40.7952,-73.1002,1627),
    ('ISS','Wiscasset Airport','ISS','Wiscasset','UNITED STATES','US',-100,0,0,1629),
    ('IWD','Ironwood Airport','IWD','Ironwood','UNITED STATES','US',-6,46.5275,-90.1314,1633),
    ('JAC','Jackson Hole Airport','JAC','Jackson','UNITED STATES','US',-7,43.6073,-110.738,1635),
    ('JAN','Jackson Evers International Airport','JAN','Jackson','UNITED STATES','US',-6,32.3112,-90.0759,1637),
    ('JAX','Jacksonville International Airport','JAX','Jacksonville','UNITED STATES','US',-5,30.4941,-81.6879,1638),
    ('JCI','Johnson Industrial Airport','MKC','Kansas City','UNITED STATES','US',-6,38.8309,-94.8903,1775),
    ('JHM','Kapalua Airport','JHM','Kapalua','UNITED STATES','US',-10,20.9629,-156.673,1644),
    ('JMS','Jamestown Airport','JMS','Jamestown','UNITED STATES','US',-6,46.9297,-98.6782,1649),
    ('JNU','Juneau Airport','JNU','Juneau','UNITED STATES','US',-9,58.355,-134.576,1650),
    ('JOT','Joliet Park District Airport','JOT','Joliet','UNITED STATES','US',-100,41.5178,-88.1756,1651),
    ('JST','Johnstown Cambria Airport','JST','Johnstown','UNITED STATES','US',-5,40.3161,-78.8339,1652),
    ('KAE','Kake Airport','KAE','Kake','UNITED STATES','US',-9,56.9731,-133.946,1655),
    ('KIC','Mesa Del Rey Airport','KIC','King City','UNITED STATES','US',-100,0,0,1658),
    ('KKT','Kentland Airport','KKT','Kentland','UNITED STATES','US',-100,0,0,1659),
    ('KLS','Kelso Longview Regional Airport','KLS','Kelso','UNITED STATES','US',-8,46.118,-122.898,1661),
    ('KLW','Klawock Airport','KLW','Klawock','UNITED STATES','US',-9,55.5792,-133.076,1662),
    ('KOA','Keahole Airport','KOA','Kona','UNITED STATES','US',-10,19.7388,-156.046,1664),
    ('KPD','King Of Prussia Airport','KPD','King Of Prussia','UNITED STATES','US',-100,0,0,1665),
    ('KTN','Ketchikan International Airport','KTN','Ketchikan','UNITED STATES','US',-9,55.3556,-131.714,1667),
    ('KTS','Brevig Mission Airport','KTS','Brevig Mission','UNITED STATES','US',-9,65.3314,-166.466,1668),
    ('KYL','Port Largo Airport','KYL','Key Largo','UNITED STATES','US',-100,0,0,1669),
    ('LAA','Lamar Airport','LAA','Lamar','UNITED STATES','US',-7,38.0697,-102.688,1671),
    ('LAF','Lafayette Airport','LAF','Lafayette','UNITED STATES','US',-5,40.4123,-86.9369,1672),
    ('LAL','Lakeland Airport','LAL','Lakeland','UNITED STATES','US',-4,27.9889,-82.0186,1673),
    ('LAN','Lansing Airport','LAN','Lansing','UNITED STATES','US',-5,42.7787,-84.5874,1675),
    ('LAX','Los Angeles International Airport','LAX','Los Angeles','UNITED STATES','US',-8,33.9425,-118.408,1685),
    ('LBB','Lubbock Preston Smith International Airport','LBB','Lubbock','UNITED STATES','US',-6,33.6636,-101.823,1686),
    ('LBT','Lumberton Airport','LBT','Lumberton','UNITED STATES','US',-100,0,0,1690),
    ('LCK','Rickenbacker International Airport','CMH','Columbus','UNITED STATES','US',-5,39.8138,-82.9278,1315),
    ('LEW','Auburn Lewiston Airport','LEW','Lewiston','UNITED STATES','US',-100,0,0,1697),
    ('LGC','Calloway Airport','LGC','La Grange','UNITED STATES','US',-4,33.0089,-85.0726,1702),
    ('LGU','Logan Airport','LGU','Logan','UNITED STATES','US',-7,41.791,-111.852,1703),
    ('LJN','Lake Jackson Airport','LJN','Lake Jackson','UNITED STATES','US',-100,0,0,1706),
    ('LLY','Burlington Country Airport','LLY','Mount Holly','UNITED STATES','US',-100,0,0,1707),
    ('LNS','Lancaster Airport','LNS','Lancaster','UNITED STATES','US',-5,40.1217,-76.2961,1711),
    ('LNY','Lanai Airport','LNY','Lanai','UNITED STATES','US',-10,20.7856,-156.951,1712),
    ('LOZ','Corbin London Airport','LOZ','London','UNITED STATES','US',-100,37.087,-84.0773,1713),
    ('LPC','Lompoc Airport','SMX','Santa Maria','UNITED STATES','US',-100,0,0,2083),
    ('LPO','La Porte Airport','LPO','La Porte','UNITED STATES','US',-100,0,0,1714),
    ('LPS','Lopez Island Airport','LPS','Lopez Island','UNITED STATES','US',-8,48.4839,-122.938,1715),
    ('LRU','Las Cruces Crawford Airport','LRU','Las Cruces','UNITED STATES','US',-7,32.2894,-106.922,1717),
    ('LSN','Los Banos Airport','LSN','Los Banos','UNITED STATES','US',-100,0,0,1719),
    ('LVK','Bron Airport','LVK','Livermore','UNITED STATES','US',-8,37.4136,-121.491,1724),
    ('LVS','Las Vegas Airport','LVS','Las Vegas','UNITED STATES','US',-7,35.6542,-105.142,1726),
    ('LWB','Greenbrier Valley Airport','LWB','Lewisburg','UNITED STATES','US',-5,37.8583,-80.3994,1728),
    ('LWM','Lawrence Airport','LWM','Lawrence','UNITED STATES','US',-4,42.7172,-71.1234,1730),
    ('LWS','Lewiston Nez Pierce Airport','LWS','Lewiston','UNITED STATES','US',-8,46.3745,-117.015,1731),
    ('MAF','Midland International Airport','MAF','Midland','UNITED STATES','US',-6,31.9425,-102.202,1737),
    ('MAZ','Eugenio M De Hostos Airport','MAZ','Mayaguez','UNITED STATES','US',-4,18.2557,-67.1485,1738),
    ('MBL','Manistee Airport','MBL','Manistee','UNITED STATES','US',-5,44.2725,-86.2469,1739),
    ('MBS','Saginaw Airport','MBS','Saginaw','UNITED STATES','US',-5,43.5329,-84.0796,1740);
-- Second Section
INSERT INTO airports VALUES
    ('MCO','Orlando International Airport','ORL','Orlando','UNITED STATES','US',-5,28.4294,-81.309,1881),
    ('MDH','Southern Illinois Airport','MDH','Carbondale','UNITED STATES','US',-100,0,0,1745),
    ('MFH','Mesquite Airport','MFH','Mesquite','UNITED STATES','US',-100,0,0,1754),
    ('MGR','Moultrie Airport','MGR','Moultrie','UNITED STATES','US',-4,31.0849,-83.8033,1761),
    ('MHT','Manchester Airport','MHT','Manchester','UNITED STATES','US',-5,42.9326,-71.4357,1765),
    ('MIC','Crystal Airport','MSP','Minneapolis','UNITED STATES','US',-100,0,0,1812),
    ('MIQ','Millard Airport','OMA','Omaha','UNITED STATES','US',-100,0,0,1871),
    ('MIV','Millville Airport','MIV','Millville','UNITED STATES','US',-5,39.3678,-75.0722,1772),
    ('MKE','General Mitchell International Airport','MKE','Milwaukee','UNITED STATES','US',-6,42.9472,-87.8966,1777),
    ('MKK','Molokai Airport','MKK','Hoolehua','UNITED STATES','US',-10,21.1529,-157.096,1779),
    ('MLT','Millinocket Airport','MLT','Millinocket','UNITED STATES','US',-5,45.6478,-68.6856,1787),
    ('MMU','Morristown Airport','MMU','Morristown','UNITED STATES','US',-5,40.7994,-74.4149,1792),
    ('MNZ','Manassas Airport','MNZ','Manassas','UNITED STATES','US',-100,0,0,1794),
    ('MOU','Mountain Village Airport','MOU','Mountain Village','UNITED STATES','US',-9,62.0954,-163.682,1800),
    ('MPR','McPherson Airport','MPR','McPherson','UNITED STATES','US',-100,0,0,1801),
    ('MPV','E F Knapp Airport','MPV','Montpelier','UNITED STATES','US',-5,44.2035,-72.5623,1802),
    ('MQT','Sawyer International Airport','MQT','Marquette','UNITED STATES','US',-5,46.3536,-87.3953,1803),
    ('MQY','Smyrna Airport','MQY','Smyrna','UNITED STATES','US',-100,36.009,-86.52,1804),
    ('MRB','Martinsburgh Regional Airport','MRB','Martinsburg','UNITED STATES','US',-5,39.2407,-77.591,1805),
    ('MRC','Maury Country Airport','MRC','Columbia','UNITED STATES','US',-100,0,0,1806),
    ('MSL','Muscle Shoals Airport','MSL','Muscle Shoals','UNITED STATES','US',-6,34.7453,-87.6102,1809),
    ('MSY','Louis Armstrong International Airport','MSY','New Orleans','UNITED STATES','US',-6,29.9934,-90.258,1817),
    ('MTH','Marathon Airport','MTH','Marathon','UNITED STATES','US',-5,24.7261,-81.0514,1819),
    ('MTP','Sky Portal Airport','MTP','Montauk','UNITED STATES','US',-100,41.0765,-71.9208,1822),
    ('MUE','Waimea Airport','MUE','Kamuela','UNITED STATES','US',-10,20.0013,-155.668,1824),
    ('MVN','Mt Vernon Outland Airport','MVN','Mt Vernon','UNITED STATES','US',-100,0,0,1827),
    ('MXY','McCarthy Airport','MXY','Mccarthy','UNITED STATES','US',-8,61.4371,-142.903,1833),
    ('MYL','Mccall Airport','MYL','Mccall','UNITED STATES','US',-7,44.8897,-116.101,1834),
    ('NEW','New Lakefront Airport','MSY','New Orleans','UNITED STATES','US',-100,30.0424,-90.0283,1818),
    ('NOT','Novato Airport','NOT','Novato','UNITED STATES','US',-100,0,0,1842),
    ('NPT','Newport State Airport','NPT','Newport','UNITED STATES','US',-100,0,0,1843),
    ('NQI','Naval Air Station Airport','NQI','Kingsville','UNITED STATES','US',-6,27.5072,-97.8097,1844),
    ('NUL','Nulato Airport','NUL','Nulato','UNITED STATES','US',-9,64.7294,-158.074,1846),
    ('OAK','Metro Oakland International Airport','OAK','Oakland','UNITED STATES','US',-8,37.7213,-122.221,1851),
    ('OCA','Ocean Reef Airport','OCA','Ocean Reef','UNITED STATES','US',-5,25.3254,-80.2748,1853),
    ('OEA','Oneal Airport','OEA','Vincennes','UNITED STATES','US',-100,0,0,1858),
    ('OGG','Kahului Airport','OGG','Maui','UNITED STATES','US',-10,20.8986,-156.43,1862),
    ('OJC','Johnson Executive Airport','KCK','Kansas City','UNITED STATES','US',-100,0,0,1656),
    ('OKC','Will Rogers World Airport','OKC','Oklahoma City','UNITED STATES','US',-6,35.3931,-97.6007,1866),
    ('OLM','Olympia Airport','OLM','Olympia','UNITED STATES','US',-7,46.9694,-122.903,1868),
    ('OLS','International Airport','OLS','Nogales','UNITED STATES','US',-7,31.4177,-110.848,1869),
    ('OLU','Columbus Airport','OLU','Columbus','UNITED STATES','US',-100,0,0,1870),
    ('OME','Nome Airport','OME','Nome','UNITED STATES','US',-9,64.5122,-165.445,1873),
    ('OPF','Opa Locka Airport','MIA','Miami','UNITED STATES','US',-5,25.907,-80.2784,1767),
    ('ORD','O''Hare International Airport','CHI','Chicago','UNITED STATES','US',-6,41.9786,-87.9048,1292),
    ('ORF','Norfolk International Airport','ORF','Norfolk','UNITED STATES','US',-5,36.8946,-76.2012,1878),
    ('ORH','Worcester Airport','ORH','Worcester','UNITED STATES','US',-5,42.2673,-71.8757,1879),
    ('ORL','Herndon Airport','ORL','Orlando','UNITED STATES','US',-5,28.5455,-81.3329,1880),
    ('OTG','Worthington Airport','OTG','Worthington','UNITED STATES','US',-100,0,0,1883),
    ('OTM','Industrial Airport','OTM','Ottumwa','UNITED STATES','US',-100,41.1066,-92.4479,1885),
    ('OTS','Ancortes Airport','OTS','Ancortes','UNITED STATES','US',-8,48.4989,-122.662,1886),
    ('OWA','Owatonna Airport','OWA','Owatonna','UNITED STATES','US',-100,0,0,1888),
    ('OWD','Norwood Ma Airport','OWD','Norwood','UNITED STATES','US',-4,42.1905,-71.1729,1890),
    ('OXC','Waterbury Oxford Airport','OXC','Oxford','UNITED STATES','US',-4,41.4786,-73.1352,1891),
    ('OXR','Oxnard Ventura Airport','OXR','Oxnard','UNITED STATES','US',-8,34.2008,-119.207,1892),
    ('PAO','Palo Alto Airport','PAO','Palo Alto','UNITED STATES','US',-100,0,0,1895),
    ('PBF','Pine Bluff Airport','PBF','Pine Bluff','UNITED STATES','US',-6,34.1731,-91.9356,1896),
    ('PBG','Plattsburgh International Airport','PBG','Plattsburgh','UNITED STATES','US',-5,44.6509,-73.4681,1897),
    ('PBI','Palm Beach International Airport','PBI','West Palm Beach','UNITED STATES','US',-5,26.6832,-80.0956,1899),
    ('PCT','Princeton Airport','PCT','Princeton','UNITED STATES','US',-100,0,0,1901),
    ('PDX','Portland International Airport','PDX','Portland','UNITED STATES','US',-8,45.5887,-122.598,1903),
    ('PGA','Page Airport','PGA','Page','UNITED STATES','US',-7,36.9261,-111.448,1906),
    ('PGV','Pitt Greenville Airport','PGV','Greenville','UNITED STATES','US',-5,35.6353,-77.3853,1910),
    ('PHF','Williamsburg International Airport','PHF','Newport News','UNITED STATES','US',-5,37.1319,-76.493,1911),
    ('PHL','Philadelphia International Airport','PHL','Philadelphia','UNITED STATES','US',-5,39.8719,-75.2411,1913),
    ('PHX','Sky Harbor International Airport','PHX','Phoenix','UNITED STATES','US',-7,33.4343,-112.012,1916),
    ('PIA','Greater Peoria Airport','PIA','Peoria','UNITED STATES','US',-6,40.6642,-89.6933,1919),
    ('PIB','Hattiesburg Laurel Regional Airport','LUL','Laurel','UNITED STATES','US',-6,31.4671,-89.3371,1721),
    ('PIE','St Petersburg Clearwater Airport','TPA','Tampa','UNITED STATES','US',-5,27.9102,-82.6874,2151),
    ('PIT','Pittsburgh International Airport','PIT','Pittsburgh','UNITED STATES','US',-5,40.4915,-80.2329,1923),
    ('PIZ','Dew Station Airport','PIZ','Point Lay','UNITED STATES','US',-9,69.7329,-163.005,1924),
    ('PJB','Payson Airport','PJB','Payson','UNITED STATES','US',-100,0,0,1925),
    ('PLK','M Graham Clark Airport','PLK','Point Lookout','UNITED STATES','US',-100,0,0,1928),
    ('PMD','La Palmdale Regional Airport','PMD','Palmdale','UNITED STATES','US',-8,34.6294,-118.085,1931),
    ('POE','Fort Polk Airport','POE','Fort Polk','UNITED STATES','US',-6,31.0448,-93.1917,1936),
    ('PPM','Pompano Beach Airport','PPM','Pompano Beach','UNITED STATES','US',-100,0,0,1939),
    ('PSB','Midstate Airport','PSB','Philipsburg','UNITED STATES','US',-100,0,0,1944),
    ('PSC','Tri Cities Airport','PSC','Pasco','UNITED STATES','US',-8,46.2647,-119.119,1945),
    ('PSE','Mercedita Airport','PSE','Ponce','UNITED STATES','US',-4,18.0083,-66.563,1946),
    ('PSK','New River Valley Airport','PSK','Dublin','UNITED STATES','US',-100,0,0,1949),
    ('PSM','Portsmouth Pease International Airport','PSM','Portsmouth','UNITED STATES','US',-5,43.0779,-70.8233,1950),
    ('PTK','Oakland Pontiac Airport','PTK','Pontiac','UNITED STATES','US',-100,42.6655,-83.4201,1953),
    ('PUB','Pueblo Airport','PUB','Pueblo','UNITED STATES','US',-7,38.2891,-104.497,1956),
    ('PUW','Pullman Moscow Airport','PUW','Pullman','UNITED STATES','US',-8,46.7439,-117.11,1959),
    ('PVD','T F Green St Airport','PVD','Providence','UNITED STATES','US',-5,41.7326,-71.4204,1961),
    ('PVF','Placerville Airport','PVF','Placerville','UNITED STATES','US',-100,0,0,1962),
    ('PVU','Provo Airport','PVU','Provo','UNITED STATES','US',-6,40.2181,-111.722,1963),
    ('PVZ','Casement Airport','PVZ','Painesville','UNITED STATES','US',-100,0,0,1965),
    ('PWA','Wiley Post Airport','OKC','Oklahoma City','UNITED STATES','US',-100,35.5342,-97.6471,1864),
    ('PWK','Pal Waukee Airport','CHI','Chicago','UNITED STATES','US',-6,42.1143,-87.9015,1289),
    ('PYM','Plymouth Airport','PYM','Plymouth','UNITED STATES','US',-4,41.909,-70.7288,1968),
    ('RAC','Horlick Airport','RAC','Racine','UNITED STATES','US',-100,0,0,1972),
    ('RCE','Roche Harbor Airport','RCE','Roche Harbor','UNITED STATES','US',-8,48.6081,-123.16,1978),
    ('RDU','Raleigh Durham International Airport','RDU','Raleigh','UNITED STATES','US',-5,35.8776,-78.7875,1983),
    ('RFD','Chicago Rockford Airport','CHI','Chicago','UNITED STATES','US',-6,42.1954,-89.0972,1290),
    ('RIC','Richmond International Airport','RIC','Richmond','UNITED STATES','US',-5,37.5052,-77.3197,1988),
    ('RKC','Yreka Airport','RKC','Yreka','UNITED STATES','US',-100,0,0,1992),
    ('RKD','Rockland Airport','RKD','Rockland','UNITED STATES','US',-5,44.0601,-69.0992,1993),
    ('RLA','National Airport','RLA','Rolla','UNITED STATES','US',-100,38.1274,-91.7695,1997),
    ('RLD','Richland Airport','RLD','Richland','UNITED STATES','US',-100,0,0,1998),
    ('RMG','Richard B Russell Airport','RMG','Rome','UNITED STATES','US',-4,34.3508,-85.1587,2000),
    ('RNO','Reno Tahoe International Airport','RNO','Reno','UNITED STATES','US',-8,39.4991,-119.768,2002),
    ('RNT','Renton Airport','RNT','Renton','UNITED STATES','US',-100,47.4933,-122.215,2003),
    ('ROA','Roanoke Regional Airport','ROA','Roanoke','UNITED STATES','US',-5,37.3255,-79.9754,2004),
    ('ROG','Rogers Airport','ROG','Rogers','UNITED STATES','US',-100,0,0,2006),
    ('RSN','Ruston Regional Airport','RSN','Ruston','UNITED STATES','US',-100,0,0,2009),
    ('RSW','Regional Southwest Airport','FMY','Fort Myers','UNITED STATES','US',-5,26.5362,-81.7552,1465),
    ('RUT','Rutland Airport','RUT','Rutland','UNITED STATES','US',-5,43.5294,-72.9496,2013),
    ('RVR','Green River Airport','RVR','Green River','UNITED STATES','US',-4,18.2453,-65.6433,2014),
    ('RWI','Wilson Airport','RWI','Rocky Mount','UNITED STATES','US',-5,35.8563,-77.8919,2015),
    ('RZH','Quartz Hill Airport','WJF','Lancaster','UNITED STATES','US',-100,0,0,2211),
    ('SAA','Lar Shively Airport','LAR','Laramie','UNITED STATES','US',-6,41.4449,-106.824,1676),
    ('SAC','Sacramento Executive Airport','SAC','Sacramento','UNITED STATES','US',-8,38.5125,-121.493,2020),
    ('SAN','Lindbergh International Airport','SAN','San Diego','UNITED STATES','US',-8,32.7336,-117.19,2025),
    ('SAR','Sparta Community Airport','SAR','Sparta','UNITED STATES','US',-100,38.1489,-89.6987,2026),
    ('SAV','Savannah International Airport','SAV','Savannah','UNITED STATES','US',-5,32.1276,-81.2021,2029),
    ('SBA','Santa Barbara Airport','SBA','Santa Barbara','UNITED STATES','US',-8,34.4262,-119.84,2030),
    ('SBD','San Bernardino International Airport','SBT','San Bernardino','UNITED STATES','US',-8,34.0954,-117.235,2034),
    ('SBM','Sheboygan Airport','SBM','Sheboygan','UNITED STATES','US',-100,0,0,2031),
    ('SBN','Michiana Regional Airport','SBN','South Bend','UNITED STATES','US',-5,41.7087,-86.3173,2032),
    ('SBS','Steamboat Airport','SBS','Steamboat Springs','UNITED STATES','US',-6,40.5163,-106.866,2033),
    ('SBY','Wicomico Regional Airport','SBY','Salisbury Ocean City','UNITED STATES','US',-5,38.3405,-75.5103,2035),
    ('SCC','Prudhoe Bay Deadhorse Airport','SCC','Prudhoe Bay Deadhorse','UNITED STATES','US',-9,70.1947,-148.465,2036),
    ('SCK','Stockton Metro Airport','SCK','Stockton','UNITED STATES','US',-8,37.8942,-121.238,2040),
    ('SDF','Louisville International Airport','SDF','Louisville','UNITED STATES','US',-5,38.1741,-85.7365,2042),
    ('SDP','Sand Point Airport','SDP','Sand Point','UNITED STATES','US',-9,55.315,-160.523,2043),
    ('SDX','Sedona Airport','SDX','Sedona','UNITED STATES','US',-7,34.8486,-111.788,2044),
    ('SEA','Seattle Tacoma International Airport','SEA','Seattle','UNITED STATES','US',-8,47.449,-122.309,2046),
    ('SEF','Air Terminal Airport','SEF','Sebring','UNITED STATES','US',-100,0,0,2050),
    ('SFB','Orlando Sanford Airport','SFB','Sanford','UNITED STATES','US',-5,28.7776,-81.2375,2052),
    ('SFM','Sanford Regional Airport','SFM','Sanford','UNITED STATES','US',-5,43.3938,-70.708,2053),
    ('SFO','San Francisco International Airport','SFO','San Francisco','UNITED STATES','US',-8,37.619,-122.375,2054),
    ('SHD','Shenandoah Valley Airport','SHD','Staunton','UNITED STATES','US',-5,38.2639,-78.8964,2062),
    ('SHV','Shreveport Regional Airport','SHV','Shreveport','UNITED STATES','US',-6,32.4466,-93.8256,2064),
    ('SIG','Isla Grande Airport','SIG','Isla Grande','UNITED STATES','US',-4,18.4568,-66.0981,2066),
    ('SIT','Sitka Airport','SIT','Sitka','UNITED STATES','US',-9,57.0471,-135.362,2067),
    ('SJC','San Jose International Airport','SJC','San Jose','UNITED STATES','US',-8,37.3626,-121.929,2068),
    ('SJF','St John Island Airport','SJF','St John','UNITED STATES','US',-100,0,0,2072),
    ('SKY','Griffing Sandusky Airport','SKY','Sandusky','UNITED STATES','US',-5,41.4334,-82.6523,2075),
    ('SLK','Adirondack Airport','SLK','Saranac Lake','UNITED STATES','US',-5,44.3853,-74.2062,2078),
    ('SLT','Salida Airport','SLT','Salida','UNITED STATES','US',-100,0,0,2080),
    ('SMX','Santa Maria Public Airport','SMX','Santa Maria','UNITED STATES','US',-8,34.8989,-120.457,2082),
    ('SNA','John Wayne Airport','SNA','Santa Ana','UNITED STATES','US',-8,33.6757,-117.868,2084),
    ('SNL','Shawnee Airport','SNL','Shawnee','UNITED STATES','US',-100,0,0,2085),
    ('SNS','Salinas Airport','SNS','Salinas','UNITED STATES','US',-100,36.6628,-121.606,2086),
    ('SOP','Pinehurst Airport','SOP','Pinehurst','UNITED STATES','US',-100,35.2374,-79.3912,2088),
    ('SOV','Seldovia Airport','SOV','Seldovia','UNITED STATES','US',-100,59.4424,-151.704,2089),
    ('SOW','Show Low Airport','SOW','Show Low','UNITED STATES','US',-7,34.2656,-110.006,2090),
    ('SPG','Whitted Airport','SPG','St Petersburg','UNITED STATES','US',-5,27.7651,-82.627,2092),
    ('SPI','Capital Airport','SPI','Springfield','UNITED STATES','US',-6,39.8441,-89.6779,2093),
    ('SQA','Santa Ynez Airport','SQA','Santa Ynez','UNITED STATES','US',-100,0,0,2097),
    ('SQL','San Carlos Airport','SQL','San Carlos','UNITED STATES','US',-8,37.5119,-122.249,2099),
    ('SRQ','Sarasota Bradenton Airport','SRQ','Sarasota','UNITED STATES','US',-5,27.3954,-82.5544,2100),
    ('SRU','Skypark Airport','SRU','Santa Cruz','UNITED STATES','US',-100,0,0,2101),
    ('SSI','McKinnon Airport','SSI','St Simons Is','UNITED STATES','US',-100,31.1518,-81.3913,2102),
    ('STJ','Rosecrans Memorial Airport','STJ','St Joseph','UNITED STATES','US',-6,39.7719,-94.9097,2106),
    ('STP','Downtown St Paul Airport','STP','St Paul','UNITED STATES','US',0,51.53,-0.125,2110),
    ('STT','Cyril E King Airport','STT','St Thomas','UNITED STATES','US',-4,18.3373,-64.9734,2112),
    ('STX','Alexander Hamilton Airport','STX','St Croix','UNITED STATES','US',-4,17.7019,-64.7986,2113),
    ('SUE','Door Country Airport','SUE','Sturgeon Bay','UNITED STATES','US',-6,44.8437,-87.4216,2115),
    ('SUS','Spirit Of St Louis Airport','STL','St Louis','UNITED STATES','US',-7,38.6621,-90.652,2107),
    ('SUW','Richard I Bong Airport','SUW','Superior','UNITED STATES','US',-100,0,0,2119),
    ('SUX','Sioux Gateway Airport','SUX','Sioux City','UNITED STATES','US',-6,42.4026,-96.3844,2120),
    ('SWD','Seward Airport','SWD','Seward','UNITED STATES','US',-8,60.1269,-149.419,2123),
    ('SWF','Stewart Airport','SWF','Newburgh','UNITED STATES','US',-5,41.5041,-74.1048,2124),
    ('SXC','Catalina Airport','AVX','Catalina Island','UNITED STATES','US',-100,0,0,1194),
    ('SZP','Santa Paula Airport','SZP','Santa Paula','UNITED STATES','US',-100,0,0,2127),
    ('TAD','Las Animas Airport','PUB','Pueblo','UNITED STATES','US',-100,0,0,1957),
    ('TAL','Ralph Calhoun Airport','TAL','Tanana','UNITED STATES','US',-9,65.1796,-152.076,2128),
    ('TCC','Tucumcari Airport','LVS','Las Vegas','UNITED STATES','US',-7,35.1828,-103.603,1727),
    ('TCL','Van De Graff Airport','TCL','Tuscaloosa','UNITED STATES','US',-6,33.2206,-87.6114,2130),
    ('TDW','Tradewind Airport','AMA','Amarillo','UNITED STATES','US',-100,0,0,1157),
    ('TEB','Teterboro Airport','TEB','Teterboro','UNITED STATES','US',-5,40.8501,-74.0608,2131),
    ('THA','Northern Airport','THA','Tullahoma','UNITED STATES','US',-100,0,0,2133),
    ('THV','York Airport','THV','York','UNITED STATES','US',-100,0,0,2135),
    ('TIW','Tacoma Industrial Airport','TIW','Tacoma','UNITED STATES','US',-100,47.2679,-122.578,2136),
    ('TIX','Space Center Executive Airport','TIX','Titusville','UNITED STATES','US',-100,28.5148,-80.7992,2137),
    ('TKF','Truckee Airport','TKF','Truckee','UNITED STATES','US',-100,39.32,-120.14,2138),
    ('TKJ','Tok Airport','TKJ','Tok Ak','UNITED STATES','US',-100,63.2955,-143.006,2139),
    ('TMA','Henry Tift Myers Airport','TMA','Tifton','UNITED STATES','US',-5,31.429,-83.4885,2142),
    ('TMB','Tamiami Airport','MIA','Miami','UNITED STATES','US',-5,25.6479,-80.4328,1770),
    ('TOG','Togiak Village Airport','TOG','Togiak','UNITED STATES','US',-9,59.0528,-160.397,2144),
    ('TOL','Toledo Express Airport','TOL','Toledo','UNITED STATES','US',-5,41.5868,-83.8078,2145),
    ('TOP','Phillip Billard Airport','TOP','Topeka','UNITED STATES','US',-6,39.0687,-95.6225,2146),
    ('TPF','Peter O Knight Airport','TPA','Tampa','UNITED STATES','US',-100,0,0,2150),
    ('TPH','Tonopah Airport','TPH','Tonopah','UNITED STATES','US',-100,38.0601,-117.087,2152),
    ('TPL','Temple Airport','TPL','Temple','UNITED STATES','US',-6,31.1525,-97.4078,2153),
    ('TRX','Trenton Airport','TTN','Trenton','UNITED STATES','US',-100,0,0,2159),
    ('TSM','Taos Airport','TSM','Taos','UNITED STATES','US',-100,0,0,2156),
    ('TTD','Troutdale Airport','TTD','Troutdale','UNITED STATES','US',-8,45.5494,-122.401,2157),
    ('TTN','Trenton Mercer Airport','TTN','Trenton','UNITED STATES','US',-5,40.2767,-74.8135,2158),
    ('TUS','Tucson International Airport','TUS','Tucson','UNITED STATES','US',-7,32.1161,-110.941,2162),
    ('TVC','Cherry Capital Airport','TVC','Traverse City','UNITED STATES','US',-5,44.7414,-85.5822,2163),
    ('TVL','Lake Tahoe Airport','TVL','Lake Tahoe','UNITED STATES','US',-8,38.8939,-119.995,2165),
    ('TWA','Twin Hills Airport','TWA','Twin Hills','UNITED STATES','US',-9,59.0744,-160.275,2166),
    ('TYS','McGhee Tyson Airport','TYS','Knoxville','UNITED STATES','US',-5,35.811,-83.994,2170),
    ('UDD','Bermuda Dunes Airport','UDD','Palm Desert','UNITED STATES','US',-7,33.7484,-116.275,2174),
    ('UGN','Memorial Airport','UGN','Waukegan','UNITED STATES','US',-6,42.4222,-87.8679,2175),
    ('UIZ','Berz Macomb Airport','DTT','Detroit','UNITED STATES','US',-100,0,0,1383),
    ('UKI','Ukiah Airport','UKI','Ukiah','UNITED STATES','US',-100,39.126,-123.201,2177),
    ('UKT','Upper Bucks Airport','UKT','Quakertown','UNITED STATES','US',-100,0,0,2178),
    ('ULM','New Ulm Airport','ULM','New Ulm','UNITED STATES','US',-100,0,0,2179),
    ('UNK','Unalakleet Airport','UNK','Unalakleet','UNITED STATES','US',-9,63.8883,-160.799,2180),
    ('UST','St Augustine Airport','UST','St Augustine','UNITED STATES','US',-5,29.9592,-81.3397,2182),
    ('VCT','Victoria Regional Airport','VCT','Victoria','UNITED STATES','US',-6,28.8526,-96.9185,2184),
    ('VJI','Virginia Highlands Airport','VJI','Abingdon','UNITED STATES','US',-100,0,0,2191),
    ('VKS','Vicksburg Airport','VKS','Vicksburg','UNITED STATES','US',-100,0,0,2192),
    ('VLO','Stolport Airport','VLO','Vallejo','UNITED STATES','US',-100,0,0,2194),
    ('VNY','Van Nuys Airport','LAX','Los Angeles','UNITED STATES','US',-8,34.2098,-118.49,1683),
    ('VPS','Ft Walton Beach Airport','VPS','Valparaiso','UNITED STATES','US',-6,30.4832,-86.5254,2196),
    ('VQS','Vieques Airport','VQS','Vieques','UNITED STATES','US',-4,18.1158,-65.4227,2199),
    ('VYS','Illinois Valley Regional Airport','VYS','Peru','UNITED STATES','US',-100,41.3519,-89.1531,2201),
    ('WAL','Wallops Airport','WAL','Chincoteague','UNITED STATES','US',-5,37.9402,-75.4664,2202),
    ('WGO','Winchester Airport','WGO','Winchester','UNITED STATES','US',-100,0,0,2209),
    ('WJF','Williams J Fox Airport','WJF','Lancaster','UNITED STATES','US',-100,34.7411,-118.219,2210),
    ('WLK','Selawik Airport','WLK','Selawik','UNITED STATES','US',-9,66.6,-159.986,2213),
    ('WMH','Mountain Home Airport','WMH','Mountain Home','UNITED STATES','US',-100,0,0,2215),
    ('WVL','Robert La Fleur Airport','WVL','Waterville','UNITED STATES','US',-100,0,0,2220),
    ('WWD','Cape May Airport','WWD','Cape May','UNITED STATES','US',-5,39.0085,-74.9083,2221),
    ('WWR','West Woodward Airport','WWR','Woodward','UNITED STATES','US',-100,0,0,2222),
    ('WWT','Newtok Airport','WWT','Newtok','UNITED STATES','US',-10,60.9392,-164.641,2223),
    ('WYS','West Yellowstone Airport','WYS','West Yellowstone','UNITED STATES','US',-7,44.6883,-111.118,2224),
    ('XNA','Northwest Arkansas Regional Airport','FYV','Fayetteville','UNITED STATES','US',-6,36.2819,-94.3068,1486),
    ('YAK','Yakutat Airport','YAK','Yakutat','UNITED STATES','US',-9,59.3012,-139.394,2225),
    ('YIP','Willow Run Airport','DTT','Detroit','UNITED STATES','US',-5,42.2379,-83.5304,1384),
    ('YKM','Yakima Terminal Airport','YKM','Yakima','UNITED STATES','US',-8,46.5682,-120.544,1110),
    ('ZZV','Zanesville Airport','ZZV','Zanesville','UNITED STATES','US',-100,39.9445,-81.8921,1116);


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
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2233');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2234');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2235');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2236');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2237');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2238');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2239');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2240');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2241');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2242');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2243');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2244');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2245');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2246');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2247');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2248');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2249');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2250');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2251');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2252');
INSERT INTO booking (is_active, confirmation_code) VALUES (1,'1BB2253');
INSERT INTO booking (is_active, confirmation_code) VALUES (0,'1BB2254');
INSERT INTO booking (is_active, confirmation_code) VALUES (0,'1BB2255');
INSERT INTO booking (is_active, confirmation_code) VALUES (0,'1BB2256');

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