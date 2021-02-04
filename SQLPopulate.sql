SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema utopia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `utopia` DEFAULT CHARACTER SET utf8 ;
USE `utopia` ;

-- -----------------------------------------------------
-- Table `utopia`.`airport`
-- -----------------------------------------------------
DROP TABLE IF EXISTS airport;
CREATE TABLE IF NOT EXISTS `utopia`.`airport` (
	`id` int NOT NULL UNIQUE AUTO_INCREMENT,
    `iata_id` CHAR(5) NOT NULL UNIQUE,
    `name` VARCHAR(255) CHARACTER SET utf8,
    `city_code` VARCHAR(10) CHARACTER SET utf8,
    `city_name` VARCHAR(255) CHARACTER SET utf8,
	`country_code` VARCHAR(10) CHARACTER SET utf8,
    `country_name` VARCHAR(255) CHARACTER SET utf8,
    `timezone` INT,
    `lat` NUMERIC(7, 4),
    `lng` NUMERIC(7, 4),
    PRIMARY KEY (`iata_id`),
    UNIQUE INDEX `iata_id_UNIQUE` (`iata_id` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO airport VALUES
    (1,'ABE','Lehigh Valley International Airport','ABE','Allentown','US','UNITED STATES',-5,40.6521,-75.4408),
    (2,'ABL','Ambler Airport','ABL','Ambler','US','UNITED STATES',-9,67.1064,-157.857),
    (3,'ABQ','Albuquerque International Airport','ABQ','Albuquerque','US','UNITED STATES',-7,35.0402,-106.609),
    (4,'ABR','Aberdeen Airport','ABR','Aberdeen','US','UNITED STATES',-6,45.4491,-98.4218),
    (5,'ACT','Madison Cooper Airport','ACT','Waco','US','UNITED STATES',-6,31.6113,-97.2305),
    (6,'ACV','Arcata Eureka Airport','ACV','Eureka','US','UNITED STATES',-8,40.9781,-124.109),
    (7,'ADQ','Kodiak Airport','ADQ','Kodiak','US','UNITED STATES',-9,57.75,-152.494),
    (8,'ADS','Addison Airport','DFW','Dallas','US','UNITED STATES',-5,32.9686,-96.8364),
    (9,'AEL','Albert Lea Airport','AEL','Albert Lea','US','UNITED STATES',-100,0,0),
    (10,'AEX','Alexandria International Airport','AEX','Alexandria','US','UNITED STATES',-6,31.3274,-92.5498),
    (11,'AFW','Fort Worth Alliance Airport','DFW','Dallas','US','UNITED STATES',-6,32.9878,-97.3189),
    (12,'AGN','Angoon Airport','AGN','Angoon','US','UNITED STATES',-9,57.5036,-134.585),
    (13,'AKN','King Salmon Airport','AKN','King Salmon','US','UNITED STATES',-9,58.6768,-156.649),
    (14,'ALE','Alpine Airport','ALE','Alpine','US','UNITED STATES',-100,0,0),
    (15,'AMA','Amarillo International Airport','AMA','Amarillo','US','UNITED STATES',-6,35.2194,-101.706),
    (16,'ANA','Anaheim Airport','ANA','Anaheim','US','UNITED STATES',-100,0,0),
    (17,'ANC','Anchorage International Airport','ANC','Anchorage','US','UNITED STATES',-9,61.1744,-149.996),
    (18,'AND','Anderson Airport','AND','Anderson','US','UNITED STATES',-5,34.4946,-82.7094),
    (19,'ANI','Aniak Airport','ANI','Aniak','US','UNITED STATES',-9,61.5816,-159.543),
    (20,'ANP','Lee Annapolis Airport','ANP','Annapolis','US','UNITED STATES',-100,0,0),
    (21,'APA','Centennial Airport','DEN','Denver','US','UNITED STATES',-7,39.5701,-104.849),
    (22,'APN','Phelps Collins Airport','APN','Alpena','US','UNITED STATES',-5,45.0781,-83.5603),
    (23,'ART','Watertown Airport','ART','Watertown','US','UNITED STATES',-5,43.9919,-76.0217),
    (24,'ASN','Talladega Airport','ASN','Talladega','US','UNITED STATES',-100,0,0),
    (25,'AST','Astoria Airport','AST','Astoria','US','UNITED STATES',-8,46.158,-123.879),
    (26,'AUG','Maine State Airport','AUG','Augusta','US','UNITED STATES',-5,44.3206,-69.7973),
    (27,'AUS','Bergstrom International Airport','AUS','Austin','US','UNITED STATES',-6,30.1945,-97.6699),
    (28,'AVP','Wilkes Barre Scranton International Airport','AVP','Scranton','US','UNITED STATES',-5,41.3385,-75.7234),
    (29,'AXV','Neil Armstrong Airport','AXV','Wapakoneta','US','UNITED STATES',-100,0,0),
    (30,'AZA','Williams Gateway Airport','PHX','Phoenix','US','UNITED STATES',-7,33.3078,-111.655),
    (31,'BCB','Virginia Tech Airport','BCB','Blacksburg','US','UNITED STATES',-100,0,0),
    (32,'BCE','Bryce Airport','BCE','Bryce','US','UNITED STATES',-7,37.7064,-112.146),
    (33,'BDL','Bradley International Airport','HFD','Hartford','US','UNITED STATES',-5,41.9389,-72.6832),
    (34,'BDR','Sikorsky Memorial Airport','BDR','Bridgeport','US','UNITED STATES',-5,41.1635,-73.1262),
    (35,'BED','Bedford Airport','BED','Bedford','US','UNITED STATES',-5,42.47,-71.289),
    (36,'BET','Bethel Airport','BET','Bethel','US','UNITED STATES',-9,60.7798,-161.838),
    (37,'BFD','Bradford Regional Airport','BFD','Bradford','US','UNITED STATES',-5,41.8031,-78.6401),
    (38,'BFG','Bullfrog Basin Airport','BFG','Bullfrog Basin','US','UNITED STATES',-100,0,0),
    (39,'BFP','Beaver Falls Airport','BFP','Beaver Falls','US','UNITED STATES',-100,40.7725,-80.3915),
    (40,'BGR','Bangor International Airport','BGR','Bangor','US','UNITED STATES',-5,44.8074,-68.8281),
    (41,'BHM','Birmingham International Airport','BHM','Birmingham','US','UNITED STATES',-6,33.5629,-86.7535),
    (42,'BIH','Bishop Airport','BIH','Bishop','US','UNITED STATES',-100,37.3731,-118.364),
    (43,'BJC','Jeffco Airport','BJC','Broomfield','US','UNITED STATES',-7,39.9089,-105.117),
    (44,'BKG','Branson Regional Airport','BKG','Branson','US','UNITED STATES',-6,36.532,-93.2006),
    (45,'BKL','Burke Lakefront Airport','CLE','Cleveland','US','UNITED STATES',-100,41.525,-81.6833),
    (46,'BLH','Blythe Airport','BLH','Blythe','US','UNITED STATES',-8,33.6192,-114.717),
    (47,'BLI','Bellingham International Airport','BLI','Bellingham','US','UNITED STATES',-8,48.7927,-122.538),
    (48,'BMI','Normal Airport','BMI','Bloomington','US','UNITED STATES',-6,40.4771,-88.9159),
    (49,'BNA','Nashville International Airport','BNA','Nashville','US','UNITED STATES',-6,36.1245,-86.6782),
    (50,'BOK','Brookings State Airport','BOK','Brookings','US','UNITED STATES',-100,0,0),
    (51,'BOS','Logan International Airport','BOS','Boston','US','UNITED STATES',-5,42.3643,-71.0052),
    (52,'BOW','Bartow Airport','BOW','Bartow','US','UNITED STATES',-6,27.9434,-81.7834),
    (53,'BRO','South Padre Island International Airport','BRO','Brownsville','US','UNITED STATES',-6,25.9068,-97.4259),
    (54,'BSI','Blairsville Airport','BSI','Blairsville','US','UNITED STATES',-100,0,0),
    (55,'BTM','Bert Mooney Airport','BTM','Butte','US','UNITED STATES',-7,45.9548,-112.497),
    (56,'BTR','Ryan Airport','BTR','Baton Rouge','US','UNITED STATES',-6,30.5332,-91.1496),
    (57,'BTT','Bettles Airport','BTT','Bettles','US','UNITED STATES',-9,66.9139,-151.529),
    (58,'BTV','Burlington International Airport','BTV','Burlington','US','UNITED STATES',-5,44.4719,-73.1533),
    (59,'BUF','Greater Buffalo International Airport','BUF','Buffalo','US','UNITED STATES',-5,42.9405,-78.7322),
    (60,'BUR','Burbank Glendale Pasadena Airport','BUR','Burbank','US','UNITED STATES',-8,34.2007,-118.359),
    (61,'BWC','Brawley Airport','BWC','Brawley','US','UNITED STATES',-100,0,0),
    (62,'BWI','Baltimore Washington International Airport','BWI','Baltimore','US','UNITED STATES',-5,39.1754,-76.6683),
    (63,'BXS','Borrego Valley Airport','BXS','Borrego Springs','US','UNITED STATES',-7,33.259,-116.321),
    (64,'BYI','Burley Airport','BYI','Burley','US','UNITED STATES',-100,42.5433,-113.772),
    (65,'CAE','Columbia Metro Airport','CAE','Columbia','US','UNITED STATES',-5,33.9388,-81.1195),
    (66,'CAK','Akron Canton Regional Airport','CAK','Akron','US','UNITED STATES',-5,40.9161,-81.4422),
    (67,'CDR','Chadron Airport','CDR','Chadron','US','UNITED STATES',-7,42.8375,-103.096),
    (68,'CDV','Mudhole Smith Airport','CDV','Cordova','US','UNITED STATES',-9,60.4918,-145.478),
    (69,'CDW','Caldwell Wright Airport','CDW','Caldwell','US','UNITED STATES',-4,40.8752,-74.2814),
    (70,'CHO','Charlottesville Albemarle Airport','CHO','Charlottesville','US','UNITED STATES',-5,38.1386,-78.4529),
    (71,'CHS','Charleston International Airport','CHS','Charleston','US','UNITED STATES',-5,32.8986,-80.0405),
    (72,'CIL','Melsing Creek Airport','CIL','Council','US','UNITED STATES',-9,64.8978,-163.703),
    (73,'CJN','El Cajon Airport','CJN','El Cajon','US','UNITED STATES',-100,0,0),
    (74,'CKB','Clarksburg Benedum Airport','CKB','Clarksburg','US','UNITED STATES',-5,39.2966,-80.2281),
    (75,'CLD','Carlsbad Airport','CLD','Carlsbad','US','UNITED STATES',-8,33.0742,-117.165),
    (76,'CLE','Hopkins International Airport','CLE','Cleveland','US','UNITED STATES',-5,41.4117,-81.8498),
    (77,'CLM','William Fairchild International Airport','CLM','Port Angeles','US','UNITED STATES',-8,48.1202,-123.5),
    (78,'CLT','Charlotte Douglas International Airport','CLT','Charlotte','US','UNITED STATES',-5,35.214,-80.9431),
    (79,'CMH','Port Columbus International Airport','CMH','Columbus','US','UNITED STATES',-5,39.998,-82.8919),
    (80,'CNM','Carlsbad Airport','CNM','Carlsbad','US','UNITED STATES',-7,32.3375,-104.263),
    (81,'COD','Yellowstone Regional Airport','COD','Cody','US','UNITED STATES',-7,44.5202,-109.024),
    (82,'COI','Merrit Island Airport','COI','Cocoa Metro Area','US','UNITED STATES',-100,0,0),
    (83,'CON','Concord Airport','CON','Concord','US','UNITED STATES',-5,43.2027,-71.5023),
    (84,'CPX','Culebra Airport','CPX','Culebra','US','UNITED STATES',-4,18.3127,-65.3034),
    (85,'CRE','Grand Strand Airport','MYR','Myrtle Beach','US','UNITED STATES',-100,33.8118,-78.7239),
    (86,'CRP','Corpus Christi International Airport','CRP','Corpus Christi','US','UNITED STATES',-6,27.7704,-97.5012),
    (87,'CRW','Yeager Airport','CRW','Charleston','US','UNITED STATES',-5,38.3731,-81.5932),
    (88,'CRX','Roscoe Turner Airport','CRX','Corinth','US','UNITED STATES',-100,0,0),
    (89,'CSG','Columbus Metro Ft Benning Airport','CSG','Columbus','US','UNITED STATES',-5,32.5163,-84.9389),
    (90,'CSM','Sherman Airport','CSM','Clinton','US','UNITED STATES',-100,35.34,-99.2),
    (91,'CSN','Carson Airport','CSN','Carson City','US','UNITED STATES',-100,0,0),
    (92,'CTW','Cottonwood Airport','CTW','Cottonwood','US','UNITED STATES',-100,0,0),
    (93,'CVG','Cincinnati No Kentucky International Airport','CVG','Cincinnati','US','UNITED STATES',-5,39.0488,-84.6678),
    (94,'CVN','Clovis Airport','CVN','Clovis','US','UNITED STATES',-6,34.4251,-103.079),
    (95,'CWA','Central Wisconsin Airport','AUW','Wausau','US','UNITED STATES',-6,44.7727,-89.6466),
    (96,'CXL','Calexico International Airport','CXL','Calexico','US','UNITED STATES',-8,32.6695,-115.513),
    (97,'CXO','Montgomery Co Airport','CXO','Conroe','US','UNITED STATES',-6,30.3518,-95.4145),
    (98,'CYS','Cheyenne Airport','CYS','Cheyenne','US','UNITED STATES',-7,41.1557,-104.812),
    (99,'DAB','Daytona Beach Regional Airport','DAB','Daytona Beach','US','UNITED STATES',-5,29.1799,-81.0581),
    (100,'DAY','Dayton International Airport','DAY','Dayton','US','UNITED STATES',-5,39.9024,-84.2194),
    (101,'DCA','Ronald Reagan National Airport','WAS','Washington','US','UNITED STATES',-5,38.8521,-77.0377),
    (102,'DCU','Pyor Airport','DCU','Decatur','US','UNITED STATES',-100,0,0),
    (103,'DEN','Denver International Airport','DEN','Denver','US','UNITED STATES',-7,39.8617,-104.673),
    (104,'DFI','Defiance Memorial Airport','DFI','Defiance','US','UNITED STATES',-100,0,0),
    (105,'DLL','Dillon Airport','DLL','Dillon','US','UNITED STATES',-100,0,0),
    (106,'DMO','Sedalia Memorial Airport','DMO','Sedalia','US','UNITED STATES',-100,0,0),
    (107,'DNL','Daniel Airport','AGS','Augusta','US','UNITED STATES',-4,33.4665,-82.0394),
    (108,'DSI','Destin Airport','DSI','Destin','US','UNITED STATES',-100,0,0),
    (109,'DUC','Halliburton Airport','DUC','Duncan','US','UNITED STATES',-6,34.4713,-97.9599),
    (110,'DVL','Devils Lake Airport','DVL','Devils Lake','US','UNITED STATES',-6,48.1144,-98.9086),
    (111,'DVN','Davenport Airport','DVN','Davenport','US','UNITED STATES',-100,0,0),
    (112,'DVT','Phoenix Deer Valley Airport','PHX','Phoenix','US','UNITED STATES',-7,33.4117,112.457),
    (113,'DWH','David Wayne Hooks Airport','HOU','Houston','US','UNITED STATES',-6,30.0637,-95.5543),
    (114,'DYL','Doylestown Airport','DYL','Doylestown','US','UNITED STATES',-100,0,0),
    (115,'EAA','Eagle Airport','EAA','Eagle','US','UNITED STATES',-9,64.7781,-141.15),
    (116,'EBR','Baton Rouge Downtown Airport','BTR','Baton Rouge','US','UNITED STATES',-100,0,0),
    (117,'ECP','Northwest Florida Beaches International Airport','PFN','Panama City','US','UNITED STATES',-6,30.3417,-85.7973),
    (118,'EED','Needles Airport','EED','Needles','US','UNITED STATES',-100,34.7667,-114.623),
    (119,'EEN','Dilliant Hopkins Airport','EEN','Keene','US','UNITED STATES',-100,0,0),
    (120,'EGV','Eagle River Union Airport','EGV','Eagle River','US','UNITED STATES',-6,45.9323,-89.2683),
    (121,'EHT','Rentschler Airport','EHT','East Hartford','US','UNITED STATES',-100,0,0),
    (122,'ELM','Elmira Corning Regional Airport','ELM','Elmira','US','UNITED STATES',-5,42.1599,-76.8916),
    (123,'ELP','El Paso International Airport','ELP','El Paso','US','UNITED STATES',-7,31.8072,-106.378),
    (124,'EMT','El Monte Airport','EMT','El Monte','US','UNITED STATES',-100,0,0),
    (125,'EOK','Keokuk Airport','EOK','Keokuk','US','UNITED STATES',-100,0,0),
    (126,'ERV','Kerrville Airport','ERV','Kerrville','US','UNITED STATES',-6,29.9767,-99.0855),
    (127,'ESD','Eastsound Orcas Is Airport','ESD','East Sound','US','UNITED STATES',-8,48.7081,-122.911),
    (128,'ESP','Birchwood Pocono Airport','ESP','East Stroudsburg','US','UNITED STATES',-100,0,0),
    (129,'ETB','West Bend Airport','ETB','West Bend','US','UNITED STATES',-100,0,0),
    (130,'EUG','Eugene Airport','EUG','Eugene','US','UNITED STATES',-8,44.1246,-123.212),
    (131,'EVV','Evansville Regional Airport','EVV','Evansville','US','UNITED STATES',-6,38.037,-87.5324),
    (132,'EVW','Evanston Airport','EVW','Evanston','US','UNITED STATES',-100,0,0),
    (133,'EWR','Newark Liberty International Airport','EWR','Newark','US','UNITED STATES',-5,40.6925,-74.1687),
    (134,'EZF','Shannon Airport','MNZ','Manassas','US','UNITED STATES',-100,0,0),
    (135,'FAI','Fairbanks International Airport','FAI','Fairbanks','US','UNITED STATES',-9,64.8151,-147.856),
    (136,'FAJ','Fajardo Airport','FAJ','Fajardo','US','UNITED STATES',-4,18.3089,-65.6619),
    (137,'FAR','Hector Airport','FAR','Fargo','US','UNITED STATES',-6,46.9207,-96.8158),
    (138,'FCH','Fresno Chandler Airport','FAT','Fresno','US','UNITED STATES',-100,0,0),
    (139,'FCM','Flying Cloud Airport','MSP','Minneapolis','US','UNITED STATES',-100,0,0),
    (140,'FKL','Chess Lamberton Airport','FKL','Franklin','US','UNITED STATES',-5,41.3779,-79.8604),
    (141,'FLG','Flagstaff Airport','FLG','Flagstaff','US','UNITED STATES',-7,35.1403,-111.669),
    (142,'FLL','Ft Lauderdale Hollywood International Airport','FLL','Ft Lauderdale','US','UNITED STATES',-5,26.0726,-80.1527),
    (143,'FLP','Flippin Airport','FLP','Flippin','US','UNITED STATES',-100,0,0),
    (144,'FMN','Four Corners Regional Airport','FMN','Farmington','US','UNITED STATES',-7,36.7412,-108.23),
    (145,'FNT','Bishop International Airport','FNT','Flint','US','UNITED STATES',-5,42.9654,-83.7436),
    (146,'FOB','Fort Bragg Airport','FOB','Fort Bragg','US','UNITED STATES',-100,0,0),
    (147,'FRD','Friday Harbor Airport','FRD','Friday Harbor','US','UNITED STATES',-8,48.5219,-123.024),
    (148,'FRG','Republic Airport','FRG','Farmingdale','US','UNITED STATES',-100,40.7288,-73.4134),
    (149,'GAL','Galena Airport','GAL','Galena','US','UNITED STATES',-9,64.7362,-156.937),
    (150,'GBG','Galesburg Airport','GBG','Galesburg','US','UNITED STATES',-100,0,0),
    (151,'GBR','Great Barrington Airport','GBR','Great Barrington','US','UNITED STATES',-100,0,0),
    (152,'GCN','Grand Canyon Natl Park Airport','GCN','Grand Canyon','US','UNITED STATES',-7,35.9524,-112.147),
    (153,'GEG','Spokane International Airport','GEG','Spokane','US','UNITED STATES',-8,47.6199,-117.534),
    (154,'GGE','George Town Airport','MYR','Myrtle Beach','US','UNITED STATES',-100,0,0),
    (155,'GKT','Gatlinburg Airport','GKT','Gatlinburg','US','UNITED STATES',-100,0,0),
    (156,'GLR','Otsego Airport','GLR','Gaylord','US','UNITED STATES',-100,0,0),
    (157,'GMU','Greenville Downtown Airport','GSP','Greenville','US','UNITED STATES',-100,34.8481,-82.35),
    (158,'GON','Groton New London Airport','GON','New London','US','UNITED STATES',-5,41.3301,-72.0451),
    (159,'GPT','Biloxi Regional Airport','GPT','Gulfport','US','UNITED STATES',-6,30.4073,-89.0701),
    (160,'GSP','Greenville Spartanburg Airport','GSP','Greenville','US','UNITED STATES',-5,34.8956,-82.2189),
    (161,'GST','Gustavus Airport','GST','Glacier Bay','US','UNITED STATES',-9,58.4253,-135.707),
    (162,'GTF','Great Falls International Airport','GTF','Great Falls','US','UNITED STATES',-7,47.482,-111.371),
    (163,'GTR','Golden Airport','UBS','Columbus','US','UNITED STATES',-6,33.4503,-88.5914),
    (164,'GTY','Gettysburg Airport','GTY','Gettysburg','US','UNITED STATES',-100,0,0),
    (165,'GUF','Edwards Airport','GUF','Gulf Shores','US','UNITED STATES',-100,0,0),
    (166,'GWO','Leflore Airport','GWO','Greenwood','US','UNITED STATES',-6,33.4943,-90.0847),
    (167,'GWS','Glenwood Springs Airport','GWS','Glenwood Springs','US','UNITED STATES',-100,0,0),
    (168,'GYY','Gary International Airport','GYY','Gary','US','UNITED STATES',-6,41.6163,-87.4128),
    (169,'HDN','Hayden Airport','HDN','Hayden','US','UNITED STATES',-7,40.4812,-107.218),
    (170,'HFD','Brainard Airport','HFD','Hartford','US','UNITED STATES',-5,41.7367,-72.6494),
    (171,'HHR','Hawthorne Airport','HHR','Hawthorne','US','UNITED STATES',-8,33.9228,-118.335),
    (172,'HIB','Hibbing Chisolm Airport','HIB','Hibbing','US','UNITED STATES',-6,47.3866,-92.839),
    (173,'HIE','Mt washington Regional Airport','HIE','Whitefield','US','UNITED STATES',-100,0,0),
    (174,'HIO','Portland Hillsboro Airport','HIO','Hillsboro','US','UNITED STATES',-8,45.5404,-122.95),
    (175,'HKB','Healy Lake Airport','HKB','Healy Lake','US','UNITED STATES',-9,63.8675,-148.969),
    (176,'HOP','Hopkinsville Christian Country Airport','HOP','Hopkinsville','US','UNITED STATES',-6,36.6686,-87.4962),
    (177,'HOU','Houston Hobby Airport','HOU','Houston','US','UNITED STATES',-6,29.6454,-95.2789),
    (178,'HPV','Princeville Airport','HPV','Princeville','US','UNITED STATES',-100,0,0),
    (179,'HPY','Baytown Airport','HPY','Baytown','US','UNITED STATES',-100,0,0),
    (180,'HRL','Rio Grande Valley International Airport','HRL','Harlingen','US','UNITED STATES',-6,26.2285,-97.6544),
    (181,'HSH','Henderson Sky Harbor Airport','LAS','Las Vegas','US','UNITED STATES',-8,35.9728,-115.134),
    (182,'HSL','Huslia Airport','HSL','Huslia','US','UNITED STATES',-9,65.6978,-156.351),
    (183,'HSV','Huntsville International Airport','HSV','Huntsville','US','UNITED STATES',-6,34.6372,-86.7751),
    (184,'HTO','East Hampton Airport','HTO','East Hampton','US','UNITED STATES',-100,0,0),
    (185,'HTS','Tri State Milton Airport','HTS','Huntington','US','UNITED STATES',-5,38.3667,-82.558),
    (186,'HTV','Huntsville Airport','HTV','Huntsville','US','UNITED STATES',-100,0,0),
    (187,'HUC','Humacao Airport','HUC','Humacao','US','UNITED STATES',-100,0,0),
    (188,'HUM','Terrebonne Airport','HUM','Houma','US','UNITED STATES',-100,0,0),
    (189,'HVE','Intermediate Airport','HVE','Hanksville','US','UNITED STATES',-100,0,0),
    (190,'HVN','Tweed New Haven Airport','HVN','New Haven','US','UNITED STATES',-5,41.2637,-72.8868),
    (191,'IAG','Niagara Falls International Airport','IAG','Niagara Falls','US','UNITED STATES',-5,43.1073,-78.9462),
    (192,'ICT','Mid Continent Airport','ICT','Wichita','US','UNITED STATES',-6,37.6499,-97.4331),
    (193,'IFP','Laughlin Bullhead International Airport','IFP','Bullhead City','US','UNITED STATES',-7,35.1574,-114.56),
    (194,'IKK','Greater Kankakee Airport','IKK','Kankakee','US','UNITED STATES',-6,41.0714,-87.8463),
    (195,'IMT','Ford Airport','IMT','Iron Mountain','US','UNITED STATES',-5,45.8184,-88.1146),
    (196,'IND','Indianapolis International Airport','IND','Indianapolis','US','UNITED STATES',-5,39.7173,-86.2944),
    (197,'INL','International Falls Airport','INL','International Falls','US','UNITED STATES',-6,48.5662,-93.4031),
    (198,'INT','Smith Reynolds Airport','INT','Winston-Salem','US','UNITED STATES',-5,36.1337,-80.222),
    (199,'ISP','Long Island Macarthur Airport','ISP','Islip','US','UNITED STATES',-5,40.7952,-73.1002),
    (200,'ISS','Wiscasset Airport','ISS','Wiscasset','US','UNITED STATES',-100,0,0),
    (201,'IWD','Ironwood Airport','IWD','Ironwood','US','UNITED STATES',-6,46.5275,-90.1314),
    (202,'JAC','Jackson Hole Airport','JAC','Jackson','US','UNITED STATES',-7,43.6073,-110.738),
    (203,'JAN','Jackson Evers International Airport','JAN','Jackson','US','UNITED STATES',-6,32.3112,-90.0759),
    (204,'JAX','Jacksonville International Airport','JAX','Jacksonville','US','UNITED STATES',-5,30.4941,-81.6879),
    (205,'JCI','Johnson Industrial Airport','MKC','Kansas City','US','UNITED STATES',-6,38.8309,-94.8903),
    (206,'JHM','Kapalua Airport','JHM','Kapalua','US','UNITED STATES',-10,20.9629,-156.673),
    (207,'JMS','Jamestown Airport','JMS','Jamestown','US','UNITED STATES',-6,46.9297,-98.6782),
    (208,'JNU','Juneau Airport','JNU','Juneau','US','UNITED STATES',-9,58.355,-134.576),
    (209,'JOT','Joliet Park District Airport','JOT','Joliet','US','UNITED STATES',-100,41.5178,-88.1756),
    (210,'JST','Johnstown Cambria Airport','JST','Johnstown','US','UNITED STATES',-5,40.3161,-78.8339),
    (211,'KAE','Kake Airport','KAE','Kake','US','UNITED STATES',-9,56.9731,-133.946),
    (212,'KIC','Mesa Del Rey Airport','KIC','King City','US','UNITED STATES',-100,0,0),
    (213,'KKT','Kentland Airport','KKT','Kentland','US','UNITED STATES',-100,0,0),
    (214,'KLS','Kelso Longview Regional Airport','KLS','Kelso','US','UNITED STATES',-8,46.118,-122.898),
    (215,'KLW','Klawock Airport','KLW','Klawock','US','UNITED STATES',-9,55.5792,-133.076),
    (216,'KOA','Keahole Airport','KOA','Kona','US','UNITED STATES',-10,19.7388,-156.046),
    (217,'KPD','King Of Prussia Airport','KPD','King Of Prussia','US','UNITED STATES',-100,0,0),
    (218,'KTN','Ketchikan International Airport','KTN','Ketchikan','US','UNITED STATES',-9,55.3556,-131.714),
    (219,'KTS','Brevig Mission Airport','KTS','Brevig Mission','US','UNITED STATES',-9,65.3314,-166.466),
    (220,'KYL','Port Largo Airport','KYL','Key Largo','US','UNITED STATES',-100,0,0),
    (221,'LAA','Lamar Airport','LAA','Lamar','US','UNITED STATES',-7,38.0697,-102.688),
    (222,'LAF','Lafayette Airport','LAF','Lafayette','US','UNITED STATES',-5,40.4123,-86.9369),
    (223,'LAL','Lakeland Airport','LAL','Lakeland','US','UNITED STATES',-4,27.9889,-82.0186),
    (224,'LAN','Lansing Airport','LAN','Lansing','US','UNITED STATES',-5,42.7787,-84.5874),
    (225,'LAX','Los Angeles International Airport','LAX','Los Angeles','US','UNITED STATES',-8,33.9425,-118.408),
    (226,'LBB','Lubbock Preston Smith International Airport','LBB','Lubbock','US','UNITED STATES',-6,33.6636,-101.823),
    (227,'LBT','Lumberton Airport','LBT','Lumberton','US','UNITED STATES',-100,0,0),
    (228,'LCK','Rickenbacker International Airport','CMH','Columbus','US','UNITED STATES',-5,39.8138,-82.9278),
    (229,'LEW','Auburn Lewiston Airport','LEW','Lewiston','US','UNITED STATES',-100,0,0),
    (230,'LGC','Calloway Airport','LGC','La Grange','US','UNITED STATES',-4,33.0089,-85.0726),
    (231,'LGU','Logan Airport','LGU','Logan','US','UNITED STATES',-7,41.791,-111.852),
    (232,'LJN','Lake Jackson Airport','LJN','Lake Jackson','US','UNITED STATES',-100,0,0),
    (233,'LLY','Burlington Country Airport','LLY','Mount Holly','US','UNITED STATES',-100,0,0),
    (234,'LNS','Lancaster Airport','LNS','Lancaster','US','UNITED STATES',-5,40.1217,-76.2961),
    (235,'LNY','Lanai Airport','LNY','Lanai','US','UNITED STATES',-10,20.7856,-156.951),
    (236,'LOZ','Corbin London Airport','LOZ','London','US','UNITED STATES',-100,37.087,-84.0773),
    (237,'LPC','Lompoc Airport','SMX','Santa Maria','US','UNITED STATES',-100,0,0),
    (238,'LPO','La Porte Airport','LPO','La Porte','US','UNITED STATES',-100,0,0),
    (239,'LPS','Lopez Island Airport','LPS','Lopez Island','US','UNITED STATES',-8,48.4839,-122.938),
    (240,'LRU','Las Cruces Crawford Airport','LRU','Las Cruces','US','UNITED STATES',-7,32.2894,-106.922),
    (241,'LSN','Los Banos Airport','LSN','Los Banos','US','UNITED STATES',-100,0,0),
    (242,'LVK','Bron Airport','LVK','Livermore','US','UNITED STATES',-8,37.4136,-121.491),
    (243,'LVS','Las Vegas Airport','LVS','Las Vegas','US','UNITED STATES',-7,35.6542,-105.142),
    (244,'LWB','Greenbrier Valley Airport','LWB','Lewisburg','US','UNITED STATES',-5,37.8583,-80.3994),
    (245,'LWM','Lawrence Airport','LWM','Lawrence','US','UNITED STATES',-4,42.7172,-71.1234),
    (246,'LWS','Lewiston Nez Pierce Airport','LWS','Lewiston','US','UNITED STATES',-8,46.3745,-117.015),
    (247,'MAF','Midland International Airport','MAF','Midland','US','UNITED STATES',-6,31.9425,-102.202),
    (248,'MAZ','Eugenio M De Hostos Airport','MAZ','Mayaguez','US','UNITED STATES',-4,18.2557,-67.1485),
    (249,'MBL','Manistee Airport','MBL','Manistee','US','UNITED STATES',-5,44.2725,-86.2469),
    (250,'MBS','Saginaw Airport','MBS','Saginaw','US','UNITED STATES',-5,43.5329,-84.0796),
    (251,'MCO','Orlando International Airport','ORL','Orlando','US','UNITED STATES',-5,28.4294,-81.309),
    (252,'MDH','Southern Illinois Airport','MDH','Carbondale','US','UNITED STATES',-100,0,0),
    (253,'MFH','Mesquite Airport','MFH','Mesquite','US','UNITED STATES',-100,0,0),
    (254,'MGR','Moultrie Airport','MGR','Moultrie','US','UNITED STATES',-4,31.0849,-83.8033),
    (255,'MHT','Manchester Airport','MHT','Manchester','US','UNITED STATES',-5,42.9326,-71.4357),
    (256,'MIC','Crystal Airport','MSP','Minneapolis','US','UNITED STATES',-100,0,0),
    (257,'MIQ','Millard Airport','OMA','Omaha','US','UNITED STATES',-100,0,0),
    (258,'MIV','Millville Airport','MIV','Millville','US','UNITED STATES',-5,39.3678,-75.0722),
    (259,'MKE','General Mitchell International Airport','MKE','Milwaukee','US','UNITED STATES',-6,42.9472,-87.8966),
    (260,'MKK','Molokai Airport','MKK','Hoolehua','US','UNITED STATES',-10,21.1529,-157.096),
    (261,'MLT','Millinocket Airport','MLT','Millinocket','US','UNITED STATES',-5,45.6478,-68.6856),
    (262,'MMU','Morristown Airport','MMU','Morristown','US','UNITED STATES',-5,40.7994,-74.4149),
    (263,'MNZ','Manassas Airport','MNZ','Manassas','US','UNITED STATES',-100,0,0),
    (264,'MOU','Mountain Village Airport','MOU','Mountain Village','US','UNITED STATES',-9,62.0954,-163.682),
    (265,'MPR','McPherson Airport','MPR','McPherson','US','UNITED STATES',-100,0,0),
    (266,'MPV','E F Knapp Airport','MPV','Montpelier','US','UNITED STATES',-5,44.2035,-72.5623),
    (267,'MQT','Sawyer International Airport','MQT','Marquette','US','UNITED STATES',-5,46.3536,-87.3953),
    (268,'MQY','Smyrna Airport','MQY','Smyrna','US','UNITED STATES',-100,36.009,-86.52),
    (269,'MRB','Martinsburgh Regional Airport','MRB','Martinsburg','US','UNITED STATES',-5,39.2407,-77.591),
    (270,'MRC','Maury Country Airport','MRC','Columbia','US','UNITED STATES',-100,0,0),
    (271,'MSL','Muscle Shoals Airport','MSL','Muscle Shoals','US','UNITED STATES',-6,34.7453,-87.6102),
    (272,'MSY','Louis Armstrong International Airport','MSY','New Orleans','US','UNITED STATES',-6,29.9934,-90.258),
    (273,'MTH','Marathon Airport','MTH','Marathon','US','UNITED STATES',-5,24.7261,-81.0514),
    (274,'MTP','Sky Portal Airport','MTP','Montauk','US','UNITED STATES',-100,41.0765,-71.9208),
    (275,'MUE','Waimea Airport','MUE','Kamuela','US','UNITED STATES',-10,20.0013,-155.668),
    (276,'MVN','Mt Vernon Outland Airport','MVN','Mt Vernon','US','UNITED STATES',-100,0,0),
    (277,'MXY','McCarthy Airport','MXY','Mccarthy','US','UNITED STATES',-8,61.4371,-142.903),
    (278,'MYL','Mccall Airport','MYL','Mccall','US','UNITED STATES',-7,44.8897,-116.101),
    (279,'NEW','New Lakefront Airport','MSY','New Orleans','US','UNITED STATES',-100,30.0424,-90.0283),
    (280,'NOT','Novato Airport','NOT','Novato','US','UNITED STATES',-100,0,0),
    (281,'NPT','Newport State Airport','NPT','Newport','US','UNITED STATES',-100,0,0),
    (282,'NQI','Naval Air Station Airport','NQI','Kingsville','US','UNITED STATES',-6,27.5072,-97.8097),
    (283,'NUL','Nulato Airport','NUL','Nulato','US','UNITED STATES',-9,64.7294,-158.074),
    (284,'OAK','Metro Oakland International Airport','OAK','Oakland','US','UNITED STATES',-8,37.7213,-122.221),
    (285,'OCA','Ocean Reef Airport','OCA','Ocean Reef','US','UNITED STATES',-5,25.3254,-80.2748),
    (286,'OEA','Oneal Airport','OEA','Vincennes','US','UNITED STATES',-100,0,0),
    (287,'OGG','Kahului Airport','OGG','Maui','US','UNITED STATES',-10,20.8986,-156.43),
    (288,'OJC','Johnson Executive Airport','KCK','Kansas City','US','UNITED STATES',-100,0,0),
    (289,'OKC','Will Rogers World Airport','OKC','Oklahoma City','US','UNITED STATES',-6,35.3931,-97.6007),
    (290,'OLM','Olympia Airport','OLM','Olympia','US','UNITED STATES',-7,46.9694,-122.903),
    (291,'OLS','International Airport','OLS','Nogales','US','UNITED STATES',-7,31.4177,-110.848),
    (292,'OLU','Columbus Airport','OLU','Columbus','US','UNITED STATES',-100,0,0),
    (293,'OME','Nome Airport','OME','Nome','US','UNITED STATES',-9,64.5122,-165.445),
    (294,'OPF','Opa Locka Airport','MIA','Miami','US','UNITED STATES',-5,25.907,-80.2784),
    (295,'ORD','O''Hare International Airport','CHI','Chicago','US','UNITED STATES',-6,41.9786,-87.9048),
    (296,'ORF','Norfolk International Airport','ORF','Norfolk','US','UNITED STATES',-5,36.8946,-76.2012),
    (297,'ORH','Worcester Airport','ORH','Worcester','US','UNITED STATES',-5,42.2673,-71.8757),
    (298,'ORL','Herndon Airport','ORL','Orlando','US','UNITED STATES',-5,28.5455,-81.3329),
    (299,'OTG','Worthington Airport','OTG','Worthington','US','UNITED STATES',-100,0,0),
    (300,'OTM','Industrial Airport','OTM','Ottumwa','US','UNITED STATES',-100,41.1066,-92.4479),
    (301,'OTS','Ancortes Airport','OTS','Ancortes','US','UNITED STATES',-8,48.4989,-122.662),
    (302,'OWA','Owatonna Airport','OWA','Owatonna','US','UNITED STATES',-100,0,0),
    (303,'OWD','Norwood Ma Airport','OWD','Norwood','US','UNITED STATES',-4,42.1905,-71.1729),
    (304,'OXC','Waterbury Oxford Airport','OXC','Oxford','US','UNITED STATES',-4,41.4786,-73.1352),
    (305,'OXR','Oxnard Ventura Airport','OXR','Oxnard','US','UNITED STATES',-8,34.2008,-119.207),
    (306,'PAO','Palo Alto Airport','PAO','Palo Alto','US','UNITED STATES',-100,0,0),
    (307,'PBF','Pine Bluff Airport','PBF','Pine Bluff','US','UNITED STATES',-6,34.1731,-91.9356),
    (308,'PBG','Plattsburgh International Airport','PBG','Plattsburgh','US','UNITED STATES',-5,44.6509,-73.4681),
    (309,'PBI','Palm Beach International Airport','PBI','West Palm Beach','US','UNITED STATES',-5,26.6832,-80.0956),
    (310,'PCT','Princeton Airport','PCT','Princeton','US','UNITED STATES',-100,0,0),
    (311,'PDX','Portland International Airport','PDX','Portland','US','UNITED STATES',-8,45.5887,-122.598),
    (312,'PGA','Page Airport','PGA','Page','US','UNITED STATES',-7,36.9261,-111.448),
    (313,'PGV','Pitt Greenville Airport','PGV','Greenville','US','UNITED STATES',-5,35.6353,-77.3853),
    (314,'PHF','Williamsburg International Airport','PHF','Newport News','US','UNITED STATES',-5,37.1319,-76.493),
    (315,'PHL','Philadelphia International Airport','PHL','Philadelphia','US','UNITED STATES',-5,39.8719,-75.2411),
    (316,'PHX','Sky Harbor International Airport','PHX','Phoenix','US','UNITED STATES',-7,33.4343,-112.012),
    (317,'PIA','Greater Peoria Airport','PIA','Peoria','US','UNITED STATES',-6,40.6642,-89.6933),
    (318,'PIB','Hattiesburg Laurel Regional Airport','LUL','Laurel','US','UNITED STATES',-6,31.4671,-89.3371),
    (319,'PIE','St Petersburg Clearwater Airport','TPA','Tampa','US','UNITED STATES',-5,27.9102,-82.6874),
    (320,'PIT','Pittsburgh International Airport','PIT','Pittsburgh','US','UNITED STATES',-5,40.4915,-80.2329),
    (321,'PIZ','Dew Station Airport','PIZ','Point Lay','US','UNITED STATES',-9,69.7329,-163.005),
    (322,'PJB','Payson Airport','PJB','Payson','US','UNITED STATES',-100,0,0),
    (323,'PLK','M Graham Clark Airport','PLK','Point Lookout','US','UNITED STATES',-100,0,0),
    (324,'PMD','La Palmdale Regional Airport','PMD','Palmdale','US','UNITED STATES',-8,34.6294,-118.085),
    (325,'POE','Fort Polk Airport','POE','Fort Polk','US','UNITED STATES',-6,31.0448,-93.1917),
    (326,'PPM','Pompano Beach Airport','PPM','Pompano Beach','US','UNITED STATES',-100,0,0),
    (327,'PSB','Midstate Airport','PSB','Philipsburg','US','UNITED STATES',-100,0,0),
    (328,'PSC','Tri Cities Airport','PSC','Pasco','US','UNITED STATES',-8,46.2647,-119.119),
    (329,'PSE','Mercedita Airport','PSE','Ponce','US','UNITED STATES',-4,18.0083,-66.563),
    (330,'PSK','New River Valley Airport','PSK','Dublin','US','UNITED STATES',-100,0,0),
    (331,'PSM','Portsmouth Pease International Airport','PSM','Portsmouth','US','UNITED STATES',-5,43.0779,-70.8233),
    (332,'PTK','Oakland Pontiac Airport','PTK','Pontiac','US','UNITED STATES',-100,42.6655,-83.4201),
    (333,'PUB','Pueblo Airport','PUB','Pueblo','US','UNITED STATES',-7,38.2891,-104.497),
    (334,'PUW','Pullman Moscow Airport','PUW','Pullman','US','UNITED STATES',-8,46.7439,-117.11),
    (335,'PVD','T F Green St Airport','PVD','Providence','US','UNITED STATES',-5,41.7326,-71.4204),
    (336,'PVF','Placerville Airport','PVF','Placerville','US','UNITED STATES',-100,0,0),
    (337,'PVU','Provo Airport','PVU','Provo','US','UNITED STATES',-6,40.2181,-111.722),
    (338,'PVZ','Casement Airport','PVZ','Painesville','US','UNITED STATES',-100,0,0),
    (339,'PWA','Wiley Post Airport','OKC','Oklahoma City','US','UNITED STATES',-100,35.5342,-97.6471),
    (340,'PWK','Pal Waukee Airport','CHI','Chicago','US','UNITED STATES',-6,42.1143,-87.9015),
    (341,'PYM','Plymouth Airport','PYM','Plymouth','US','UNITED STATES',-4,41.909,-70.7288),
    (342,'RAC','Horlick Airport','RAC','Racine','US','UNITED STATES',-100,0,0),
    (343,'RCE','Roche Harbor Airport','RCE','Roche Harbor','US','UNITED STATES',-8,48.6081,-123.16),
    (344,'RDU','Raleigh Durham International Airport','RDU','Raleigh','US','UNITED STATES',-5,35.8776,-78.7875),
    (345,'RFD','Chicago Rockford Airport','CHI','Chicago','US','UNITED STATES',-6,42.1954,-89.0972),
    (346,'RIC','Richmond International Airport','RIC','Richmond','US','UNITED STATES',-5,37.5052,-77.3197),
    (347,'RKC','Yreka Airport','RKC','Yreka','US','UNITED STATES',-100,0,0),
    (348,'RKD','Rockland Airport','RKD','Rockland','US','UNITED STATES',-5,44.0601,-69.0992),
    (349,'RLA','National Airport','RLA','Rolla','US','UNITED STATES',-100,38.1274,-91.7695),
    (350,'RLD','Richland Airport','RLD','Richland','US','UNITED STATES',-100,0,0),
    (351,'RMG','Richard B Russell Airport','RMG','Rome','US','UNITED STATES',-4,34.3508,-85.1587),
    (352,'RNO','Reno Tahoe International Airport','RNO','Reno','US','UNITED STATES',-8,39.4991,-119.768),
    (353,'RNT','Renton Airport','RNT','Renton','US','UNITED STATES',-100,47.4933,-122.215),
    (354,'ROA','Roanoke Regional Airport','ROA','Roanoke','US','UNITED STATES',-5,37.3255,-79.9754),
    (355,'ROG','Rogers Airport','ROG','Rogers','US','UNITED STATES',-100,0,0),
    (356,'RSN','Ruston Regional Airport','RSN','Ruston','US','UNITED STATES',-100,0,0),
    (357,'RSW','Regional Southwest Airport','FMY','Fort Myers','US','UNITED STATES',-5,26.5362,-81.7552),
    (358,'RUT','Rutland Airport','RUT','Rutland','US','UNITED STATES',-5,43.5294,-72.9496),
    (359,'RVR','Green River Airport','RVR','Green River','US','UNITED STATES',-4,18.2453,-65.6433),
    (360,'RWI','Wilson Airport','RWI','Rocky Mount','US','UNITED STATES',-5,35.8563,-77.8919),
    (361,'RZH','Quartz Hill Airport','WJF','Lancaster','US','UNITED STATES',-100,0,0),
    (362,'SAA','Lar Shively Airport','LAR','Laramie','US','UNITED STATES',-6,41.4449,-106.824),
    (363,'SAC','Sacramento Executive Airport','SAC','Sacramento','US','UNITED STATES',-8,38.5125,-121.493),
    (364,'SAN','Lindbergh International Airport','SAN','San Diego','US','UNITED STATES',-8,32.7336,-117.19),
    (365,'SAR','Sparta Community Airport','SAR','Sparta','US','UNITED STATES',-100,38.1489,-89.6987),
    (366,'SAV','Savannah International Airport','SAV','Savannah','US','UNITED STATES',-5,32.1276,-81.2021),
    (367,'SBA','Santa Barbara Airport','SBA','Santa Barbara','US','UNITED STATES',-8,34.4262,-119.84),
    (368,'SBD','San Bernardino International Airport','SBT','San Bernardino','US','UNITED STATES',-8,34.0954,-117.235),
    (369,'SBM','Sheboygan Airport','SBM','Sheboygan','US','UNITED STATES',-100,0,0),
    (370,'SBN','Michiana Regional Airport','SBN','South Bend','US','UNITED STATES',-5,41.7087,-86.3173),
    (371,'SBS','Steamboat Airport','SBS','Steamboat Springs','US','UNITED STATES',-6,40.5163,-106.866),
    (372,'SBY','Wicomico Regional Airport','SBY','Salisbury Ocean City','US','UNITED STATES',-5,38.3405,-75.5103),
    (373,'SCC','Prudhoe Bay Deadhorse Airport','SCC','Prudhoe Bay Deadhorse','US','UNITED STATES',-9,70.1947,-148.465),
    (374,'SCK','Stockton Metro Airport','SCK','Stockton','US','UNITED STATES',-8,37.8942,-121.238),
    (375,'SDF','Louisville International Airport','SDF','Louisville','US','UNITED STATES',-5,38.1741,-85.7365),
    (376,'SDP','Sand Point Airport','SDP','Sand Point','US','UNITED STATES',-9,55.315,-160.523),
    (377,'SDX','Sedona Airport','SDX','Sedona','US','UNITED STATES',-7,34.8486,-111.788),
    (378,'SEA','Seattle Tacoma International Airport','SEA','Seattle','US','UNITED STATES',-8,47.449,-122.309),
    (379,'SEF','Air Terminal Airport','SEF','Sebring','US','UNITED STATES',-100,0,0),
    (380,'SFB','Orlando Sanford Airport','SFB','Sanford','US','UNITED STATES',-5,28.7776,-81.2375),
    (381,'SFM','Sanford Regional Airport','SFM','Sanford','US','UNITED STATES',-5,43.3938,-70.708),
    (382,'SFO','San Francisco International Airport','SFO','San Francisco','US','UNITED STATES',-8,37.619,-122.375),
    (383,'SHD','Shenandoah Valley Airport','SHD','Staunton','US','UNITED STATES',-5,38.2639,-78.8964),
    (384,'SHV','Shreveport Regional Airport','SHV','Shreveport','US','UNITED STATES',-6,32.4466,-93.8256),
    (385,'SIG','Isla Grande Airport','SIG','Isla Grande','US','UNITED STATES',-4,18.4568,-66.0981),
    (386,'SIT','Sitka Airport','SIT','Sitka','US','UNITED STATES',-9,57.0471,-135.362),
    (387,'SJC','San Jose International Airport','SJC','San Jose','US','UNITED STATES',-8,37.3626,-121.929),
    (388,'SJF','St John Island Airport','SJF','St John','US','UNITED STATES',-100,0,0),
    (389,'SKY','Griffing Sandusky Airport','SKY','Sandusky','US','UNITED STATES',-5,41.4334,-82.6523),
    (390,'SLK','Adirondack Airport','SLK','Saranac Lake','US','UNITED STATES',-5,44.3853,-74.2062),
    (391,'SLT','Salida Airport','SLT','Salida','US','UNITED STATES',-100,0,0),
    (392,'SMX','Santa Maria Public Airport','SMX','Santa Maria','US','UNITED STATES',-8,34.8989,-120.457),
    (393,'SNA','John Wayne Airport','SNA','Santa Ana','US','UNITED STATES',-8,33.6757,-117.868),
    (394,'SNL','Shawnee Airport','SNL','Shawnee','US','UNITED STATES',-100,0,0),
    (395,'SNS','Salinas Airport','SNS','Salinas','US','UNITED STATES',-100,36.6628,-121.606),
    (396,'SOP','Pinehurst Airport','SOP','Pinehurst','US','UNITED STATES',-100,35.2374,-79.3912),
    (397,'SOV','Seldovia Airport','SOV','Seldovia','US','UNITED STATES',-100,59.4424,-151.704),
    (398,'SOW','Show Low Airport','SOW','Show Low','US','UNITED STATES',-7,34.2656,-110.006),
    (399,'SPG','Whitted Airport','SPG','St Petersburg','US','UNITED STATES',-5,27.7651,-82.627),
    (400,'SPI','Capital Airport','SPI','Springfield','US','UNITED STATES',-6,39.8441,-89.6779),
    (401,'SQA','Santa Ynez Airport','SQA','Santa Ynez','US','UNITED STATES',-100,0,0),
    (402,'SQL','San Carlos Airport','SQL','San Carlos','US','UNITED STATES',-8,37.5119,-122.249),
    (403,'SRQ','Sarasota Bradenton Airport','SRQ','Sarasota','US','UNITED STATES',-5,27.3954,-82.5544),
    (404,'SRU','Skypark Airport','SRU','Santa Cruz','US','UNITED STATES',-100,0,0),
    (405,'SSI','McKinnon Airport','SSI','St Simons Is','US','UNITED STATES',-100,31.1518,-81.3913),
    (406,'STJ','Rosecrans Memorial Airport','STJ','St Joseph','US','UNITED STATES',-6,39.7719,-94.9097),
    (407,'STP','Downtown St Paul Airport','STP','St Paul','US','UNITED STATES',0,51.53,-0.125),
    (408,'STT','Cyril E King Airport','STT','St Thomas','US','UNITED STATES',-4,18.3373,-64.9734),
    (409,'STX','Alexander Hamilton Airport','STX','St Croix','US','UNITED STATES',-4,17.7019,-64.7986),
    (410,'SUE','Door Country Airport','SUE','Sturgeon Bay','US','UNITED STATES',-6,44.8437,-87.4216),
    (411,'SUS','Spirit Of St Louis Airport','STL','St Louis','US','UNITED STATES',-7,38.6621,-90.652),
    (412,'SUW','Richard I Bong Airport','SUW','Superior','US','UNITED STATES',-100,0,0),
    (413,'SUX','Sioux Gateway Airport','SUX','Sioux City','US','UNITED STATES',-6,42.4026,-96.3844),
    (414,'SWD','Seward Airport','SWD','Seward','US','UNITED STATES',-8,60.1269,-149.419),
    (415,'SWF','Stewart Airport','SWF','Newburgh','US','UNITED STATES',-5,41.5041,-74.1048),
    (416,'SXC','Catalina Airport','AVX','Catalina Island','US','UNITED STATES',-100,0,0),
    (417,'SZP','Santa Paula Airport','SZP','Santa Paula','US','UNITED STATES',-100,0,0),
    (418,'TAD','Las Animas Airport','PUB','Pueblo','US','UNITED STATES',-100,0,0),
    (419,'TAL','Ralph Calhoun Airport','TAL','Tanana','US','UNITED STATES',-9,65.1796,-152.076),
    (420,'TCC','Tucumcari Airport','LVS','Las Vegas','US','UNITED STATES',-7,35.1828,-103.603),
    (421,'TCL','Van De Graff Airport','TCL','Tuscaloosa','US','UNITED STATES',-6,33.2206,-87.6114),
    (422,'TDW','Tradewind Airport','AMA','Amarillo','US','UNITED STATES',-100,0,0),
    (423,'TEB','Teterboro Airport','TEB','Teterboro','US','UNITED STATES',-5,40.8501,-74.0608),
    (424,'THA','Northern Airport','THA','Tullahoma','US','UNITED STATES',-100,0,0),
    (425,'THV','York Airport','THV','York','US','UNITED STATES',-100,0,0),
    (426,'TIW','Tacoma Industrial Airport','TIW','Tacoma','US','UNITED STATES',-100,47.2679,-122.578),
    (427,'TIX','Space Center Executive Airport','TIX','Titusville','US','UNITED STATES',-100,28.5148,-80.7992),
    (428,'TKF','Truckee Airport','TKF','Truckee','US','UNITED STATES',-100,39.32,-120.14),
    (429,'TKJ','Tok Airport','TKJ','Tok Ak','US','UNITED STATES',-100,63.2955,-143.006),
    (430,'TMA','Henry Tift Myers Airport','TMA','Tifton','US','UNITED STATES',-5,31.429,-83.4885),
    (431,'TMB','Tamiami Airport','MIA','Miami','US','UNITED STATES',-5,25.6479,-80.4328),
    (432,'TOG','Togiak Village Airport','TOG','Togiak','US','UNITED STATES',-9,59.0528,-160.397),
    (433,'TOL','Toledo Express Airport','TOL','Toledo','US','UNITED STATES',-5,41.5868,-83.8078),
    (434,'TOP','Phillip Billard Airport','TOP','Topeka','US','UNITED STATES',-6,39.0687,-95.6225),
    (435,'TPF','Peter O Knight Airport','TPA','Tampa','US','UNITED STATES',-100,0,0),
    (436,'TPH','Tonopah Airport','TPH','Tonopah','US','UNITED STATES',-100,38.0601,-117.087),
    (437,'TPL','Temple Airport','TPL','Temple','US','UNITED STATES',-6,31.1525,-97.4078),
    (438,'TRX','Trenton Airport','TTN','Trenton','US','UNITED STATES',-100,0,0),
    (439,'TSM','Taos Airport','TSM','Taos','US','UNITED STATES',-100,0,0),
    (440,'TTD','Troutdale Airport','TTD','Troutdale','US','UNITED STATES',-8,45.5494,-122.401),
    (441,'TTN','Trenton Mercer Airport','TTN','Trenton','US','UNITED STATES',-5,40.2767,-74.8135),
    (442,'TUS','Tucson International Airport','TUS','Tucson','US','UNITED STATES',-7,32.1161,-110.941),
    (443,'TVC','Cherry Capital Airport','TVC','Traverse City','US','UNITED STATES',-5,44.7414,-85.5822),
    (444,'TVL','Lake Tahoe Airport','TVL','Lake Tahoe','US','UNITED STATES',-8,38.8939,-119.995),
    (445,'TWA','Twin Hills Airport','TWA','Twin Hills','US','UNITED STATES',-9,59.0744,-160.275),
    (446,'TYS','McGhee Tyson Airport','TYS','Knoxville','US','UNITED STATES',-5,35.811,-83.994),
    (447,'UDD','Bermuda Dunes Airport','UDD','Palm Desert','US','UNITED STATES',-7,33.7484,-116.275),
    (448,'UGN','Memorial Airport','UGN','Waukegan','US','UNITED STATES',-6,42.4222,-87.8679),
    (449,'UIZ','Berz Macomb Airport','DTT','Detroit','US','UNITED STATES',-100,0,0),
    (450,'UKI','Ukiah Airport','UKI','Ukiah','US','UNITED STATES',-100,39.126,-123.201),
    (451,'UKT','Upper Bucks Airport','UKT','Quakertown','US','UNITED STATES',-100,0,0),
    (452,'ULM','New Ulm Airport','ULM','New Ulm','US','UNITED STATES',-100,0,0),
    (453,'UNK','Unalakleet Airport','UNK','Unalakleet','US','UNITED STATES',-9,63.8883,-160.799),
    (454,'UST','St Augustine Airport','UST','St Augustine','US','UNITED STATES',-5,29.9592,-81.3397),
    (455,'VCT','Victoria Regional Airport','VCT','Victoria','US','UNITED STATES',-6,28.8526,-96.9185),
    (456,'VJI','Virginia Highlands Airport','VJI','Abingdon','US','UNITED STATES',-100,0,0),
    (457,'VKS','Vicksburg Airport','VKS','Vicksburg','US','UNITED STATES',-100,0,0),
    (458,'VLO','Stolport Airport','VLO','Vallejo','US','UNITED STATES',-100,0,0),
    (459,'VNY','Van Nuys Airport','LAX','Los Angeles','US','UNITED STATES',-8,34.2098,-118.49),
    (460,'VPS','Ft Walton Beach Airport','VPS','Valparaiso','US','UNITED STATES',-6,30.4832,-86.5254),
    (461,'VQS','Vieques Airport','VQS','Vieques','US','UNITED STATES',-4,18.1158,-65.4227),
    (462,'VYS','Illinois Valley Regional Airport','VYS','Peru','US','UNITED STATES',-100,41.3519,-89.1531),
    (463,'WAL','Wallops Airport','WAL','Chincoteague','US','UNITED STATES',-5,37.9402,-75.4664),
    (464,'WGO','Winchester Airport','WGO','Winchester','US','UNITED STATES',-100,0,0),
    (465,'WJF','Williams J Fox Airport','WJF','Lancaster','US','UNITED STATES',-100,34.7411,-118.219),
    (466,'WLK','Selawik Airport','WLK','Selawik','US','UNITED STATES',-9,66.6,-159.986),
    (467,'WMH','Mountain Home Airport','WMH','Mountain Home','US','UNITED STATES',-100,0,0),
    (468,'WVL','Robert La Fleur Airport','WVL','Waterville','US','UNITED STATES',-100,0,0),
    (469,'WWD','Cape May Airport','WWD','Cape May','US','UNITED STATES',-5,39.0085,-74.9083),
    (470,'WWR','West Woodward Airport','WWR','Woodward','US','UNITED STATES',-100,0,0),
    (471,'WWT','Newtok Airport','WWT','Newtok','US','UNITED STATES',-10,60.9392,-164.641),
    (472,'WYS','West Yellowstone Airport','WYS','West Yellowstone','US','UNITED STATES',-7,44.6883,-111.118),
    (473,'XNA','Northwest Arkansas Regional Airport','FYV','Fayetteville','US','UNITED STATES',-6,36.2819,-94.3068),
    (474,'YAK','Yakutat Airport','YAK','Yakutat','US','UNITED STATES',-9,59.3012,-139.394),
    (475,'YIP','Willow Run Airport','DTT','Detroit','US','UNITED STATES',-5,42.2379,-83.5304),
    (476,'YKM','Yakima Terminal Airport','YKM','Yakima','US','UNITED STATES',-8,46.5682,-120.544),
    (477,'ZZV','Zanesville Airport','ZZV','Zanesville','US','UNITED STATES',-100,39.9445,-81.8921);

-- -----------------------------------------------------
-- Table `utopia`.`route`
-- -----------------------------------------------------
DROP TABLE IF EXISTS route;
CREATE TABLE IF NOT EXISTS `utopia`.`route` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` CHAR(5) NOT NULL,
  `destination_id` CHAR(5) NOT NULL,
  PRIMARY KEY (`id`, `origin_id`, `destination_id`),
  INDEX `fk_route_airport1_idx` (`origin_id` ASC) VISIBLE,
  INDEX `fk_route_airport2_idx` (`destination_id` ASC) VISIBLE,
  UNIQUE INDEX `unique_route` (`origin_id` ASC, `destination_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_route_airport1`
    FOREIGN KEY (`origin_id`)
    REFERENCES `utopia`.`airport` (`iata_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_route_airport2`
    FOREIGN KEY (`destination_id`)
    REFERENCES `utopia`.`airport` (`iata_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

INSERT INTO route VALUES
	(1, 'OPF','SAN'),
    (2, 'OPF','LAX'),
    (3, 'SAN','LAX'),
    (4, 'ORD','SJC'),
    (5, 'SAN','DCA'),
    (6, 'OPF','DCA'),
    (7, 'DCA','ORD'),
    (8, 'SJC','LAX'),
    (9, 'SFO','DCA'),
    (10, 'SAN','SJC');


-- -----------------------------------------------------
-- Table `utopia`.`airplane_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS airplane_type;
CREATE TABLE IF NOT EXISTS `utopia`.`airplane_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `max_capacity` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO airplane_type VALUES
    (1, 150),
    (2, 200),
    (3, 300),
    (4, 400),
    (5, 500),
    (6, 600),
    (7, 700),
    (8, 800);


-- -----------------------------------------------------
-- Table `utopia`.`airplane`
-- -----------------------------------------------------
DROP TABLE IF EXISTS airplane;
CREATE TABLE IF NOT EXISTS `utopia`.`airplane` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `airplane_type_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_airplane_airplane_model1_idx` (`airplane_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_airplane_airplane_model1`
    FOREIGN KEY (`airplane_type_id`)
    REFERENCES `utopia`.`airplane_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
INSERT INTO airplane VALUES (1,7);
INSERT INTO airplane VALUES (2,3);
INSERT INTO airplane VALUES (3,4);
INSERT INTO airplane VALUES (4,8);
INSERT INTO airplane VALUES (5,2);


-- -----------------------------------------------------
-- Table `utopia`.`flight`
-- -----------------------------------------------------
DROP TABLE IF EXISTS flight;
CREATE TABLE IF NOT EXISTS `utopia`.`flight` (
  `id` INT UNSIGNED NOT NULL,
  `route_id` INT UNSIGNED NOT NULL,
  `airplane_id` INT UNSIGNED NOT NULL,
  `departure_time` DATETIME NOT NULL,
  `reserved_seats` INT UNSIGNED NOT NULL,
  `seat_price` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_flight_tbl_route1_idx` (`route_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_flight_airplane1_idx` (`airplane_id` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_flight_tbl_route1`
    FOREIGN KEY (`route_id`)
    REFERENCES `utopia`.`route` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_flight_airplane1`
    FOREIGN KEY (`airplane_id`)
    REFERENCES `utopia`.`airplane` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

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



-- -----------------------------------------------------
-- Table `utopia`.`booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS booking;
CREATE TABLE IF NOT EXISTS `utopia`.`booking` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `confirmation_code` VARCHAR(100) NOT NULL,
  `status` VARCHAR(9) CHARACTER SET utf8 NOT NULL DEFAULT "INACTIVE",
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

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


-- -----------------------------------------------------
-- Table `utopia`.`user_role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS user_role;
CREATE TABLE IF NOT EXISTS `utopia`.`user_role` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO user_role VALUES 
	(1, 'guest'),
    (2, 'customer'),
    (3, 'agent'),
    (4, 'employee'),
    (5, 'admin');

-- -----------------------------------------------------
-- Table `utopia`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS `utopia`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT UNSIGNED NOT NULL,
  `name_first` VARCHAR(255) NOT NULL,
  `name_last` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_user_role1_idx` (`role_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
  CONSTRAINT `fk_user_user_role1`
    FOREIGN KEY (`role_id`)
    REFERENCES `utopia`.`user_role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO user VALUES
	(1, 1, "Joe", "Smith", "johnsmith@gmail.com", "1111111", "5555555555"),
    (2, 4, 'Tural', 'Hasanli', 'tural.hasanli90@gmail.com', '12345678', '6465579796'),
    (3, 2, 'Travel', 'LLC', 'travel@llc.rm', '12345678', '7547151714'),
    (4, 3, 'Tyler', 'Joshua', 'tj@gmail.com', '1277345678', '647765579796'),
    (5, 1, 'Chirtian', 'Reyes', 'tfdj@gmail.com', '12773454545678', '6477465579796');


-- -----------------------------------------------------
-- Table `utopia`.`passenger`
-- -----------------------------------------------------
DROP TABLE IF EXISTS passenger;
CREATE TABLE IF NOT EXISTS `utopia`.`passenger` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` INT UNSIGNED NOT NULL,
  `name_first` VARCHAR(255) NOT NULL,
  `name_last` VARCHAR(255) NOT NULL,
  `date_of_birth` DATE NOT NULL,
  `sex` VARCHAR(7) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_traveler_booking1_idx` (`booking_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_traveler_booking1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `utopia`.`booking` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

INSERT INTO passenger VALUES
(1, 1, 'Tural', 'Hasanli', '1990-11-23','male', '400 W 50TH Street, NY, NY10019'),
(2, 2, 'Theresita', 'Dowsey', '1990-11-23','male', '6 Old Shore Avenue'),
(3, 3, 'Loralyn', 'Heersema', '1990-11-23','male', '910 Pierstorff Drive'),
(4, 4, 'Shandeigh', 'Trytsman', '1990-11-23','male', '2075 Karstens Trail'),
(5, 5, 'Bo', 'Morforth', '1990-11-23','male', '16921 5th Avenue'),
(6, 6, 'Nanny', 'Meekings', '1990-11-23','male', '85 Claremont Drive'),
(7, 7, 'Frank', 'Flecknell', '1990-11-23','male', '7275 Shoshone Drive'),
(8, 8, 'Donnamarie', 'Coleiro', '1990-11-23','male', '75015 Hauk Avenue'),
(9, 9, 'Husain', 'Bremley', '1990-11-23','male', '9362 Anniversary Trail'),
(10, 10, 'Drucie', 'Pavlenko', '1990-11-23','male', '400 W 50TH Street, NY, NY10019'),
(11, 11, 'Ethelyn', 'Rudall', '1990-11-23','male', '3 Oriole Place'),
(12, 12, 'Catarina', 'Sneezum', '1990-11-23','male', '84558 Novick Center'),
(13, 13, 'Johannes', 'Tunnicliffe', '1990-11-23','male', '04 Homewood Court9'),
(14, 14, 'Steven', 'Samarth', '1990-11-23','male', '3134 Algoma Trail'),
(15, 15, 'Westbrooke', 'Terrelly', '1990-11-23','male', '0223 Pine View Center'),
(16, 16, 'Lari', 'Itzkowicz', '1990-11-23','male', '397 Del Sol Place'),
(17, 17, 'Becca', 'Skepper', '1990-11-23','male', '05689 Lindbergh Road'),
(18, 18, 'Ibbie', 'Otham', '1990-11-23','male', '75 Ronald Regan Alley'),
(19, 19, 'Daisie', 'Cowdroy', '1990-11-23','male', '8 Vahlen Place'),
(20, 20, 'Zach', 'Dongall', '1990-11-23','male', '931 Kingsford Way'),
(21, 21, 'Arlena', 'Guiet', '1990-11-23','male', '68 Lakeland Circle'),
(22, 22, 'Marlo', 'Bloxland', '1990-11-23','male', '822 Nobel Crossing'),
(23, 23, 'Peggy', 'Dowthwaite', '1990-11-23','male', '400 Mandrake Avenue'),
(24, 24, 'Gracia', 'Grinikhinov', '1990-11-23','male', '559 3rd Park');


-- -----------------------------------------------------
-- Table `utopia`.`flight_bookings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS flight_bookings;
CREATE TABLE IF NOT EXISTS `utopia`.`flight_bookings` (
  `flight_id` INT UNSIGNED NOT NULL,
  `booking_id` INT UNSIGNED NOT NULL,
  INDEX `fk_flight_bookings_booking` (`booking_id` ASC) VISIBLE,
  INDEX `fk_flight_bookings_flight` (`flight_id` ASC) VISIBLE,
  PRIMARY KEY (`booking_id`, `flight_id`),
  CONSTRAINT `fk_flight_bookings_flight`
    FOREIGN KEY (`flight_id`)
    REFERENCES `utopia`.`flight` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_flight_bookings_booking`
    FOREIGN KEY (`booking_id`)
    REFERENCES `utopia`.`booking` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

INSERT INTO flight_bookings VALUES
	(1,1),
    (2,2),
	(3,3),
    (4,4),
    (5,5),
    (6,6),
    (7,7),
    (8,8),
	(9,9),
    (10,10),
	(11,11),
    (12,12),
    (13,13),
    (14,15),
    (15,15),
    (16,16);


-- -----------------------------------------------------
-- Table `utopia`.`booking_payment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS booking_payment;
CREATE TABLE IF NOT EXISTS `utopia`.`booking_payment` (
  `booking_id` INT UNSIGNED NOT NULL,
  `stripe_id` VARCHAR(255) NOT NULL,
  `refunded` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`booking_id`),
  INDEX `fk_booking_payment_booking1_idx` (`booking_id` ASC) VISIBLE,
  UNIQUE INDEX `booking_id_UNIQUE` (`booking_id` ASC) VISIBLE,
  CONSTRAINT `fk_booking_payment_booking1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `utopia`.`booking` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

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


-- -----------------------------------------------------
-- Table `utopia`.`booking_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS booking_user;
CREATE TABLE IF NOT EXISTS `utopia`.`booking_user` (
  `booking_id` INT UNSIGNED NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`booking_id`),
  INDEX `fk_user_bookings_booking1_idx` (`booking_id` ASC) VISIBLE,
  INDEX `fk_user_bookings_user1_idx` (`user_id` ASC) VISIBLE,
  UNIQUE INDEX `booking_id_UNIQUE` (`booking_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_bookings_booking1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `utopia`.`booking` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_user_bookings_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `utopia`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

INSERT INTO booking_user (booking_id, user_id) VALUES (13, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (14, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (15, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (16, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (17, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (22, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (23, 1);
INSERT INTO booking_user (booking_id, user_id) VALUES (24, 1);


-- -----------------------------------------------------
-- Table `utopia`.`booking_guest`
-- -----------------------------------------------------
DROP TABLE IF EXISTS booking_guest;
CREATE TABLE IF NOT EXISTS `utopia`.`booking_guest` (
  `booking_id` INT UNSIGNED NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`booking_id`),
  UNIQUE INDEX `booking_id_UNIQUE` (`booking_id` ASC) VISIBLE,
  CONSTRAINT `fk_booking_guest_booking1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `utopia`.`booking` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

INSERT INTO booking_guest VALUES
	(8, 'jlsdj@gmail.com', '6194457645'),
    (9, 'jdslka@gmai.com', '6194412645'),
    (10, 'dsdfds@gmail.com', '6194717645'),
    (11, 'fjsdlkf@gmail.com', '6132457645'),
    (12, 'tryry@gmail.com', '6197657645'),
    (18, 'flksdjfkl@gmail.com', '6894457645'),
    (19, 'rueoiwt@gmail.com', '6194457645'),
    (20, 'otuior@gmail.com', '6194547645'),
    (21, 'ksd@gmail.com', '6784457645');


-- -----------------------------------------------------
-- Table `utopia`.`booking_agent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS booking_agent;
CREATE TABLE IF NOT EXISTS `utopia`.`booking_agent` (
  `booking_id` INT UNSIGNED NOT NULL,
  `agent_id` INT UNSIGNED NOT NULL,
  INDEX `fk_booking_booker_user1_idx` (`agent_id` ASC) VISIBLE,
  PRIMARY KEY (`booking_id`),
  UNIQUE INDEX `booking_id_UNIQUE` (`booking_id` ASC) VISIBLE,
  CONSTRAINT `fk_booking_booker_user1`
    FOREIGN KEY (`agent_id`)
    REFERENCES `utopia`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_booking_booker_booking1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `utopia`.`booking` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

INSERT INTO booking_agent (booking_id, agent_id) VALUES (1, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (2, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (3, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (4, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (5, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (6, 2);
INSERT INTO booking_agent (booking_id, agent_id) VALUES (7, 2);

USE `utopia` ;

-- -----------------------------------------------------
-- Placeholder table for view `utopia`.`flight_status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS flight_status;
CREATE TABLE IF NOT EXISTS `utopia`.`flight_status` (`id` INT, `route_id` INT, `airplane_id` INT, `departure_time` INT, `reserved_seats` INT, `seat_price` INT, `max_capacity` INT, `passenger_count` INT, `available_seats` INT);

-- -----------------------------------------------------
-- Placeholder table for view `utopia`.`flight_passengers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS flight_passengers;
CREATE TABLE IF NOT EXISTS `utopia`.`flight_passengers` (`flight_id` INT, `booking_id` INT, `passenger_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `utopia`.`guest_booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS guest_booking;
CREATE TABLE IF NOT EXISTS `utopia`.`guest_booking` (`id` INT, `status` VARCHAR(9), `confirmation_code` VARCHAR(100), `email` INT, `phone` INT, `agent_id` INT);

-- -----------------------------------------------------
-- Placeholder table for view `utopia`.`user_booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS user_booking;
CREATE TABLE IF NOT EXISTS `utopia`.`user_booking` (`id` INT, `status` VARCHAR(9), `confirmation_code` VARCHAR(100), `user_id` INT, `agent_id` INT);

-- -----------------------------------------------------
-- View `utopia`.`flight_status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `utopia`.`flight_status`;
USE `utopia`;
CREATE  OR REPLACE VIEW `flight_status` AS SELECT
	flight.*,
    airplane_capacity.max_capacity,
    flight_passenger_count.passenger_count,
    (airplane_capacity.max_capacity - flight.reserved_seats - flight_passenger_count.passenger_count) as available_seats
    FROM
	flight
    INNER JOIN
    (SELECT
		airplane.id,
        airplane_type.max_capacity
        FROM
        airplane
        INNER JOIN
        airplane_type
        ON airplane.airplane_type_id=airplane_type.id
	) AS airplane_capacity
    ON flight.airplane_id=airplane_capacity.id
    INNER JOIN
	(SELECT
		flight_id,
		COUNT(*) AS passenger_count
		FROM
		flight_passengers
		GROUP BY flight_id
	) AS flight_passenger_count
	ON flight.id=flight_passenger_count.flight_id;

-- -----------------------------------------------------
-- View `utopia`.`flight_passengers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `utopia`.`flight_passengers`;
USE `utopia`;
CREATE  OR REPLACE VIEW `flight_passengers` AS SELECT
	flight_bookings.*,
    passenger.id as passenger_id
    FROM
    flight_bookings
    INNER JOIN
    passenger
    ON flight_bookings.booking_id=passenger.booking_id
    INNER JOIN
    booking
    ON flight_bookings.booking_id=booking.id
    WHERE booking.status="ACTIVE";

-- -----------------------------------------------------
-- View `utopia`.`guest_booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `utopia`.`guest_booking`;
USE `utopia`;
CREATE  OR REPLACE VIEW `guest_booking` AS SELECT
	booking.id,
    booking.status,
    booking.confirmation_code,
    booking_guest.email,
    booking_guest.phone,
    booking_agent.agent_id
    FROM
    booking
    INNER JOIN
    booking_guest
    ON booking.id=booking_guest.booking_id
	LEFT JOIN
	booking_agent
	ON booking.id=booking_agent.booking_id;

-- -----------------------------------------------------
-- View `utopia`.`user_booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `utopia`.`user_booking`;
USE `utopia`;
CREATE  OR REPLACE VIEW `user_booking` AS SELECT
	booking.id,
    booking.status,
    booking.confirmation_code,
    booking_user.user_id,
    booking_agent.agent_id
    FROM
    booking
    INNER JOIN
	booking_user
	ON booking.id=booking_user.booking_id
	LEFT JOIN
	booking_agent
	ON booking.id=booking_agent.booking_id;
USE `utopia`;

DELIMITER $$
USE `utopia`$$
CREATE DEFINER = CURRENT_USER TRIGGER `utopia`.`route_BEFORE_INSERT` BEFORE INSERT ON `route` FOR EACH ROW
BEGIN
	IF (NEW.origin_id = NEW.destination_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'origin cannot be same as destination';
	END IF;
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;