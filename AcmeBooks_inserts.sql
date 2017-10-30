
delete from  bk_order_details;
delete from  bk_order_headers;
delete from  bk_customers ;
delete from  bk_handling_fees;
delete from  bk_book_authors ;
delete from  bk_authors;
delete from  bk_book_topics;
delete from  bk_topics;
delete from  bk_books;
delete from  bk_publishers;

insert into  bk_handling_fees(low_limit, high_limit, handling_fee)  values (  0,   5,  5.00);
insert into  bk_handling_fees(low_limit, high_limit, handling_fee)  values (  6,  15,  7.00);
insert into  bk_handling_fees(low_limit, high_limit, handling_fee)  values ( 16,  25,  9.00);
insert into  bk_handling_fees(low_limit, high_limit, handling_fee)  values ( 26,  50, 12.00);
insert into  bk_handling_fees(low_limit, high_limit, handling_fee)  values ( 51, 100, 15.00);
insert into  bk_handling_fees(low_limit, high_limit, handling_fee)  values (101, 999, 20.00);



-- publishers 
Insert into bk_publishers values (9000, 'Microsoft Press') ;
Insert into bk_publishers values (9456, 'New Directions') ;
Insert into bk_publishers values (9102, 'Alfred A. Knopf') ;
Insert into bk_publishers values (9325, 'Addison Wesley') ;
Insert into bk_publishers values (9745, 'Morgan Kaufmann') ;
Insert into bk_publishers values (9521, 'Benjamin/Cummings') ;
Insert into bk_publishers values (9822, 'O''Reilly') ; 
Insert into bk_publishers values (9030, 'McGraw Hill') ;
Insert into bk_publishers values (9444, 'APress') ;
Insert into bk_publishers values (9020, 'Princeton Univer Press') ;
Insert into bk_publishers values (9021, 'Yale University Press') ;
Insert into bk_publishers values (9022, 'Havard University Press') ;
Insert into bk_publishers values (9528, 'Manning');
Insert into bk_publishers values (9507, 'J.Q. Vanderbildt');
Insert into bk_publishers values (9664, 'WROX') ;
Insert into bk_publishers values (9825, 'MySQL Press') ;
Insert into bk_publishers values (9623, 'Prentice Hall') ;
Insert into bk_publishers values (9725, 'Springer') ;
Insert into bk_publishers values (9561, 'Houghton Mifflin'); 
Insert into bk_publishers values (9902, 'W.W. Norton ') ;
Insert into bk_publishers values (9023, 'Holt Paperbacks') ;
Insert into bk_publishers values (9024, 'Univ of California Press') ;
Insert into bk_publishers values (9776, 'Simon and Schuster') ;



-- topics  
Insert into bk_topics values ('ADO',   'ADO');
Insert into bk_topics values ('CMP',   'Computer Science');
Insert into bk_topics values ('DB',    'Database Systems');
Insert into bk_topics values ('FCT',   'Fiction');
Insert into bk_topics values ('HIST',  'History');
Insert into bk_topics values ('MYSQL', 'MySQL Database');
Insert into bk_topics values ('NET',   '.NET Technologies');
Insert into bk_topics values ('NOSQL', 'Alternate Data Storage');
Insert into bk_topics values ('ORA',   'Oracle Database');
Insert into bk_topics values ('POE',   'Poetry');
Insert into bk_topics values ('PGM',   'General Programming');
Insert into bk_topics values ('SCI',   'Science');
Insert into bk_topics values ('SQL',   'SQL');
Insert into bk_topics values ('SSRV',  'SQL Server Database');
Insert into bk_topics values ('VB',    'Visual Basic');
Insert into bk_topics values ('XML',   'XML Techniques');
Insert into bk_topics values ('ART',   'Arts, Photography');


-- books 
insert into bk_books values (1101,  'Programming SQL Server with VB.NET',              9000, 2002, '0735615357',    300, 59.99);
insert into bk_books values (1102,  'Practical Standards for VB.NET',                  9000, 2003, '0735613568',    250, 49.99);
insert into bk_books values (1103,  'Selected Poems',                                  9456, 1949,  null,           125, 12.00);
insert into bk_books values (1104,  'Sibley Guide to Bird Life and Behavior',          9102, 2001, '0679451234',    604, 45.00);
insert into bk_books values (1105,  'SQL:1999 Relational Language Concepts',           9745, 2002, '1558604561',    450, 59.95);
insert into bk_books values (1106,  'SQL for Smarties',                                9745, 1995, '1558603239',    250, 29.00);
insert into bk_books values (1107,  'SQL Puzzles and Answers',                         9745, 1997, '1558604537',    325, 25.00);
insert into bk_books values (1108,  'Database Systems',                                9325, 1996,  null,           680, 39.95);
insert into bk_books values (1109,  'Intro to DB Systems-7th Ed',                      9325, 2000, '0201385902',    650, 80.00);
insert into bk_books values (1110,  'Adv SQL:1999 Object_Relational Features',         9745, 2002, '1558606077',    520, 59.95);


insert into bk_books values (1128,  'Temporal Data and the Relational Model',          9325, 2003, 'na',            275, 49.95);
insert into bk_books values (1133,  'Leaves of Grass',                                 9623, 1902,  null,           125, 19.95);
insert into bk_books values (1142,  'Relational Database Theory',                      9521, 1993,  null,           879, 95.00);
insert into bk_books values (1161,  'SQL Programming Style',                           9745, 2005, '0120887975',    780, 35.00);
insert into bk_books values (1162,  'Trees and Hierarchies',                           9745, 2004, '1558609202',    350, 35.00);
insert into bk_books values (1180,  'MySQL Database Design and Tuning',                9825, 2005, '9780672234650', 400, 49.99);
insert into bk_books values (1175,  'MySQL in a Nutshell',                             9822, 2008, '9780596514331', 538, 34.99);
insert into bk_books values (1182,  'MySQL Cookbook',                                  9822, 2007, '9780596527082', 918, 49.99);
insert into bk_books values (1185,  'MySQL Stored Procedures',                         9822, 2007, '9780596100896', 595, 49.99);
insert into bk_books values (1184,  'MySQL Developer''s Library',                      9325, 2009, '9780672329388', 650, 49.99);


insert into bk_books values (1301,  'ADO and Oracle Workbook',                         9000, 2002, '0265615357',      0, 59.99);
insert into bk_books values (1302,  'ADO: the ebook',                                  9000, 2002, '0852515358',   null, 49.99);
insert into bk_books values (1303,  'Rainbows and Rainbows',                           9521, 2002, '0657895157',   null, 59.99);
insert into bk_books values (1304,  'Stories of Discoveries',                          9325, 2002, '0777788887',    300, 59.99);
insert into bk_books values (1305,  'Journeys Through Flatland',                       9325, 1958, '0387515357',    100,  9.99);
insert into bk_books values (1306,  'Myths of SQL',                                    9664, 2000, '0454615027',   2895,259.99);
insert into bk_books values (1188,  'SQL for MySQL Developers',                        9325, 2007, '9780314973851', 105, 49.99);
insert into bk_books values (1199,  'SQL is Fun',                                      null, 2007,  null,            98, 19.99);
insert into bk_books values (2002,  'SQL Server 2012 A Beginner''s Guide',             9030, 2012, '978-0071761604',832, 24.92);
insert into bk_books values (2005,  'Developer''s Guide to SQL Server 2005',           9325, 2006, '0321382188',    894, 59.99);

insert into bk_books values (2006,  'T_SQL Programming (Inside series)',               9000, 2006, '9780756978',    390, 44.99);
insert into bk_books values (2007,  'T_SQL Querying (Inside series)',                  9000, 2006, '9780733132',    391, 44.99);
insert into bk_books values (2008,  'SQL Server T_Sql Recipies',                       9444, 2015, '978-1484200629',    972, 48.99);
insert into bk_books values (2009,  'SQL Server 2012 for Developers',                  null, 2012, '78-1890774691',    814, 34.42);
insert into bk_books values (1258,  '.Net Development for Microsoft Office',           9000, 2005, '0735621322',    500, 49.99);
insert into bk_books values (1278,  'Beginning VB 2008 Databases',                     9444, 2008, '9781590599471', 408, 44.99);
insert into bk_books values (1279,  'Data-Driven Services with Silverlight 2',         9822, 2009, '9780596523091', 336, 44.99);
insert into bk_books values (1948,  'Framework Design Guidelines',                     9325, 2006, '0321246756',    346, 44.99);
insert into bk_books values (1077,  'Programming for Poets',                           9456, 2009, null,            401, 40.25);
insert into bk_books values (1835,  'Data Binding with Windows Forms 2.0',             9325, 2006, '032126892X',    634, 49.99);

insert into bk_books values (1677,  'Windows Forms 2.0 Programming',                   9325, 2006, '0321267966',    982, 74.99);
insert into bk_books values (1670,  'Applied .NET Framework Programming VB.NET',       9000, 2003, '0735678772',    608, 49.99);
insert into bk_books values (2029,  'The Forgotten Bird Strikes Back ',                9030, 2010, '9091599594487',   5,  1.99);
insert into bk_books values (2031,  'Comparative SQL',                                 9444, 2013, '9781599591237', 750, 99.99);
insert into bk_books values (2032,  'Oracle and the rest of the world',                9030, 2013, '9091599593217', 250, 55.99);
insert into bk_books values (2622,  'Outstanding Bryophytes',                          9021, 2013, null,956, 89.99);
insert into bk_books values (2623,  'Hornworts and Liverworts in your Garden ',        9021, 2013, null,501, 29.99);


insert into bk_books values (1541,  'Freethinkers: A History of American Secularism',  9023, 2004, '9780805077766', 448, 12.79);
insert into bk_books values (1542,  'The Great Agnostic: Robert Ingersoll and American Freethought',  
        9021, 2013, '9780300137255', 256, 16.99);
insert into bk_books values (1543,  'Ties That Bind:The Story of an Afro-Cherokee Family in Slavery and Freedom',  
        9024, 2006, '9780520250024', 327, 26.96);
insert into bk_books values (1544,  'The House on Diamond Hill: A Cherokee Plantation Story',  
        9024, 2012, '9780807872673', 336, 17.76);
insert into bk_books values (1545,  'Team of Rivals: The Political Genius of Abraham Lincoln',  
        9776, 2006, '9780739469767', 944, 13.96);
insert into bk_books values (1546,  'The Johnstown Flood',                             9776, 1987, '9780671207144', 304, 10.39);
insert into bk_books values (1401,  'Visual Studio Tools for Office',                  9325, 2006, '0321334884',    976, 54.99);
insert into bk_books values (1537,  'The BedSide Book of Birds',                       9725, 2005, '0385514832',     68, 29.95);
insert into bk_books values (1357,  'Why Birds Sing',                                  9725, 2005, '046507135X',    240, 26.00);
insert into bk_books values (1609,  'In the Company of Crows and Ravens',              9725, 2005, '0300100760',    376, 18.95);


insert into bk_books values (1979,  'Pro VB 2008 and the .NET 3.5 Platform',           9444, 2008, '9781590598221',1368, 59.99);
insert into bk_books values (1457,  'Visual Basic 2008 Recipes',                       9444, 2008, '9781590599709', 300, 79.99);
insert into bk_books values (1425,  'The Singing Life of Birds',                       9561, 2005, '0618405682',    468, 28.09);
insert into bk_books values (1978,  'Acoustic Communication in Birds Vol1',            9561, 1983, '9780124268012', 360,103.91);
insert into bk_books values (1621,  'The Unfeathered Bird',                            9020, 2013, '9780691151342', 304, 31.29);
insert into bk_books values (1622,  'Bird Sense',                                      9020, 2012, '9780802779663', 265, 25.00);
insert into bk_books values (1623,  'Lichens of North America',                        9021, 2001, '9780300082494', 828,135.00);
insert into bk_books values (1624,  'Outstanding Mosses and Liverworts of Pennsylvania and Nearby States', 
       9021, 2006, '9780976092575',  89, 19.99);
insert into bk_books values (1626,  'Bark: A Field Guide to Trees of the Northeast',   9021, 2011, '9781584658528', 280, 25.95);
insert into bk_books values (1625,  'Winter Weed Finder: A Guide to Dry Plants in Winter (Nature Study Guides)',
       9021, 1989, '9780912550176',  64,  4.95);


insert into bk_books values (1627,  'The Ants',                                        9022, 1990, '9780674040755', 732,120.18);
insert into bk_books values (1628,  'The Superorganism:The Beauty, Elegance, and Strangeness of Insect Societies',               
       9902, 2008, '9780393067040', 544, 34.65);
insert into bk_books values (1629,  'The Leafcutter Ants: Civilization by Instinct',   9022, 1990, '9780393338683', 160, 19.95);
insert into bk_books values (1630,  'The Social Conquest of Earth',                    9022, 2012, '9780871404138', 352, 27.95);
insert into bk_books values (1602,  'Goblin Market and Other Poems',                   9022, 2012, '9780486280554', 68,   2.95);
insert into bk_books values (1448,  'Backyard Birdsong Guide: Western North America',  9561, 2008, '9780811863971',3192, 29.99);
insert into bk_books values (1877,  'High Performance MySQL',                          9822, 2008, '9780596101718', 708, 49.99);
insert into bk_books values (1200,  'The Mismeasure of Man',                           9902, 1996, '9780393314250', 488, 17.95);
insert into bk_books values (1245,  'A Scientific Approach to SQL Testing',            9902, 2010, '9780366214250', 488, 52.95);
insert into bk_books values (1774,  'Ever Since Darwin',                               9902, 1992, '9780393308181', 288, 15.95);


insert into bk_books values (1234,  'Hen''s Teeth and Horse''s Toes ',                 9902, 1994, '9780393311037', 416, 17.95);
insert into bk_books values (1269,  'Querying XML',                                    9745, 2006, '9781558607118', 848, 63.95);
insert into bk_books values (1525,  'Interface-Oriented Design',                       9725, 2006, '0976697050',    213, 29.99);
insert into bk_books values (1619,  'The Oject-Oriented Thought Process',              9725, 2004, '9780672326110', 158, 29.99);
insert into bk_books values (1483,  'Programming with XML',                            9745, 2008, null,            125, 19.99);
insert into bk_books values (2017,  'Functional Programming',                          9528, 2010, '9781933988924', 528, 49.99);
insert into bk_books values (2018,  'Oracle Database 11g SQL',                         9030, 2008, '9780071498500', 650, 49.99);
insert into bk_books values (2025,  'Oracle SQL Fundamentals I Exam Guide',            9030, 2008, '9780071597869', 572, 59.99);
insert into bk_books values (2027,  'Mastering Oracle SQL and SQL-Plus',               9444, 2005, '9781590594487', 464, 39.99);
insert into bk_books values (2028,  'Mastering Oracle Databases',                      9444, 2010, '9781599594487', 464, 59.99);

-- book topics
Insert into bk_book_topics values  (1602, 'POE');
Insert into bk_book_topics values  (2018, 'ORA');
Insert into bk_book_topics values  (2018, 'SQL');
Insert into bk_book_topics values  (2025, 'ORA');
Insert into bk_book_topics values  (2025, 'SQL');
Insert into bk_book_topics values  (2027, 'ORA');
Insert into bk_book_topics values  (2027, 'SQL');
Insert into bk_book_topics values  (1101, 'VB');
Insert into bk_book_topics values  (1101, 'SSRV');
Insert into bk_book_topics values  (1101, 'NET');
Insert into bk_book_topics values  (1102, 'VB');
Insert into bk_book_topics values  (1102, 'NET');
Insert into bk_book_topics values  (1103, 'POE');
Insert into bk_book_topics values  (1104, 'SCI');
Insert into bk_book_topics values  (1105, 'SQL');


Insert into bk_book_topics values  (1105, 'DB');
Insert into bk_book_topics values  (1106, 'SQL');
Insert into bk_book_topics values  (1107, 'SQL');
Insert into bk_book_topics values  (1108, 'DB');
Insert into bk_book_topics values  (1109, 'DB');
Insert into bk_book_topics values  (1110, 'SQL');
Insert into bk_book_topics values  (1110, 'DB');
Insert into bk_book_topics values  (1128, 'DB');
Insert into bk_book_topics values  (1128, 'SQL');
Insert into bk_book_topics values  (1133, 'POE');
Insert into bk_book_topics values  (1142, 'DB');
Insert into bk_book_topics values  (1161, 'SQL');
Insert into bk_book_topics values  (1301, 'ORA');
Insert into bk_book_topics values  (1301, 'ADO');
Insert into bk_book_topics values  (1302, 'ADO');
Insert into bk_book_topics values  (1303, 'SCI');
Insert into bk_book_topics values  (1303, 'POE');
Insert into bk_book_topics values  (1304, 'SCI');


Insert into bk_book_topics values  (1304, 'FCT');
Insert into bk_book_topics values  (1304, 'POE');
Insert into bk_book_topics values  (1306, 'FCT');
Insert into bk_book_topics values  (1306, 'SQL');
Insert into bk_book_topics values  (1162, 'SQL');
Insert into bk_book_topics values  (1180, 'DB');
Insert into bk_book_topics values  (1180, 'MYSQL');
Insert into bk_book_topics values  (1175, 'MYSQL');
Insert into bk_book_topics values  (1175, 'SQL');
Insert into bk_book_topics values  (1182, 'MYSQL');
Insert into bk_book_topics values  (1182, 'SQL');
Insert into bk_book_topics values  (1185, 'MYSQL');
Insert into bk_book_topics values  (1185, 'SQL');
Insert into bk_book_topics values  (1184, 'MYSQL');
Insert into bk_book_topics values  (1184, 'SQL');
Insert into bk_book_topics values  (1188, 'MYSQL');
Insert into bk_book_topics values  (1188, 'SQL');



Insert into bk_book_topics values  (2002, 'SSRV');
Insert into bk_book_topics values  (2002, 'SQL');
Insert into bk_book_topics values  (2006, 'SSRV');
Insert into bk_book_topics values  (2006, 'SQL');
Insert into bk_book_topics values  (2007, 'SSRV');
Insert into bk_book_topics values  (2007, 'SQL');
Insert into bk_book_topics values  (2008, 'SSRV');
Insert into bk_book_topics values  (2008, 'SQL');
Insert into bk_book_topics values  (1245, 'SQL');
Insert into bk_book_topics values  (1245, 'DB');


Insert into bk_book_topics values  (1234, 'SCI');
Insert into bk_book_topics values  (1774, 'SCI');
Insert into bk_book_topics values  (1200, 'SCI');
Insert into bk_book_topics values  (1877, 'MYSQL');
Insert into bk_book_topics values  (1269, 'XML');
Insert into bk_book_topics values  (1483, 'SQL');
Insert into bk_book_topics values  (1483, 'XML');
Insert into bk_book_topics values  (1483, 'PGM');
Insert into bk_book_topics values  (1619, 'PGM');
Insert into bk_book_topics values  (1525, 'PGM');
Insert into bk_book_topics values  (1258, 'NET');
Insert into bk_book_topics values  (1278, 'NET');
Insert into bk_book_topics values  (1278, 'SSRV');
Insert into bk_book_topics values  (1278, 'DB');


Insert into bk_book_topics values  (1278, 'VB');
Insert into bk_book_topics values  (1279, 'NET');
Insert into bk_book_topics values  (1279, 'VB');
Insert into bk_book_topics values  (1948, 'NET');
Insert into bk_book_topics values  (1835, 'NET');
Insert into bk_book_topics values  (1677, 'NET');
Insert into bk_book_topics values  (1670, 'NET');
Insert into bk_book_topics values  (1670, 'VB');
Insert into bk_book_topics values  (1401, 'NET');
Insert into bk_book_topics values  (1077, 'PGM');
Insert into bk_book_topics values  (1077, 'POE');
Insert into bk_book_topics values  (1457, 'VB');
Insert into bk_book_topics values  (1979, 'VB');
Insert into bk_book_topics values  (1979, 'NET');
Insert into bk_book_topics values  (1630, 'SCI');
Insert into bk_book_topics values  (1629, 'SCI');


Insert into bk_book_topics values  (1609, 'SCI');
Insert into bk_book_topics values  (1357, 'SCI');
Insert into bk_book_topics values  (1537, 'SCI');
Insert into bk_book_topics values  (1425, 'SCI');
Insert into bk_book_topics values  (1978, 'SCI');
Insert into bk_book_topics values  (1448, 'SCI');
Insert into bk_book_topics values  (2029, 'FCT');
Insert into bk_book_topics values  (2029, 'HIST'); 
Insert into bk_book_topics values  (2028, 'ORA');
Insert into bk_book_topics values  (2028, 'MYSQL'); 
Insert into bk_book_topics values  (1628, 'SCI');
Insert into bk_book_topics values  (1627, 'SCI');
Insert into bk_book_topics values  (1626, 'SCI');
Insert into bk_book_topics values  (1625, 'SCI');
Insert into bk_book_topics values  (1624, 'SCI');
Insert into bk_book_topics values  (1623, 'SCI');
Insert into bk_book_topics values  (1622, 'SCI');
Insert into bk_book_topics values  (1621, 'SCI');


Insert into bk_book_topics values  (1621, 'ART');
Insert into bk_book_topics values  (2031, 'ORA');
Insert into bk_book_topics values  (2031, 'SQL');
Insert into bk_book_topics values  (2031, 'SSRV');
Insert into bk_book_topics values  (2032, 'ORA');
Insert into bk_book_topics values  (2032, 'DB');
Insert into bk_book_topics values  (1541, 'HIST');
Insert into bk_book_topics values  (1542, 'HIST');
Insert into bk_book_topics values  (1543, 'HIST');
Insert into bk_book_topics values  (1544, 'HIST');
Insert into bk_book_topics values  (1545, 'HIST');
Insert into bk_book_topics values  (1546, 'HIST');


-- authors  
insert into bk_authors values ('Paolo', 'Atzeni', 'A0110');
insert into bk_authors values ('Francesco',  'Balena', 'B2010');
insert into bk_authors values ('Joe', 'Celko', 'C0030');
insert into bk_authors values ('C.J.', 'Date', 'D0030');
insert into bk_authors values ('Valeria', 'Deantonellis', 'D0050');
insert into bk_authors values ('Alligator', 'Descartes', 'D0070');
insert into bk_authors values ('High', 'Darwin', 'D2340');
insert into bk_authors values ('Rick', 'Dobson', 'D3040');
insert into bk_authors values ('Hermann', 'Hesse', 'H0070');
insert into bk_authors values ('Michael', 'Irwin', 'I0010');
insert into bk_authors values ('Nikos', 'Lorentzos', 'L0040');
insert into bk_authors values ('Audre', 'Lorde', 'L0130');
insert into bk_authors values ('Alden', 'Lorents', 'L0140');
insert into bk_authors values ('Jim', 'Melton', 'M0053');
insert into bk_authors values ('James', 'Morgan', 'M0110');
insert into bk_authors values ('Joline', 'Morrison', 'M0150');
insert into bk_authors values ('Jeffrey', 'Richter', 'R2040');
insert into bk_authors values ('David Allen', 'Sibley', 'S0025');
insert into bk_authors values ('Walt', 'Whitman', 'W0030');
insert into bk_authors values ('William Carlos', 'Williams', 'W0060');
insert into bk_authors values ('Katrina','van Grouw','V1144');
insert into bk_authors values ('Tim','Birkhead','B1144');
insert into bk_authors values ('Susan','Munch','M2475');
insert into bk_authors values ('Irwin','Brodo','B1244');
insert into bk_authors values ('Sylvia','Sharnoff','S2144');
insert into bk_authors values ('Stephan','Sharnoff','S2145');
insert into bk_authors values ('Michael','Wojtech','W5145');
insert into bk_authors values ('Dorcas','Miller','M3145');
insert into bk_authors values ('Joseph', 'Sack','S0205');
insert into bk_authors values ('Itzik','Ben-Gan','B1112');
insert into bk_authors values ('Lubor','Kollar','K2002');
insert into bk_authors values (null,'Prince','P3002');
insert into bk_authors values ('Dejan','Sarka','S2178');
insert into bk_authors values ('Bob','Beauchemin','B2078');
insert into bk_authors values ('Dusan','Petkovic','P2308');
insert into bk_authors values ('Cruela', 'de Vil', 'D2110');
insert into bk_authors values ('Willie', 'Mammoth', 'M3110');
insert into bk_authors values ('Bill', 'Shredder', 'S3110');
insert into bk_authors values ('Pete', 'Moss', 'M4540');
insert into bk_authors values ('Terry', 'Incognito', 'I5110');
insert into bk_authors values ('Joseph', 'Sack','S0250');
insert into bk_authors values ('Rajesh', 'George','G4040');
insert into bk_authors values ('Robert', 'Schneider', 'S1164');
insert into bk_authors values ('Russel', 'Dyer', 'D8902');
insert into bk_authors values ('Jason', 'Price', 'P6030');
insert into bk_authors values ('Lex', 'de Haan', 'D6290');
insert into bk_authors values ('Roopesh', 'Ramklass', 'R0700');
insert into bk_authors values ('John', 'Watson', 'W4512');
insert into bk_authors values ('Paul','DuBois','D8956');
insert into bk_authors values ('Guy','Harrison','H0202');
insert into bk_authors values ('Steven','Feuerstein','F2987');
insert into bk_authors values ('Rick','van der Lans','L0453');
insert into bk_authors values ('Andrew', 'Whitechapel', 'W0078');
insert into bk_authors values ('Matthew', 'MacDonald', 'M0157');
insert into bk_authors values ('Vidya Vrat', 'Agarwal', 'A5748');
insert into bk_authors values ('James', 'Huddleston', 'H8972');
insert into bk_authors values ('John', 'Papa', 'P0500');
insert into bk_authors values ('Krzysztof', 'Cwalina', 'C8794');
insert into bk_authors values ('Brad', 'Abrams', 'A0094');
insert into bk_authors values ('Debra', 'Kutata', 'K7845');
insert into bk_authors values ('Brain', 'Noyes', 'N6457');
insert into bk_authors values ('Chris', 'Sells', 'S2548');
insert into bk_authors values ('Michael', 'Weinhardt', 'W2388');
insert into bk_authors values ('Eric', 'Lippert', 'L3001');
insert into bk_authors values ('Rakesh', 'Rajan', 'R0040');
insert into bk_authors values ('Allen', 'Jones', 'J6700');
insert into bk_authors values ('Todd', 'Herman', 'H0187');
insert into bk_authors values ('Eric', 'Carter', 'C0844');
insert into bk_authors values ('David', 'Rothenberg', 'R5858');
insert into bk_authors values ('Christina', 'Rossetti', 'R5808');
insert into bk_authors values ('Susan','Jackoby','J8845');
insert into bk_authors values ('Tiya','Miles','M0295');
insert into bk_authors values ('David','McCullough','M3200');
insert into bk_authors values ('Doris Kearns','Goodwin','G8495');
insert into bk_authors values ('John', 'Marzluff', 'M0024');
insert into bk_authors values ('Tony', 'Angell', 'A7745');
insert into bk_authors values ('Andrew', 'Troelsen', 'T6789');
insert into bk_authors values ('Donald', 'Kroodsma', 'K7620');
insert into bk_authors values ('Stephen Jay', 'Gould', 'G5050');
insert into bk_authors values ('Peter', 'Zaitsev', 'Z0878');
insert into bk_authors values ('Vadim', 'Tkaechenko', 'T6748');
insert into bk_authors values ('Jeremy', 'Zawodny', 'Z0897');
insert into bk_authors values ('Arjen', 'Lentz', 'L2444');
insert into bk_authors values ('Derek', 'Balling', 'B0056');
insert into bk_authors values ('Ken', 'Pugh', 'P7477');
insert into bk_authors values ('Matt', 'Weisfeld', 'W3433');
insert into bk_authors values ('Baron', 'Schwartz', 'S1900');
insert into bk_authors values ('Graeme', 'Gibson', 'G4748');
insert into bk_authors values ('Bert','Holldobler','H3145');
insert into bk_authors values ('E.O.','Wilson','W3145');
insert into bk_authors values ('Bryan','Syverson','S5145');
insert into bk_authors values ('Joel','Murach','M5145');


-- book_authors
insert into bk_book_authors values (1101, 'D3040', 1);
insert into bk_book_authors values (1102, 'B2010', 1);
insert into bk_book_authors values (1102, 'R2040', 2);
insert into bk_book_authors values (1104, 'S0025', 1);
insert into bk_book_authors values (1105, 'M0053', 1);
insert into bk_book_authors values (1106, 'C0030', 1);
insert into bk_book_authors values (1107, 'C0030', 1);
insert into bk_book_authors values (1108, 'L0140', 1);
insert into bk_book_authors values (1108, 'M0110', 2);
insert into bk_book_authors values (1109, 'D0030', 1);
insert into bk_book_authors values (1109, 'I0010', 2);
insert into bk_book_authors values (1109, 'W0060', 3);
insert into bk_book_authors values (1110, 'M0053', 1);
insert into bk_book_authors values (1128, 'D0030', 1);
insert into bk_book_authors values (1128, 'D2340', 2);
insert into bk_book_authors values (1128, 'L0040', 3);
insert into bk_book_authors values (1128, 'M0150', 4);
insert into bk_book_authors values (1133, 'W0030', 1);
insert into bk_book_authors values (1142, 'A0110', 1);
insert into bk_book_authors values (1142, 'D0050', 2);
insert into bk_book_authors values (1161, 'C0030', 1);
insert into bk_book_authors values (1162, 'C0030', 1);
insert into bk_book_authors values (1175, 'D8956', 1);
insert into bk_book_authors values (1180, 'S1164', 1);
insert into bk_book_authors values (1182, 'D8902', 1);
insert into bk_book_authors values (1184, 'D8956', 1);
insert into bk_book_authors values (1185, 'H0202', 1);
insert into bk_book_authors values (1185, 'F2987', 2);
insert into bk_book_authors values (1301, 'D2110', 1);
insert into bk_book_authors values (1302, 'M3110', 1);
insert into bk_book_authors values (1303, 'M3110', 1);
insert into bk_book_authors values (1304, 'D2110', 1);
insert into bk_book_authors values (1305, 'S3110', 1);
insert into bk_book_authors values (1306, 'S3110', 1);
insert into bk_book_authors values (1188, 'L0453', 1);
insert into bk_book_authors values (2009, 'S5145', 1);
insert into bk_book_authors values (2009, 'M5145', 2);
insert into bk_book_authors values (2008, 'S0205', 1);
insert into bk_book_authors values (2007, 'B1112', 1);
insert into bk_book_authors values (2007, 'K2002', 2);
insert into bk_book_authors values (2007, 'S2178', 3);
insert into bk_book_authors values (2006, 'B1112', 1);
insert into bk_book_authors values (2006, 'K2002', 3);
insert into bk_book_authors values (2006, 'S2178', 2);
insert into bk_book_authors values (2002, 'P2308', 1);
insert into bk_book_authors values (1602, 'R5808', 1);
insert into bk_book_authors values (1258, 'W0078', 1);
insert into bk_book_authors values (1278, 'A5748', 1);
insert into bk_book_authors values (1278, 'H8972', 2);
insert into bk_book_authors values (1279, 'P0500', 1);
insert into bk_book_authors values (1279, 'K7845', 2);
insert into bk_book_authors values (1948, 'C8794', 1);
insert into bk_book_authors values (1948, 'A0094', 2);
insert into bk_book_authors values (1835, 'N6457', 1);
insert into bk_book_authors values (1677, 'S2548', 1);
insert into bk_book_authors values (1677, 'W2388', 2);
insert into bk_book_authors values (1670, 'R2040', 1);
insert into bk_book_authors values (1670, 'B2010', 2);
insert into bk_book_authors values (1401, 'C0844', 1);
insert into bk_book_authors values (1401, 'L3001', 2);
insert into bk_book_authors values (1457, 'H0187', 1);
insert into bk_book_authors values (1457, 'J6700', 2);
insert into bk_book_authors values (1457, 'M0157', 3);
insert into bk_book_authors values (1457, 'R0040', 4);
insert into bk_book_authors values (1979, 'T6789', 1);
insert into bk_book_authors values (1609, 'M0024', 1);
insert into bk_book_authors values (1609, 'A7745', 2);
insert into bk_book_authors values (1357, 'R5858', 1);
insert into bk_book_authors values (1537, 'G4748', 1);
insert into bk_book_authors values (1541, 'J8845', 1);
insert into bk_book_authors values (1542, 'J8845', 1);
insert into bk_book_authors values (1543, 'M0295', 1);
insert into bk_book_authors values (1544, 'M0295', 1);




insert into bk_book_authors  values (1545, 'G8495', 1);
insert into bk_book_authors  values (1546, 'M3200', 1);
insert into bk_book_authors  values (1425, 'K7620', 1);
insert into bk_book_authors  values (1448, 'K7620', 1);
insert into bk_book_authors  values (1978, 'K7620', 1);
insert into bk_book_authors  values (1200, 'G5050', 1);
insert into bk_book_authors  values (1774, 'G5050', 1);
insert into bk_book_authors  values (1234, 'G5050', 1);
insert into bk_book_authors  values (1877, 'S1900', 1);
insert into bk_book_authors  values (1877, 'Z0878', 2);
insert into bk_book_authors  values (1877, 'T6748', 3);
insert into bk_book_authors  values (1877, 'Z0897', 4);
insert into bk_book_authors  values (1877, 'L2444', 5);
insert into bk_book_authors  values (1877, 'B0056', 6);
insert into bk_book_authors  values (1269, 'M0053', 1);
insert into bk_book_authors  values (1619, 'W3433', 1);
insert into bk_book_authors  values (1525, 'P7477', 1);
insert into bk_book_authors  values (2018, 'P6030', 1);
insert into bk_book_authors  values (2025, 'D6290', 1);
insert into bk_book_authors  values (2025, 'R0700', 2);
insert into bk_book_authors  values (2027, 'W4512', 1);
insert into bk_book_authors  values (1627, 'H3145', 1);
insert into bk_book_authors  values (1627, 'W3145', 2);
insert into bk_book_authors  values (1628, 'H3145', 1);
insert into bk_book_authors  values (1628, 'W3145', 2);
insert into bk_book_authors  values (1629, 'H3145', 1);
insert into bk_book_authors  values (1629, 'W3145', 2);
insert into bk_book_authors  values (1630, 'W3145', 1);
insert into bk_book_authors  values (1626, 'M3145', 1);
insert into bk_book_authors  values (1625, 'W5145', 1);
insert into bk_book_authors  values (1623, 'B1244', 1);
insert into bk_book_authors  values (1623, 'S2144', 2);
insert into bk_book_authors  values (1623, 'S2145', 3);
insert into bk_book_authors  values (1624, 'M2475', 1);
insert into bk_book_authors  values (1622, 'B1144', 1);
insert into bk_book_authors  values (1621, 'V1144', 1);
insert into bk_book_authors  values (2031, 'I5110', 1);
insert into bk_book_authors  values (2032, 'I5110', 1);
insert into bk_book_authors  values (2622, 'M4540', 1);
insert into bk_book_authors  values (2623, 'M4540', 1);
 
 
 
 
-- customers  
insert into bk_customers  values  (208950, 'Adams', 'Samuel',        'MA', '02106', date '1996-04-15' );
insert into bk_customers  values  (200368, 'Blake', 'William',       'CA', '95959', date '1997-07-15' );
insert into bk_customers  values  (258595, 'Jobs', 'Peter',          'MA', '02575', date '1997-01-09' );
insert into bk_customers  values  (263119, 'Jones', null,            'IL', '62979', date '1997-03-02' );
insert into bk_customers  values  (224038, 'Austin', 'Pat',          'CA', '95900', date '1997-08-02' );
insert into bk_customers  values  (255919, 'Milton', 'John',         'NJ', '08235', date '2012-05-31' );
insert into bk_customers  values  (211483, 'Carroll', 'Lewis',       'CA', '94203', date '1998-08-08' );
insert into bk_customers  values  (221297, 'Dodgson', 'Charles',     'MI', '49327', date '2001-05-06' );
insert into bk_customers  values  (261502, 'Hawthorne', 'Nathaniel', 'MA', '02297', date '2001-10-12' );
insert into bk_customers  values  (212921, 'Books on Tap', NULL,     'CA', '94112', date '2002-01-06' );
insert into bk_customers  values  (260368, 'Muller', 'Jonathan',     'IL', '62885', date '2005-12-15' );
insert into bk_customers  values  (259969, 'Carlsen', 'Benny',       'NJ', '08505', date '2012-07-12' );
insert into bk_customers  values  (239427, 'Marksa', 'Anna',         'NJ', '08495', date '2012-02-28' );
insert into bk_customers  values  (296598, 'Collins', 'Douglas',     'MO', '65836', date '2005-04-25' );
insert into bk_customers  values  (276381, 'Collins', 'Douglas',     'OH', '22451', date '2005-02-08' );
insert into bk_customers  values  (234138, 'Keats', 'John',          'IL', '61500', date '2006-04-30' );
insert into bk_customers  values  (267780, 'Shelly', 'Mary',         'CA', '94100', date '2010-10-02' );
insert into bk_customers  values  (290298, 'Swift', 'Jonathan',      'MI', '49201', date '2010-10-12' );
insert into bk_customers  values  (226656, 'Randall', 'Randell',     'NJ', '08251', date '2012-08-08' );
insert into bk_customers  values  (222477, 'Rossetti', 'Christina',  'MI', '49742', date '2012-07-11' );
insert into bk_customers  values  (227105, 'Kafka', 'Franz',         'MA', '02297', date '2010-12-31' );
insert into bk_customers  values  (202958, 'Denver', null,           'IL', '60405', date '2012-01-15' );
insert into bk_customers  values  (218709, 'Bonnard', 'Paul',        'MA', '02558', date '2005-11-15' );
insert into bk_customers  values  (217796, 'Anders', null,           'IL', '62505', date '2012-03-30' );
insert into bk_customers  values  (272787, 'Carlson', 'Ben',         'IL', '62505', date '2012-05-05' );
insert into bk_customers  values  (234709, 'Brahms', 'Johnnie',      'MA', '02558', date '2014-08-15' );
insert into bk_customers  values  (217002, 'Grieg', 'Edvard',        'IL', '62329', date '2014-06-28' );
insert into bk_customers  values  (272611, 'Jarrett', 'Keith',       'IL', '62329', date '2014-07-11' );
insert into bk_customers  values  (299099, 'Sam', 'Dave',            'CA', '94141', date '2012-01-01' );
insert into bk_customers  values  (259906, 'Capybara', 'Wile E.',    'CA', '94132', date '2014-08-05' );
insert into bk_customers  values  (259907, 'Hedge', 'Mr.',           'CA', '94132', date '2012-09-05' );
insert into bk_customers  values  (282716, 'Biederbecke','Dwight',   'PA', '18106', date '2014-01-01' );
insert into bk_customers  values  (287261, 'Biederbecke','Bix',      'PA', '18106', date '2014-08-01' );
insert into bk_customers  values  (226275, 'Dalrymple','Jack',       'SD', '57216', date '2014-01-01' );
insert into bk_customers  values  (228175, 'Cardin','Benjamin',      'MD', '20609', date '2014-04-02' );
insert into bk_customers  values  (228275, 'Mikulski','Barbara',     'MD', '21203', date '2014-04-04' );
insert into bk_customers  values  (228352, 'Edwards','Donna',        'MD', '21205', date'2014-06-08' );


-- ------------------------------------------------------------------
-- orders and  order_details  


-- ------------------------------------------------------------------
  
   /* Jan 2015 */
   
Insert into bk_order_headers    values(12900, date '2015-01-25', 226656);
   Insert into bk_order_details values(12900, 1, 1401,  20,  50.00);
   Insert into bk_order_details values(12900, 2, 1305,  125,  5.00);
      
Insert into bk_order_headers    values(12901, date '2015-01-26', 259906);
   Insert into bk_order_details values(12901, 1, 1401,  50,  49.00);

Insert into bk_order_headers    values(12354, date '2015-01-20', 290298);

Insert into bk_order_headers    values(12855, date '2015-01-18', 221297);
   Insert into bk_order_details values(12855, 1, 1101,  5,  59.99);
   Insert into bk_order_details values(12855, 2, 1142,  5,  39.00);
   Insert into bk_order_details values(12855, 3, 1162,  2,  35.00);

Insert into bk_order_headers    values(12961, date '2015-01-22', 222477);
   Insert into bk_order_details values(12961, 1, 1142,  1,  34.95);
   Insert into bk_order_details values(12961, 2, 1128,  5,  46.95);
   Insert into bk_order_details values(12961, 3, 2002,  1,  39.00);
   
Insert into bk_order_headers    values(12962, date '2015-01-28', 267780);
   Insert into bk_order_details values(12962, 1, 2009,  5,  34.95);
   Insert into bk_order_details values(12962, 2, 2008,  1,  46.95);
   Insert into bk_order_details values(12962, 3, 2007,  1,  39.00);
   Insert into bk_order_details values(12962, 4, 2002,  1,  39.00);
   


   /* Feb 2015 */
   
Insert into bk_order_headers    values(12914, date '2015-02-15', 272787);
   Insert into bk_order_details values(12914, 1, 1103,  23,  12.00);

Insert into bk_order_headers    values(12936, date '2015-02-20', 258595);
   Insert into bk_order_details values(12936, 1, 2008,  2,  12.50);

Insert into bk_order_headers    values(12911, date '2015-02-12', 221297);
   Insert into bk_order_details values(12911, 1, 2007,  1,  40.49);
   Insert into bk_order_details values(12911, 2, 1357,  2,  23.40);
   Insert into bk_order_details values(12911, 3, 1537,  3,  28.19);

Insert into bk_order_headers    values(12812, date '2015-02-12', 227105);
   Insert into bk_order_details values(12812, 1, 2009,  1,  26.99);

Insert into bk_order_headers    values(12814, date '2015-02-15', 290298);
   Insert into bk_order_details values(12814, 1, 1258,  1,  45.99);   
   
Insert into bk_order_headers    values(13142, date '2015-02-12', 227105);
   Insert into bk_order_details values(13142, 1, 1279,  1,  26.99);

Insert into bk_order_headers    values(13144, date '2015-02-15', 290298);
   Insert into bk_order_details values(13144, 1, 1304,  1,  45.99);  
 
Insert into bk_order_headers    values(13145, date '2015-02-15', 222477);
   Insert into bk_order_details values(13145, 1, 1602,  1,  2.75);  
   Insert into bk_order_details values(13145, 2, 1077,  2,  40.75);  
 

   
   /* Mar 2015 */
   
Insert into bk_order_headers    values(13840, date '2015-03-01', 267780);
   Insert into bk_order_details values(13840, 1, 1103,  2,  12.00);

Insert into bk_order_headers    values(13841, date '2015-03-02', 272787);
   Insert into bk_order_details values(13841, 1, 1448, 50,  25.00);
   
Insert into bk_order_headers    values(13850, date '2015-03-02', 234138);
   Insert into bk_order_details values(13850, 1, 1279,  1,  40.49);      

Insert into bk_order_headers    values(13224, date '2015-03-08', 218709);
   Insert into bk_order_details values(13224, 1, 1101,  8,  55.19);
  
Insert into bk_order_headers    values(13852, date '2015-03-08', 261502);
   Insert into bk_order_details values(13852, 1, 1279,  1,  40.49);
   
Insert into bk_order_headers    values(13001, date '2015-03-04', 282716);
   Insert into bk_order_details values(13001, 1, 1109,  3, 25.00);
   Insert into bk_order_details values(13001, 2, 1161,  3, 35.00);

Insert into bk_order_headers    values(13002, date '2015-03-12', 282716);
   Insert into bk_order_details values(13002, 1, 1258,  1,  44.99);
   Insert into bk_order_details values(13002, 2, 1619,  2,  35.00);
   Insert into bk_order_details values(13002, 3, 1948,  1,  40.94);
   Insert into bk_order_details values(13002, 4, 1162,  1,  35.00);
   Insert into bk_order_details values(13002, 5, 1128,  1,  46.20);

Insert into bk_order_headers    values(13005, date '2015-03-13', 282716);
   Insert into bk_order_details values(13005, 1, 1628,  1,   32.00);
   Insert into bk_order_details values(13005, 2, 1629,  1,   19.95);
   
Insert into bk_order_headers    values(13006, date '2015-03-13', 272787 );
   Insert into bk_order_details values(13006, 1, 1628,  1,   32.00);
   Insert into bk_order_details values(13006, 2, 1629,  1,   19.95);
   
Insert into bk_order_headers    values(13007, date '2015-03-12', 272787);
   Insert into bk_order_details values(13007, 1, 1258,  1,  44.99);
   Insert into bk_order_details values(13007, 2, 1619,  2,  35.00);
   Insert into bk_order_details values(13007, 3, 1128,  1,  46.20); 

Insert into bk_order_headers    values(15013, date '2015-03-20', 282716);
   Insert into bk_order_details values(15013, 1, 1305,  49,  6.00);
   Insert into bk_order_details values(15013, 2, 1401,  100,  65.00);

Insert into bk_order_headers    values(15014, date '2015-03-21', 282716);
   Insert into bk_order_details values(15014, 1, 1628,  10,   32.00);
   Insert into bk_order_details values(15014, 2, 1629,  10,   19.95);
   
Insert into bk_order_headers    values(15022, date '2015-03-22', 282716);
   Insert into bk_order_details values(15022, 1, 1627,   1,  199.95);
   
Insert into bk_order_headers    values(15023, date '2015-03-23', 282716);
   Insert into bk_order_details values(15023, 1, 1978,   5,   92.00);   
 
Insert into bk_order_headers    values(15025, date '2015-03-23', 282716);
   Insert into bk_order_details values(15025, 1, 1602, 300,    2.50);
   Insert into bk_order_details values(15025, 3, 1602, 97,     2.00);
   
Insert into bk_order_headers    values(15034, date '2015-03-24', 282716);
   Insert into bk_order_details values(15034, 1, 1619,   1,   29.99);
   Insert into bk_order_details values(15034, 2, 1619,   2,   15.95);
   
Insert into bk_order_headers    values(15035, date '2015-03-25', 282716);
   Insert into bk_order_details values(15035, 1, 1142,   2,   90.00);
   
Insert into bk_order_headers    values(15040, date '2015-03-26', 282716);
   Insert into bk_order_details values(15040, 1, 1162,   1,   32.00);
   Insert into bk_order_details values(15040, 2, 1626,   1 ,  19.95);
   
Insert into bk_order_headers    values(15017, date '2015-03-26', 282716);
   Insert into bk_order_details values(15017, 1, 1625,   1,   4.00);
   
Insert into bk_order_headers    values(15008, date '2015-03-23', 282716);
   Insert into bk_order_details values(15008, 1, 1628,  2,   32.00);
   Insert into bk_order_details values(15008, 2, 1448,  5,  25.00);
   
Insert into bk_order_headers    values(15009, date '2015-03-22', 282716);
   Insert into bk_order_details values(15009, 2, 1142,  5,    39.00); 
    
Insert into bk_order_headers    values(14007, date '2015-03-03', 276381);
   Insert into bk_order_details values(14007, 1, 1448, 50,  25.00);
   
Insert into bk_order_headers    values(14002, date '2015-03-08', 234138);
   Insert into bk_order_details values(14002, 1, 1107,  11,  25.00);
   Insert into bk_order_details values(14002, 2, 1106,  12,  25.50);
   
Insert into bk_order_headers    values(14003, date '2015-03-08', 200368);
   Insert into bk_order_details values(14003, 1, 1104,  5,  45.00);      
   
   
   /* Apr 2015 */
   
Insert into bk_order_headers    values(16853, date '2015-04-02', 234138);
   Insert into bk_order_details values(16853, 1, 1448,  10,  30.00);
   Insert into bk_order_details values(16853, 2, 1162,  20,  34.95);
         
Insert into bk_order_headers    values(16455, date '2015-04-05', 212921);
   Insert into bk_order_details values(16455, 1, 1279,  1,  40.49);
      
Insert into bk_order_headers    values(16560, date '2015-04-15', 276381);
   Insert into bk_order_details values(16560, 1, 1279,  1,  40.49);
   
Insert into bk_order_headers    values(16256, date '2015-04-08', 272787);
   Insert into bk_order_details values(16256, 1, 1103,  2,  12.00);
   Insert into bk_order_details values(16256, 2, 1104,  1,  45.00);
   

   /* May 2015 */
   
Insert into bk_order_headers    values(23890, date '2015-05-01', 212921);
   Insert into bk_order_details values(23890, 1, 1103, 11, 15.00);

Insert into bk_order_headers    values(25803, date '2015-05-02', 224038);
   Insert into bk_order_details values(25803, 1, 1128,  25,  45.00);
   Insert into bk_order_details values(25803, 2, 1301,  15,  45.50);
   Insert into bk_order_details values(25803, 3, 1304,  5,   59.99);

Insert into bk_order_headers    values(22774, date '2015-05-04', 239427);
   Insert into bk_order_details values(22774, 1, 1304,  50,  45.00);
   Insert into bk_order_details values(22774, 2, 1305,  50,   9.99);
     
Insert into bk_order_headers    values(22812, date '2015-05-05', 260368);
   Insert into bk_order_details values(22812, 1, 1128,  1,  49.95); 
   
Insert into bk_order_headers    values(24802, date '2015-05-06', 228175);
   Insert into bk_order_details values(24802, 1, 1103,  3,  15.00);
   Insert into bk_order_details values(24802, 2, 1306,  5,  250.12);

Insert into bk_order_headers    values(22891, date '2015-05-05', 228175);
   Insert into bk_order_details values(22891, 1, 1142,  1, 15.00);

Insert into bk_order_headers    values(22345, date '2015-05-26', 224038);
   Insert into bk_order_details values(22345, 1, 1104,  5,  45.00);
   Insert into bk_order_details values(22345, 2, 1306,  5,  250.12);

Insert into bk_order_headers    values(22331, date '2015-05-24', 212921);
   Insert into bk_order_details values(22331, 1, 1142,  5, 15.00);
 

   /* June 2015 */

Insert into bk_order_headers    values(32903, date '2015-06-02', 226656);
   Insert into bk_order_details values(32903, 1, 1401,  1,  58.00);
   
Insert into bk_order_headers    values(32904, date '2015-06-04', 259906);
   Insert into bk_order_details values(32904, 1, 1305,  450,  5.19);
   Insert into bk_order_details values(32904, 2, 1448,  4,  29.69);   
   
Insert into bk_order_headers    values(32553, date '2015-06-12', 227105);
   Insert into bk_order_details values(32553, 1, 1103,  200,  12.00);
   Insert into bk_order_details values(32553, 2, 1104,  100,  45.00);
   
Insert into bk_order_headers    values(32554, date '2015-06-20', 290298);

Insert into bk_order_headers    values(32555, date '2015-06-18', 221297);
   Insert into bk_order_details values(32555, 1, 1101,  5,  59.99);
   Insert into bk_order_details values(32555, 2, 1142,  5,  39.00);
   Insert into bk_order_details values(32555, 3, 1162,  2,  35.00);

Insert into bk_order_headers    values(32561, date '2015-06-22', 222477);
   Insert into bk_order_details values(32561, 1, 1142,  1,  34.95);
   Insert into bk_order_details values(32561, 2, 1128,  5,  46.95);
   Insert into bk_order_details values(32561, 3, 2002,  1,  39.00);
   
Insert into bk_order_headers    values(32562, date '2015-06-28', 267780);
   Insert into bk_order_details values(32562, 1, 2009,  5,  34.95);
   Insert into bk_order_details values(32562, 2, 2008,  1,  46.95);
   Insert into bk_order_details values(32562, 3, 2007,  1,  39.00);
   Insert into bk_order_details values(32562, 4, 2002,  1,  39.00);

Insert into bk_order_headers    values(30814, date '2015-06-15', 272787);
   Insert into bk_order_details values(30814, 1, 1103,  23,  12.00);

Insert into bk_order_headers    values(30815, date '2015-06-16', 272787);
   Insert into bk_order_details values(30815, 1, 1448, 155,  25.00);

Insert into bk_order_headers    values(32254, date '2015-06-23', 263119);
   Insert into bk_order_details values(32254, 2, 2008,  10,   46.95);
   Insert into bk_order_details values(32254, 3, 2007,  10,   39.00);

Insert into bk_order_headers    values(18255, date '2015-06-28', 267780);
   Insert into bk_order_details values(18255, 1, 1101,  5,    59.99);
   Insert into bk_order_details values(18255, 2, 1142,  5,    39.00);
   Insert into bk_order_details values(18255, 3, 1162,  2,    35.00);
   
Insert into bk_order_headers    values(18261, date '2015-06-28', 200368);
   Insert into bk_order_details values(18261, 1, 1142,  100,  34.95);
   Insert into bk_order_details values(18261, 2, 1128,  50,   46.95);
   Insert into bk_order_details values(18261, 3, 2002,  100,  39.00);
   
Insert into bk_order_headers    values(32905, date '2015-06-02', 259906);
   Insert into bk_order_details values(32905, 1, 2028,  1,  58.00);

Insert into bk_order_headers    values(21841, date '2015-06-02', 267780);
   Insert into bk_order_details values(21841, 1, 1448, 50,  25.00);
   
Insert into bk_order_headers    values(21850, date '2015-06-02', 261502);
   Insert into bk_order_details values(21850, 1, 1162,  1,  30.49);
   Insert into bk_order_details values(21850, 2, 1109,  1,  25.00);
      
Insert into bk_order_headers    values(28045, date '2015-06-18', 267780);
   Insert into bk_order_details values(28045, 1, 1128,  1,  35.99);   
   
Insert into bk_order_headers    values(2200,  date '2015-06-18', 261502);
   Insert into bk_order_details values(2200, 1, 1200,  5,  16.33);
   Insert into bk_order_details values(2200, 2, 1180,  5,  45.99);
   Insert into bk_order_details values(2200, 3, 1128,  5,  46.20);


   /* July 2015 */

Insert into bk_order_headers    values(51262, date '2015-07-02', 272787);
   Insert into bk_order_details values(51262, 1, 2009,  5,    34.95);
   Insert into bk_order_details values(51262, 4, 2002,  1,    39.00);
 
Insert into bk_order_headers    values(51300, date '2015-07-05', 261502);

Insert into bk_order_headers    values(51302, date '2015-07-05', 222477);
   Insert into bk_order_details values(51302, 1, 1258,  1,    44.99);

Insert into bk_order_headers    values(51310, date '2015-07-09', 218709);
   Insert into bk_order_details values(51310, 1, 1774,  1,    14.67);
   Insert into bk_order_details values(51310, 2, 1619,  1,    26.99);
   Insert into bk_order_details values(51310, 3, 1269,  1,    58.83);
   
Insert into bk_order_headers    values(51321, date '2015-07-29', 261502);
   Insert into bk_order_details values(51321, 1, 2008, 20,  54.59);
   Insert into bk_order_details values(51321, 2, 1978, 10,  95.60);

Insert into bk_order_headers    values(51328, date '2015-07-30', 290298);
   Insert into bk_order_details values(51328, 1, 1182,  70,  44.99);

Insert into bk_order_headers    values(51345, date '2015-07-30', 227105);
   Insert into bk_order_details values(51345, 1, 1105, 40,  55.15);
   
Insert into bk_order_headers    values(32906, date '2015-07-04', 259906);
   Insert into bk_order_details values(32906, 1, 2028,  2,  58.50);
   Insert into bk_order_details values(32906, 2, 1103,  11,  15.00); 
   Insert into bk_order_details values(32906, 3, 1103,  1,  5.75); 
 
Insert into bk_order_headers    values(22909, date '2015-07-25', 239427);
   Insert into bk_order_details values(22909, 1, 1104,  5,  45.00);
   
Insert into bk_order_headers    values(22910, date '2015-07-25', 218709);
   Insert into bk_order_details values(22910, 1, 1105,  5,  49.99);
   Insert into bk_order_details values(22910, 2, 1162,  5,  35.00);

Insert into bk_order_headers    values(32997, date '2015-07-22', 239427);
   Insert into bk_order_details values(32997, 1, 1948,  5,  40.94);  
   Insert into bk_order_details values(32997, 2, 1199,  5,  18.39);
   Insert into bk_order_details values(32997, 3, 1457,  5,  53.99);
   Insert into bk_order_details values(32997, 4, 1133,  5,  18.15);
   Insert into bk_order_details values(32997, 5, 1162,  5,  36.79);

Insert into bk_order_headers    values(32998, date '2015-07-22', 261502);
   Insert into bk_order_details values(32998, 1, 2006,  3,  20.00);
   
Insert into bk_order_headers    values(41005, date '2015-07-28', 290298);
   Insert into bk_order_details values(41005, 1, 1142,  2,  42.45);
   Insert into bk_order_details values(41005, 2, 1107,  4,  21.50);

Insert into bk_order_headers    values(41006, date '2015-07-28', 267780);
   Insert into bk_order_details values(41006, 1, 1142, 10, 42.95);  
   
Insert into bk_order_headers    values(42899, date '2015-07-29', 261502);
   Insert into bk_order_details values(42899, 1, 1128,  5, 25.00);
   Insert into bk_order_details values(42899, 2, 1103,  1 , 10.95);    


   /* August 2015 */

Insert into bk_order_headers    values(32907, date '2015-08-04', 259906);
   Insert into bk_order_details values(32907, 1, 2028,  3,  58.00);
   Insert into bk_order_details values(32907, 2, 1142,  10,  11.14); 
 
Insert into bk_order_headers    values(81346, date '2015-08-03', 227105);
   Insert into bk_order_details values(81346, 1, 1619,  100,  26.99);
   Insert into bk_order_details values(81346, 2, 1401,  200,  50.04);
   Insert into bk_order_details values(81346, 3, 1108,  600,  27.60);

Insert into bk_order_headers    values(18347, date '2015-08-03', 218709);
   Insert into bk_order_details values(18347, 1, 1258,  1,  44.99);
   Insert into bk_order_details values(18347, 2, 1619,  2,  35.00);
   Insert into bk_order_details values(18347, 3, 1948,  1,  40.94);
   Insert into bk_order_details values(18347, 4, 1162,  1,  35.00);
   Insert into bk_order_details values(18347, 5, 1128,  1,  46.20);
   
Insert into bk_order_headers    values(18409, date '2015-08-07', 267780);

Insert into bk_order_headers    values(18410, date '2015-08-07', 261502);
   Insert into bk_order_details values(18410, 1, 2006,  35,  20.00);

Insert into bk_order_headers    values(21254, date '2015-08-23', 263119);
   Insert into bk_order_details values(21254, 2, 2008,  10,   46.95);
   Insert into bk_order_details values(21254, 3, 2007,  10,   39.00);

Insert into bk_order_headers    values(21255, date '2015-08-28', 267780);
   Insert into bk_order_details values(21255, 1, 1101,  5,    59.99);
   Insert into bk_order_details values(21255, 2, 1142,  5,    39.00);
   Insert into bk_order_details values(21255, 3, 1162,  2,    35.00);
   
Insert into bk_order_headers    values(21261, date '2015-08-28', 200368);
   Insert into bk_order_details values(21261, 1, 1142,  100,  34.95);
   Insert into bk_order_details values(21261, 2, 1128,  50,   46.95);
   Insert into bk_order_details values(21261, 3, 2002,  100,  39.00);

Insert into bk_order_headers    values(14011, date '2015-08-12', 227105);
   Insert into bk_order_details values(14011, 1, 1128, 50, 25.00);

Insert into bk_order_headers    values(14020, date '2015-08-12', 227105);
   Insert into bk_order_details values(14020, 1, 1109, 30, 25.00);
   Insert into bk_order_details values(14020, 2, 1161, 30, 35.00);

Insert into bk_order_headers    values(14042, date '2015-08-18', 267780);
   Insert into bk_order_details values(14042, 1, 1128,  25,  12.50);
   Insert into bk_order_details values(14042, 2, 2008,  40,  34.95);
   Insert into bk_order_details values(14042, 3, 2007,  25,  35.00);
   
Insert into bk_order_headers    values(14083, date '2015-08-11',  267780);
   Insert into bk_order_details values(14083, 1, 1162,  1,  32.45);
   Insert into bk_order_details values(14083, 2, 1161,  3,  35.00);

Insert into bk_order_headers    values(14091, date '2015-08-12', 222477);
   Insert into bk_order_details values(14091, 1, 1128,  1,  49.95);
   Insert into bk_order_details values(14091, 2, 1161,  1,  35.00);
   Insert into bk_order_details values(14091, 3, 2002,  1,  39.00);

Insert into bk_order_headers    values(15052, date '2015-08-12', 227105);
   Insert into bk_order_details values(15052, 1, 1102,  2,  49.99);

Insert into bk_order_headers    values(32900, date '2015-08-25', 226656);
   Insert into bk_order_details values(32900, 1, 1401,  20,  50.00);
   Insert into bk_order_details values(32900, 2, 1305,  125,  5.00);
            
Insert into bk_order_headers    values(32901, date '2015-08-26', 259906);
   Insert into bk_order_details values(32901, 1, 1401,  50,  49.00);
   
Insert into bk_order_headers    values(32902, date '2015-08-27', 259906);
   Insert into bk_order_details values(32902, 1, 1305,  49,  6.00);
   Insert into bk_order_details values(32902, 2, 1401,  100,  65.00);
   
 
/* September 2015 */

Insert into bk_order_headers    values(30835, date '2015-09-17', 211483);
   Insert into bk_order_details values(30835, 1, 1103,  25,  10.95);

Insert into bk_order_headers    values(30836, date '2015-09-20', 258595);
   Insert into bk_order_details values(30836, 1, 2008,  2,  12.50);

Insert into bk_order_headers    values(61811, date '2015-09-12', 221297);
   Insert into bk_order_details values(61811, 1, 2007,  1,  40.49);
   Insert into bk_order_details values(61811, 2, 1357,  2,  23.40);
   Insert into bk_order_details values(61811, 3, 1537,  3,  28.19);

Insert into bk_order_headers    values(61812, date '2015-09-12', 227105);
   Insert into bk_order_details values(61812, 1, 2009,  1,  26.99);

Insert into bk_order_headers    values(61814, date '2015-09-15', 290298);
   Insert into bk_order_details values(61814, 1, 1258,  1,  45.99);

Insert into bk_order_headers    values(61818, date '2015-09-16', 212921);
   Insert into bk_order_details values(61818, 1, 1106, 30,  20.00);
   Insert into bk_order_details values(61818, 2, 1537,  2,  25.00);
   Insert into bk_order_details values(61818, 3, 1180,  1,  46.99);
   Insert into bk_order_details values(61818, 4, 1979,  1,  53.99);
   
Insert into bk_order_headers    values(51710, date '2015-09-08', 261502);
   Insert into bk_order_details values(51710, 1, 2009,  99,  245.49);

Insert into bk_order_headers    values(51712, date '2015-09-09', 290298);
   Insert into bk_order_details values(51712, 1, 1835,  1,  45.99);
   Insert into bk_order_details values(51712, 2, 1162,  99,  30.00);

Insert into bk_order_headers    values(52004, date '2015-09-22', 272787);
   Insert into bk_order_details values(52004, 2, 1161,  1,  35.00);

Insert into bk_order_headers    values(52005, date '2015-09-30', 272787);
   Insert into bk_order_details values(52005, 1, 1448, 50,  25.00); 

Insert into bk_order_headers    values(52012, date '2015-09-22', 272787);
   Insert into bk_order_details values(52012, 1, 1448, 50,  25.00);

Insert into bk_order_headers    values(52013, date '2015-09-22', 272787);
   Insert into bk_order_details values(52013, 1, 2009,  2,  12.50);

Insert into bk_order_headers    values(50847, date '2015-09-20', 296598);
   Insert into bk_order_details values(50847, 1, 1103,  2,  12.00);

Insert into bk_order_headers    values(50848, date '2015-09-21', 263119);
   Insert into bk_order_details values(50848, 1, 2007,  2,  12.50);

Insert into bk_order_headers    values(50849, date '2015-09-22', 217796);
   Insert into bk_order_details values(50849, 1, 1448, 50,  25.00);

Insert into bk_order_headers    values(51833, date '2015-09-08', 218709);
   Insert into bk_order_details values(51833, 1, 1101,  8,  55.19);
   Insert into bk_order_details values(51833, 2, 1104,  1,  45.00);
   Insert into bk_order_details values(51833, 3, 1162,  20, 34.95);
   Insert into bk_order_details values(51833, 4, 1279,  1,  40.49);
   
Insert into bk_order_headers    values(51850, date '2015-09-08', 299099);
   Insert into bk_order_details values(51850, 1, 1677, 1, 70.00);
   
Insert into bk_order_headers    values(51851, date '2015-09-12', 259969);
   Insert into bk_order_details values(51851, 1, 1162, 1, 35.00);
   Insert into bk_order_details values(51851, 2, 1269, 1, 63.95);
   Insert into bk_order_details values(51851, 3, 2017, 1, 49.99);

Insert into bk_order_headers    values(51852, date '2015-09-12', 259969);
   Insert into bk_order_details values(51852, 1, 2032, 1, 0.00);
   Insert into bk_order_details values(51852, 3, 2017, 1, 0.00);
   
Insert into bk_order_headers    values(51853, date '2015-09-25', 218709);
   Insert into bk_order_details values(51853, 4, 1161, 100, 25.25);
   
Insert into bk_order_headers    values(51854, date '2015-09-26', 239427);
   Insert into bk_order_details values(51854,  3, 1537, 15, 15.37);

Insert into bk_order_headers    values(51855, date '2015-09-26', 260368);
   Insert into bk_order_details values(51855, 4, 1200, 2, 17.00);
   Insert into bk_order_details values(51855, 1, 1200, 4, 16.00);
   Insert into bk_order_details values(51855, 2, 1200, 2, 16.00);
   Insert into bk_order_details values(51855, 3, 1200, 3, 17.00);
   
Insert into bk_order_headers    values(51856, date '2015-09-28', 272611);
   Insert into bk_order_details values(51856, 4, 1546, 2, 10.39);
   Insert into bk_order_details values(51856, 1, 1545, 2, 13.00);

Insert into bk_order_headers   values(72820,  date '2015-09-19', 227105);
   Insert into bk_order_details values(72820, 1, 1628,  6,   32.00);
   Insert into bk_order_details values(72820, 2, 1629,  6,   19.95);

Insert into bk_order_headers    values(72821, date '2015-09-19', 222477);
   Insert into bk_order_details values(72821, 1, 1258,  1,  44.99);
 
Insert into bk_order_headers    values(72812, date '2015-09-30', 239427);
   Insert into bk_order_details values(72812, 1, 1357,  40,  26.00);
   Insert into bk_order_details values(72812, 2, 1425,  40,  28.09);
      
Insert into bk_order_headers    values(72813, date '2015-09-30', 239427);
   Insert into bk_order_details values(72813, 1, 1175,  1,  45.00);
   Insert into bk_order_details values(72813, 2, 1180,  1,  49.99);
   Insert into bk_order_details values(72813, 3, 1182,  1,  45.00);
  
  
   /* October 2015 */


   /* November 2015 */

Insert into bk_order_headers    values(30816, date '2015-11-06', 272787);
   Insert into bk_order_details values(30816, 1, 1448, 50,  25.00);
   
Insert into bk_order_headers    values(30820, date '2015-11-10', 234138);
   Insert into bk_order_details values(30820, 1, 1448, 50,  25.00);

Insert into bk_order_headers    values(30821, date '2015-11-10', 217796);
   Insert into bk_order_details values(30821, 1, 1103,  2,  10.95);

Insert into bk_order_headers    values(30822, date '2015-11-12', 211483);
   Insert into bk_order_details values(30822, 1, 1128,  10,  49.95);  

Insert into bk_order_headers    values(30855, date '2015-11-23', 282716);
   Insert into bk_order_details values(30855, 1, 1602, 500,    2.00);

Insert into bk_order_headers    values(51840, date '2015-11-01', 267780);
   Insert into bk_order_details values(51840, 1, 1103,  2,  12.00);

Insert into bk_order_headers    values(51841, date '2015-11-02', 272787);
   Insert into bk_order_details values(51841, 1, 1448, 50,  25.00);
   Insert into bk_order_details values(51841, 2, 1279,  1,  40.49);
      
Insert into bk_order_headers    values(51842, date '2015-11-18', 222477);
   Insert into bk_order_details values(51842, 1, 1162,  1,  35.99);   
   Insert into bk_order_details values(51842, 2, 1199,  5,  18.39);
   Insert into bk_order_details values(51842, 4, 1133,  5,  18.15);

Insert into bk_order_headers    values(30824, date '2015-11-05', 222477);
   Insert into bk_order_details values(30824, 1, 1670, 10,  40.00);
   Insert into bk_order_details values(30824, 4, 2005, 20,  45.00);
   
Insert into bk_order_headers    values(20019, date '2015-11-02', 272787);
   Insert into bk_order_details values(20019, 1, 1448, 50,  25.00);

Insert into bk_order_headers    values(20029, date '2015-11-12', 272787);
   Insert into bk_order_details values(20029, 1, 1103,  20,  10.95);

Insert into bk_order_headers    values(20038, date '2015-11-12', 272787);
   Insert into bk_order_details values(20038, 1, 1103,  2,  12.00);

Insert into bk_order_headers    values(15648, date '2015-11-18', 227105);
   Insert into bk_order_details values(15648, 1, 1106,  50,  34.95);
   Insert into bk_order_details values(15648, 2, 1107,  50,  20.95);
   Insert into bk_order_details values(15648, 3, 2002,  50,  39.00);

Insert into bk_order_headers    values(18003, date '2015-11-12', 217796);
   Insert into bk_order_details values(18003, 1, 2009,  5,  34.95);
   Insert into bk_order_details values(18003, 2, 2008,  1,  46.95);
   
Insert into bk_order_headers    values(18013, date '2015-11-13', 217796);
   Insert into bk_order_details values(18013, 1, 1103,  2,  10.95);
   Insert into bk_order_details values(18013, 2, 1106,  1,  29.00);

Insert into bk_order_headers    values(30825, date '2015-11-21', 221297);
   Insert into bk_order_details values(30825, 1, 1128,  4,  45.49);
   
Insert into bk_order_headers    values(30826, date '2015-11-24', 211483);
   Insert into bk_order_details values(30826, 2, 1161,  16,  35.00);

Insert into bk_order_headers    values(30833, date '2015-11-14', 211483);
   Insert into bk_order_details values(30833, 1, 1448, 50,  25.00);

Insert into bk_order_headers    values(30834, date '2015-11-17', 211483);
   Insert into bk_order_details values(30834, 1, 1128,  1,  49.95);

 
 Insert into bk_order_headers   values(82897, date '2015-11-22', 261502);
   Insert into bk_order_details values(82897, 1, 1128, 10,  49.95);
   Insert into bk_order_details values(82897, 2, 1161, 10,  35.00);
   Insert into bk_order_details values(82897, 3, 2002, 10,  39.00);   

Insert into bk_order_headers    values(82898, date '2015-11-22', 261502);
   Insert into bk_order_details values(82898, 1, 2006,  3,  20.00);
   Insert into bk_order_details values(82898, 4, 1188,  3,  49.99);
   Insert into bk_order_details values(82898, 3, 1877,  3,  45.00);
   Insert into bk_order_details values(82898, 2, 1629,  1,   19.95);   
   
Insert into bk_order_headers    values(81005, date '2015-11-28', 290298);
   Insert into bk_order_details values(81005, 1, 1142,  2,  42.45);
   Insert into bk_order_details values(81005, 2, 1107,  4,  21.50);

Insert into bk_order_headers    values(81006, date '2015-11-28', 208950);
   Insert into bk_order_details values(81006, 1, 1103, 10, 10.95);  
   
Insert into bk_order_headers    values(82899, date '2015-11-29', 261502);
   Insert into bk_order_details values(82899, 1, 1128, 50, 25.00);
   Insert into bk_order_details values(82899, 2, 1184,  5,  49.99);
   Insert into bk_order_details values(82899, 3, 1185,  5,  49.99);
   Insert into bk_order_details values(82899, 4, 1175,  5,  34.90);
   Insert into bk_order_details values(82899, 5, 1425,  5,  25.90); 

   /* December 2015 */
   
Insert into bk_order_headers    values(60002, date '2015-12-03', 222477);
   Insert into bk_order_details values(60002, 1, 1103,  2,  10.95);
   Insert into bk_order_details values(60002, 2, 1106,  1,  29.00);
   
Insert into bk_order_headers    values(60005, date '2015-12-06', 227105);
   Insert into bk_order_details values(60005, 1, 1110,  2,  50.00);
   Insert into bk_order_details values(60005, 2, 1161,  100,  44.99);
   Insert into bk_order_details values(60005, 3, 1128,  400,  41.40);

Insert into bk_order_headers    values(60009, date '2015-12-11',  267780);
   Insert into bk_order_details values(60009, 1, 1162,  1,  32.45);
   Insert into bk_order_details values(60009, 2, 1161,  3,  35.00);
   Insert into bk_order_details values(60009, 3, 1142,  100,  34.95);
   Insert into bk_order_details values(60009, 4, 1128,  50,   46.95);
   Insert into bk_order_details values(60009, 5, 2002,  100,  39.00);
   
Insert into bk_order_headers    values(60011, date '2015-12-02', 272787);
   Insert into bk_order_details values(60011, 1, 1162,  1,  32.45);
   Insert into bk_order_details values(60011, 2, 1161,  3,  35.00);
   Insert into bk_order_details values(60011, 3, 2028,  1,  58.00);
   
Insert into bk_order_headers    values(60012, date '2015-12-11',  267780);
   Insert into bk_order_details values(60012, 1, 1162,  1,  32.45);
   Insert into bk_order_details values(60012, 2, 1161,  3,  35.00);

Insert into bk_order_headers    values(60018, date '2015-12-12', 222477);
   Insert into bk_order_details values(60018, 1, 1128,  1,  49.95);
   Insert into bk_order_details values(60018, 2, 1161,  1,  35.00);
   Insert into bk_order_details values(60018, 3, 2002,  1,  39.00);

Insert into bk_order_headers    values(60019, date '2015-12-12', 227105);
   Insert into bk_order_details values(60019, 1, 1101,  5,  59.99);
   Insert into bk_order_details values(60019, 2, 1142,  5,  39.00);
   Insert into bk_order_details values(60019, 3, 1162,  2,  35.00);

Insert into bk_order_headers    values(60029, date '2015-12-22', 222477);
   Insert into bk_order_details values(60029, 1, 1628,  1,   32.00);
   Insert into bk_order_details values(60029, 2, 1629,  1,   19.95);
   Insert into bk_order_details values(60029, 3, 1258,  1,  44.99);
   Insert into bk_order_details values(60029, 4, 1619,  2,  35.00);
   Insert into bk_order_details values(60029, 5, 1128,  1,  46.20); 
  
Insert into bk_order_headers    values(60025, date '2015-12-28', 267780);
   Insert into bk_order_details values(60025, 1, 1627,   1,  199.95);
   
Insert into bk_order_headers    values(60030, date '2015-12-24', 221297);
   Insert into bk_order_details values(60030, 1, 1627,   1,  199.95);

Insert into bk_order_headers    values(60039, date '2015-12-12', 227105);
   Insert into bk_order_details values(60039, 1, 2009,  1,  26.99);
   Insert into bk_order_details values(60039, 3, 1602, 97,     2.00);
   Insert into bk_order_details values(60039, 2, 1448,  5,  25.00);
   Insert into bk_order_details values(60039, 4, 1305,  50,   9.99);

Insert into bk_order_headers    values(60032, date '2015-12-31', 290298);
   Insert into bk_order_details values(60032, 1, 1101,  5,    59.99);
   Insert into bk_order_details values(60032, 2, 1142,  5,    39.00);
   Insert into bk_order_details values(60032, 3, 1162,  2,    35.00);
   Insert into bk_order_details values(60032, 4, 1401,  50,   46.95);
   Insert into bk_order_details values(60032, 6, 2002,  100,  39.00);
   Insert into bk_order_details values(60032, 7, 1128,  5, 25.00);
   Insert into bk_order_details values(60032, 8, 1103,  1 , 10.95);    
  
Insert into bk_order_headers    values(60027, date '2015-12-31', 227105);
   Insert into bk_order_details values(60027, 1, 2032, 1, 0.00);
   Insert into bk_order_details values(60027, 3, 2017, 1, 0.00);
   Insert into bk_order_details values(60027, 4, 1161, 100, 25.25);
   Insert into bk_order_details values(60027, 6, 1537, 15, 15.37);
   
   
-- ---------------------------------------------------------------
 
   /* January 2016 */   
   
Insert into bk_order_headers    values(31840, date '2016-01-01', 267780);
   Insert into bk_order_details values(31840, 1, 1103,  2,  12.00);

Insert into bk_order_headers    values(31841, date '2016-01-02', 272787);
   Insert into bk_order_details values(31841, 1, 1448, 50,  25.00);
   
Insert into bk_order_headers    values(31850, date '2016-01-02', 234138);
   Insert into bk_order_details values(31850, 1, 1279,  1,  40.49);
   
Insert into bk_order_headers    values(1200,  date '2016-01-18', 212921);
   Insert into bk_order_details values(1200,  1, 1200,  5,  16.33);
   Insert into bk_order_details values(1200,  2, 1199,  5,  18.39);
   Insert into bk_order_details values(1200,  3, 1457,  5,  53.99);
   Insert into bk_order_details values(1200,  4, 1133,  5,  18.15);
   Insert into bk_order_details values(1200,  5, 1448,  5,  36.79);
   Insert into bk_order_details values(1200,  6, 1948,  5,  40.94);
   Insert into bk_order_details values(1200,  7, 1180,  5,  45.99);
   Insert into bk_order_details values(1200,  8, 1128,  5,  46.20);

Insert into bk_order_headers    values(12005, date '2016-01-20', 212921);
   Insert into bk_order_details values(12005, 1, 1448,  1,  27.29);

Insert into bk_order_headers    values(51845, date '2016-01-01', 212921);
   Insert into bk_order_details values(51845, 1, 1103, 11, 15.00);
   Insert into bk_order_details values(51845, 2, 1301, 15,  45.50);
   Insert into bk_order_details values(51845, 3, 1304,  5,  59.99);
   Insert into bk_order_details values(51845, 4, 1541,  5,  12.00);  
   Insert into bk_order_details values(51845, 5, 1545,  5,  13.96);    
   
Insert into bk_order_headers    values(51846, date '2016-01-08', 234138);
   Insert into bk_order_details values(51846, 1, 1107,  11,  25.00);
   Insert into bk_order_details values(51846, 2, 1546,  12,  10.39);
   Insert into bk_order_details values(51846, 3, 2002,   5,  39.00);
   Insert into bk_order_details values(51846, 4, 1103,   2,  12.00);  
   Insert into bk_order_details values(51846, 5, 1541,   2,  12.00); 
   
Insert into bk_order_headers    values(51857, date '2016-01-08', 259969);
   Insert into bk_order_details values(51857, 2, 1425, 2, 28.09);
   Insert into bk_order_details values(51857, 3, 1609, 1, 18.95);
   Insert into bk_order_details values(51857, 4, 1109, 1, 80.00);
   Insert into bk_order_details values(51857, 5, 2009, 1, 29.99);
   
Insert into bk_order_headers    values(51858, date '2016-01-08', 259969);
   Insert into bk_order_details values(51858, 2, 1133, 3, 19.95);
   Insert into bk_order_details values(51858, 3, 1609, 3, 18.95);
   
Insert into bk_order_headers    values(51859, date '2016-01-08', 272611);
   Insert into bk_order_details values(51859, 2, 1128, 1, 49.99);
   Insert into bk_order_details values(51859, 1, 1269, 1, 63.95);
  
Insert into bk_order_headers    values(51860, date '2016-01-08', 299099);
   Insert into bk_order_details values(51860, 4, 2032, 1, 55.99);
     
   /* February 2016 */  

Insert into bk_order_headers    values(19224, date '2016-02-08', 218709);
   Insert into bk_order_details values(19224, 1, 1101,  8,  55.19);

Insert into bk_order_headers    values(19253, date '2016-02-08', 272787);
   Insert into bk_order_details values(19253, 1, 1103,  2,  12.00);
   Insert into bk_order_details values(19253, 2, 1104,  1,  45.00);
   
Insert into bk_order_headers    values(31852, date '2016-02-08', 261502);
   Insert into bk_order_details values(31852, 1, 1279,  1,  40.49);
   
Insert into bk_order_headers    values(31853, date '2016-02-02', 234138);
   Insert into bk_order_details values(31853, 1, 1448,  10,  30.00);
   Insert into bk_order_details values(31853, 2, 1162,  20,  34.95);
         
Insert into bk_order_headers    values(31855, date '2016-02-05', 212921);
   Insert into bk_order_details values(31855, 1, 1279,  1,  40.49);

Insert into bk_order_headers    values(91307, date '2016-02-12', 272787);
   Insert into bk_order_details values(91307, 1, 1258,  1,  44.99);
   Insert into bk_order_details values(91307, 2, 1619,  2,  35.00);
      
Insert into bk_order_headers    values(31860, date '2016-02-15', 276381);
   Insert into bk_order_details values(31860, 1, 1279,  1,  40.49);
   
Insert into bk_order_headers    values(51847, date '2016-02-04', 217796);
   Insert into bk_order_details values(51847, 1, 1541,  2,  10.95);
   Insert into bk_order_details values(51847, 2, 1542,  1,  16.99);

Insert into bk_order_headers    values(51848, date '2016-02-05', 276381);
   Insert into bk_order_details values(51848, 1, 1544, 50,  17.76);

Insert into bk_order_headers    values(51849, date '2016-02-08', 218709);
   Insert into bk_order_details values(51849, 1, 1543, 50,  25.00);
   Insert into bk_order_details values(51849, 2, 1544, 50,  17.76);
   
Insert into bk_order_headers    values(51861, date '2016-02-01', 260368);
   Insert into bk_order_details values(51861, 1, 2032, 1, 57.99);
   Insert into bk_order_details values(51861, 2, 2032, 2, 59.99);
     
Insert into bk_order_headers    values(51862, date '2016-02-02', 272611);
   Insert into bk_order_details values(51862, 1, 1627, 4, 120.18);
     
Insert into bk_order_headers    values(51863, date '2016-02-03', 239427);
   Insert into bk_order_details values(51863, 1, 1629, 42, 19.95);
     
Insert into bk_order_headers    values(51864, date '2016-02-03', 299099);
   Insert into bk_order_details values(51864, 2, 1628, 3,  34.65);
   Insert into bk_order_details values(51864, 3, 1108, 342,34.65);
   Insert into bk_order_details values(51864, 4, 1628, 4,  34.65);  

Insert into bk_order_headers    values(91013, date '2016-02-20', 282716);
   Insert into bk_order_details values(91013, 1, 1619,  49,  6.00);
   Insert into bk_order_details values(91013, 2, 1128,  100,  65.00);

Insert into bk_order_headers    values(91014, date '2016-02-21', 282716);
   Insert into bk_order_details values(91014, 1, 1628,  10,   32.00);
   Insert into bk_order_details values(91014, 2, 1629,  10,   19.95);

Insert into bk_order_headers    values(94106, date '2016-02-28', 267780);
   Insert into bk_order_details values(94106, 1, 1142, 10, 42.95);  
   
Insert into bk_order_headers    values(94299, date '2016-02-29', 261502);
   Insert into bk_order_details values(94299, 1, 1128,  5, 25.00);
   Insert into bk_order_details values(94299, 2, 1103,  1 , 10.95);      
   Insert into bk_order_details values(94299, 3, 1128,  1,  46.20); 
   
Insert into bk_order_headers    values(92812, date '2016-02-19', 260368);
   Insert into bk_order_details values(92812, 1, 1142,  1,  49.95); 
   
Insert into bk_order_headers    values(94802, date '2016-02-20', 228175);
   Insert into bk_order_details values(94802, 1, 1103,  3,  15.00);
   Insert into bk_order_details values(94802, 2, 1306,  5,  250.12);

Insert into bk_order_headers    values(92905, date '2016-02-22', 259906);
   Insert into bk_order_details values(92905, 1, 2028,  1,  58.00);

Insert into bk_order_headers    values(91841, date '2016-02-22', 267780);
   Insert into bk_order_details values(91841, 1, 1142, 150,  25.00);
   
Insert into bk_order_headers    values(91850, date '2016-02-22', 261502);
   Insert into bk_order_details values(91850, 1, 1162,  1,  30.49);
   Insert into bk_order_details values(91850, 2, 1109,  1,  25.00);
  
   /* March 2016 */

Insert into bk_order_headers    values(44890, date '2016-03-01', 212921);
   Insert into bk_order_details values(44890, 1, 1103, 11, 15.00);

Insert into bk_order_headers    values(44803, date '2016-03-02', 224038);
   Insert into bk_order_details values(44803, 1, 1128,  25,  45.00);
   Insert into bk_order_details values(44803, 2, 1301,  15,  45.50);
   Insert into bk_order_details values(44803, 3, 1304,  5,   59.99);

Insert into bk_order_headers    values(44804, date '2016-03-04', 239427);
   Insert into bk_order_details values(44804, 1, 1304,  50,  45.00);
   Insert into bk_order_details values(44804, 2, 1305,  50,   9.99);
     
Insert into bk_order_headers    values(41012, date '2016-03-05', 260368);
   Insert into bk_order_details values(41012, 1, 1128,  1,  49.95); 
   
Insert into bk_order_headers    values(44805, date '2016-03-06', 224038);
   Insert into bk_order_details values(44805, 1, 1104,  5,  45.00);
   Insert into bk_order_details values(44805, 2, 1306,  5,  250.12);

Insert into bk_order_headers    values(44891, date '2016-03-05', 212921);
   Insert into bk_order_details values(44891, 1, 1142,  5, 15.00);

Insert into bk_order_headers    values(41007, date '2016-03-03', 276381);
   Insert into bk_order_details values(41007, 1, 1448, 50,  25.00);
   
Insert into bk_order_headers    values(41002, date '2016-03-08', 234138);
   Insert into bk_order_details values(41002, 1, 1107,  11,  25.00);
   Insert into bk_order_details values(41002, 2, 1106,  12,  25.50);
   
Insert into bk_order_headers    values(41003, date '2016-03-08', 200368);
   Insert into bk_order_details values(41003, 1, 1104,  5,  45.00);
   
Insert into bk_order_headers    values(44606, date '2016-03-14', 217796);
   Insert into bk_order_details values(44606, 1, 1106,  5,  34.95);
   Insert into bk_order_details values(44606, 2, 1107,  5,  20.95);
   Insert into bk_order_details values(44606, 3, 2002,  5,  39.00);

Insert into bk_order_headers    values(44610, date '2016-03-15', 263119);
   Insert into bk_order_details values(44610, 1, 1103,  2,  12.00);  
   
Insert into bk_order_headers    values(44615, date '2016-03-15', 261502);
   Insert into bk_order_details values(44615, 1, 1103,  2,  12.00);
 
 Insert into bk_order_headers   values(1602,  date '2016-03-14', 217796);
   Insert into bk_order_details values(1602,  1, 1103,  2,  10.95);
   Insert into bk_order_details values(1602,  2, 1106,  1,  29.00);

Insert into bk_order_headers    values(1008,  date '2016-03-10', 276381);
   Insert into bk_order_details values(1008,  1, 1670, 50,  40.00);

Insert into bk_order_headers    values(1010,  date '2016-03-10', 218709);
   Insert into bk_order_details values(1010,  1, 1537, 50,  25.00);

Insert into bk_order_headers    values(1011,  date '2016-03-10', 261502);
   Insert into bk_order_details values(1011,  1, 1103,  2,  10.95);

Insert into bk_order_headers    values(1603,  date '2016-03-10', 261502);   
   Insert into bk_order_details values(1603,  1, 2009,  5,  34.95);
   Insert into bk_order_details values(1603,  3, 2007,  1,  39.00);
   Insert into bk_order_details values(1603,  4, 2002,  1,  39.00);

Insert into bk_order_headers    values(1604,  date '2016-03-10', 217796);
   Insert into bk_order_details values(1604,  1, 1103,  25,  10.95);
   Insert into bk_order_details values(1604,  2, 1106,  15,  29.00);

Insert into bk_order_headers    values(32892, date '2016-03-10', 272611);
   Insert into bk_order_details values(32892, 1, 2002,  5, 15.00);

 
Insert into bk_order_headers    values(1027,  date '2016-03-18', 234709);
   Insert into bk_order_details values(1027,  1, 2002,  21,  49.99);
   Insert into bk_order_details values(1027,  2, 1077,  22,  10.99);   
   
Insert into bk_order_headers    values(1004,  date '2016-03-18', 221297);
   Insert into bk_order_details values(1004,  1, 1106,  2,  18.25);

Insert into bk_order_headers    values(32896, date '2016-03-18', 218709);
   Insert into bk_order_details values(32896, 1, 1162,  1,  35.99);

Insert into bk_order_headers    values(1028,  date '2016-03-20', 234709);
   Insert into bk_order_details values(1028,  1, 2002,  1,  19.78);
   Insert into bk_order_details values(1028,  2, 2002, 22,  40.00);
   Insert into bk_order_details values(1028,  3, 2009,  1,  19.95);
   Insert into bk_order_details values(1028,  4, 2006,  1,  46.95);

Insert into bk_order_headers    values(1661,  date '2016-03-15', 261502);
   Insert into bk_order_details values(1661,  1, 1103,  97,  2.00);
   
Insert into bk_order_headers    values(1030,  date '2016-03-22', 234709);
   Insert into bk_order_details values(1030,  1, 1279,  1,  40.49);
   
   

Insert into bk_order_headers    values(1039,  date '2016-03-22', 212921);
   Insert into bk_order_details values(1039,  1, 1448,  1,  30.00);
   Insert into bk_order_details values(1039,  2, 1162,  2,  34.95);
   
Insert into bk_order_headers    values(1040,  date '2016-03-28', 263119);
   Insert into bk_order_details values(1040,  1, 2025,  560,  39.00);
   Insert into bk_order_details values(1040,  2, 2018,  2,  49.99); 

Insert into bk_order_headers    values(31884, date '2016-03-22', 290298);
   Insert into bk_order_details values(31884, 1, 1278,  1,  48.00);
   Insert into bk_order_details values(31884, 2, 1199,  9,  17.99);

Insert into bk_order_headers    values(31885, date '2016-03-22', 217796);
   Insert into bk_order_details values(31885, 1, 1448, 50,  25.00);

Insert into bk_order_headers    values(31889, date '2016-03-22', 227105);
   Insert into bk_order_details values(31889, 1, 1109,  18,  50.60);

Insert into bk_order_headers    values(22806, date '2016-03-23', 239427);
   Insert into bk_order_details values(22806, 1, 1107,  1,  25.00);
   
Insert into bk_order_headers    values(22807, date '2016-03-23', 224038);
   Insert into bk_order_details values(22807, 1, 1175,  1,  34.99);
   
Insert into bk_order_headers    values(22808, date '2016-03-24', 290298);
   Insert into bk_order_details values(22808, 1, 1182,  1,  45.00);
   
Insert into bk_order_headers    values(22809, date '2016-03-25', 239427);
   Insert into bk_order_details values(22809, 1, 1104,  5,  45.00);
   
Insert into bk_order_headers    values(22810, date '2016-03-25', 218709);
   Insert into bk_order_details values(22810, 1, 1182,  5,  49.99);
   Insert into bk_order_details values(22810, 2, 1162,  5,  35.00);

Insert into bk_order_headers    values(32897, date '2016-03-22', 261502);
   Insert into bk_order_details values(32897, 1, 1110,  2,  50.00);   

Insert into bk_order_headers    values(32898, date '2016-03-22', 261502);
   Insert into bk_order_details values(32898, 1, 2006,  3,  20.00);
   
Insert into bk_order_headers    values(1005,  date '2016-03-28', 290298);
   Insert into bk_order_details values(1005,  1, 1142,  2,  42.45);
   Insert into bk_order_details values(1005,  2, 1107,  4,  21.50);

Insert into bk_order_headers    values(1006,  date '2016-03-28', 208950);
   Insert into bk_order_details values(1006,  1, 1103, 10, 10.95);  
   
Insert into bk_order_headers    values(32899, date '2016-03-29', 261502);
   Insert into bk_order_details values(32899, 1, 1128, 50, 25.00);
   
Insert into bk_order_headers    values(32800, date '2016-03-29', 217796);
   Insert into bk_order_details values(32800, 1, 1128, 50, 25.00);
   
 
Insert into bk_order_headers    values(22312, date '2016-03-31', 239427);
   Insert into bk_order_details values(22312, 1, 1357,  50,  26.00);
   Insert into bk_order_details values(22312, 2, 1425,  50,  28.09);
      
Insert into bk_order_headers    values(22813, date '2016-03-31', 239427);
   Insert into bk_order_details values(22813, 1, 1175,  1,  45.00);
   Insert into bk_order_details values(22813, 2, 1180,  1,  49.99);
   Insert into bk_order_details values(22813, 3, 1182,  1,  45.00);
   Insert into bk_order_details values(22813, 4, 1184,  1,  49.99);
   Insert into bk_order_details values(22813, 5, 1185,  1,  49.99);
   Insert into bk_order_details values(22813, 6, 1188,  1,  49.99);
   Insert into bk_order_details values(22813, 7, 1877,  1,  45.00);
   Insert into bk_order_details values(22813, 8, 1175,  1,  34.90);
   Insert into bk_order_details values(22813, 9, 1425,  1,  25.90);
  
  
 Insert into bk_order_headers   values(22820, date '2016-03-19', 227105);
   Insert into bk_order_details values(22820, 1, 1628,  1,   32.00);
   Insert into bk_order_details values(22820, 2, 1629,  1,   19.95);

Insert into bk_order_headers    values(22821, date '2016-03-19', 222477);
   Insert into bk_order_details values(22821, 1, 1258,  1,  44.99);

Insert into bk_order_headers    values(22825, date '2016-03-21', 267780);
   Insert into bk_order_details values(22825, 1, 1619,  2,  35.00);
   Insert into bk_order_details values(22825, 2, 1128,  1,  46.20); 
   Insert into bk_order_details values(22825, 3, 1162,  1,  32.45);

Insert into bk_order_headers    values(31830, date '2016-03-21', 227105);
   Insert into bk_order_details values(31830, 1, 1161,  3,  35.00);
   Insert into bk_order_details values(31830, 2, 1142,  100,  34.95);

Insert into bk_order_headers    values(31837, date '2016-03-21', 222477);
   Insert into bk_order_details values(31837, 1, 1128,  50,   46.95);
   
   

Insert into bk_order_headers    values(31866, date '2016-03-26', 290298);
   Insert into bk_order_details values(31866, 1, 2028,  2,  58.50);
   Insert into bk_order_details values(31866, 2, 1103,  11,  15.00); 
   Insert into bk_order_details values(31866, 3, 1103,  1,  5.75); 
   

Insert into bk_order_headers    values(32845, date '2016-03-27', 227105);
   Insert into bk_order_details values(32845, 1, 1162,  2,    35.00);
   
Insert into bk_order_headers    values(32849, date '2016-03-27', 290298);
   Insert into bk_order_details values(32849, 1, 1401,  50,   46.95);
   Insert into bk_order_details values(32849, 2, 2002,  100,  39.00);
   Insert into bk_order_details values(32849, 3, 1128,  5, 25.00);
   Insert into bk_order_details values(32849, 4, 1103,  1 , 10.95);    
   
   
   /* April 2016 */
Insert into bk_order_headers    values(62905, date '2016-04-2', 259906);
   Insert into bk_order_details values(62905, 1, 2028,  1,  58.00);
   
Insert into bk_order_headers    values(62906, date '2016-04-04', 259906);
   Insert into bk_order_details values(62906, 1, 2028,  2,  58.50);
   Insert into bk_order_details values(62906, 2, 1103,  11,  15.00); 
   Insert into bk_order_details values(62906, 3, 1103,  1,  5.75); 
   
Insert into bk_order_headers    values(66409, date '2016-04-07', 267780);
   Insert into bk_order_details values(66409, 1, 2002,  100,  39.00);
   Insert into bk_order_details values(66409, 2, 1101,  5,    59.99);
   Insert into bk_order_details values(66409, 3, 1142,  5,    39.00);


Insert into bk_order_headers    values(66483, date '2016-04-11',  267780);
   Insert into bk_order_details values(66483, 1, 1162,  1,  32.45);
   Insert into bk_order_details values(66483, 2, 1161,  3,  35.00);

Insert into bk_order_headers    values(65491, date '2016-04-12', 222477);
   Insert into bk_order_details values(65491, 1, 1128,  1,  49.95);
   Insert into bk_order_details values(65491, 2, 1161,  1,  35.00);
   Insert into bk_order_details values(65491, 3, 2002,  1,  39.00);

Insert into bk_order_headers    values(65552, date '2016-04-12', 227105);
   Insert into bk_order_details values(65552, 1, 1102,  2,  49.99);   
   Insert into bk_order_details values(65552, 2, 2002,  100,  39.00);
 
 
   /* May 2016 */

Insert into bk_order_headers    values(61871, date '2016-05-03', 276381);
   Insert into bk_order_details values(61871, 1, 1448,  1,  30.00);
   Insert into bk_order_details values(61871, 2, 1162,  2,  34.95);   
   
Insert into bk_order_headers    values(61872, date '2016-05-03', 200368);
   Insert into bk_order_details values(61872, 1, 1448,  100,  30.00);

Insert into bk_order_headers    values(61563, date '2016-05-03', 222477);
   Insert into bk_order_details values(61563, 1, 1103,  2,  10.95);
   Insert into bk_order_details values(61563, 2, 1106,  1,  29.00);
   
Insert into bk_order_headers    values(61601, date '2016-05-06', 221297);
   Insert into bk_order_details values(61601, 1, 1107,  1,  22.50);
   Insert into bk_order_details values(61601, 2, 1483,  5,  18.19);
   Insert into bk_order_details values(61601, 4, 1448,  5,  26.99);

Insert into bk_order_headers    values(61702, date '2016-05-06', 227105);
   Insert into bk_order_details values(61702, 1, 1110,  2,  50.00);

Insert into bk_order_headers    values(61705, date '2016-05-06', 261502);
   Insert into bk_order_details values(61705, 1, 1483,  100,  44.99);
   Insert into bk_order_details values(61705, 2, 1128,  400,  41.40);

Insert into bk_order_headers    values(64873, date '2016-05-11',  267780);
   Insert into bk_order_details values(64873, 1, 1162,  1,  32.45);
   Insert into bk_order_details values(64873, 2, 1161,  3,  35.00);
   
Insert into bk_order_headers    values(61605, date '2016-05-06', 217796);
   Insert into bk_order_details values(61605, 1, 1106,  5,  34.95);


 
    /* Jun 2016 */
Insert into bk_order_headers    values(75261, date '2016-06-28', 200368);
   Insert into bk_order_details values(75261, 1, 1142,  100,  34.95);
   Insert into bk_order_details values(75261, 2, 1128,  50,   46.95);
   Insert into bk_order_details values(75261, 3, 2002,  100,  39.00);
   
Insert into bk_order_headers    values(75262, date '2016-06-02', 272787);
   Insert into bk_order_details values(75262, 1, 2009,  5,    34.95);
   Insert into bk_order_details values(75262, 4, 2002,  1,    39.00);
   Insert into bk_order_details values(75262, 2, 1107,  5,    20.95);
   Insert into bk_order_details values(75262, 3, 2002,  5,    39.00);
 
Insert into bk_order_headers    values(75300, date '2016-06-05', 261502);

Insert into bk_order_headers    values(75321, date '2016-06-29', 261502);
   Insert into bk_order_details values(75321, 1, 2008, 20,  54.59);
   Insert into bk_order_details values(75321, 2, 1978, 10,  95.60);

Insert into bk_order_headers    values(75328, date '2016-06-30', 290298);
   Insert into bk_order_details values(75328, 1, 1182,  70,  44.99);

Insert into bk_order_headers    values(75345, date '2016-06-30', 227105);
   Insert into bk_order_details values(75345, 1, 1105, 40,  55.15);
   Insert into bk_order_details values(75345, 4, 2007,  1,  39.00);
   Insert into bk_order_details values(75345, 5, 2008,  1,  39.00);
 
Insert into bk_order_headers    values(74883, date '2016-06-11',  267780);
   Insert into bk_order_details values(74883, 1, 1162,  1,  32.45);
   Insert into bk_order_details values(74883, 2, 1161,  3,  35.00);
   
   
/* Jul 2016 */ 

 Insert into bk_order_headers   values(78144, date '2016-07-15', 290298);
   Insert into bk_order_details values(78144, 1, 1304,  1,  45.99);  
   Insert into bk_order_details values(78144, 2, 2009,  5,  34.95);
   Insert into bk_order_details values(78144, 3, 1101,  8,  55.95);
   Insert into bk_order_details values(78144, 4, 1103,  5,  10.00);   
   
Insert into bk_order_headers    values(78145, date '2016-07-15', 222477);
   Insert into bk_order_details values(78145, 1, 1602,  1,  2.75);  
   Insert into bk_order_details values(78145, 2, 1077,  2,  40.75);  
 
 Insert into bk_order_headers   values(75281, date '2016-07-28', 200368);
   Insert into bk_order_details values(75281, 1, 1142,  100,  34.95);
   Insert into bk_order_details values(75281, 2, 1128,  50,   46.95);
   Insert into bk_order_details values(75281, 3, 2002,  100,  39.00); 
 
Insert into bk_order_headers    values(75561, date '2016-07-22', 222477);
   Insert into bk_order_details values(75561, 1, 1142,  1,  34.95);
   Insert into bk_order_details values(75561, 2, 1128,  5,  46.95);
   Insert into bk_order_details values(75561, 3, 2002,  1,  39.00);
   
   
 
    /* Aug 2016 */
 
Insert into bk_order_headers    values(75483, date '2016-08-11',  267780);
   Insert into bk_order_details values(75483, 1, 1162,  1,  32.45);
   Insert into bk_order_details values(75483, 2, 1161,  3,  35.00);

Insert into bk_order_headers    values(75491, date '2016-08-12', 222477);
   Insert into bk_order_details values(75491, 1, 1110,  2,  50.00); 
   Insert into bk_order_details values(75491, 2, 1629,  1,   19.95);
   
Insert into bk_order_headers    values(73005, date '2016-08-13', 282716);
   Insert into bk_order_details values(73005, 1, 1628,  1,   32.00);
   Insert into bk_order_details values(73005, 2, 1629,  1,   19.95);
   
Insert into bk_order_headers    values(73006, date '2016-08-13', 272787 );
   Insert into bk_order_details values(73006, 1, 1628,  1,   32.00);
   Insert into bk_order_details values(73006, 2, 1629,  1,   19.95);


commit;

   