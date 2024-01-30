
-- -----------------------------------------------------
-- Data for table `Job_Portal`.`User`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (1, 'Jenish', 'Patel', 'jenish.patel@gmail.com', '+919106920227', 'jenish123', NOW(),NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (2, 'Gita', 'Patel', 'gita.patel@gmail.com', '+918160002055', 'gita123', NOW(), NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (3, 'Nitesh', 'Patel', 'nitesh.patel@gmail.com', '+919809506776', 'nitesh123', NOW(), NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (4, 'Payal', 'Patel', 'payal.patel@gmail.com', '+919313324630', 'payal123', NOW(), NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (5, 'Roni', 'Patel', 'roni.patel@gmail.com', '+919102234532', 'roni123', NOW(), NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (6, 'Vatsal', 'Patel', 'vatsal.patel@gmail.com', '+918796532354', 'vatsal123', NOW(), NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (7, 'Priyanshi', 'Patel', 'priyanshi.patel@gmail.com', '+919032563554', 'priyanshi123', NOW(), NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (8, 'Urvi', 'Tandel', 'urvi.tandel@gmail.com', '+912874955639', 'urvi123', NOW(), NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (9, 'Dhruv', 'Gandhi', 'dhruv.gandhi@gmail.com', '+919824047293', 'dhruv123', NOW(), NOW());
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (10, 'Deep', 'Sutariya', 'Deep.sutariya@gmail.com', '+919824045432', 'deep123', NOW(), NOW());

select * from User;

-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Qualifications`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (1, 'Bachelor of Architecture (B.Arch.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (2, 'Bachelor of Arts (B.A.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (3, 'Bachelor of Business (B.B.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (4, 'Bachelor of Education (B.Ed.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (5, 'Bachelor of Engineering (B.E.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (6, 'Bachelor of Laws (LL.B.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (7, 'Bachelor of Pharmacy (B.Pharm.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (8, 'Bachelor of Technology (B.T./B.Tech.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (9, 'Bachelor of Science (B.S.)', NOW(), NOW());
INSERT INTO `Job_Portal`.`Qualifications` (`Qualifications_Id`, `Degree`, `dt_created`, `dt_modified`) VALUES (10, 'Bachelor of Nursing (B.N.)', NOW(), NOW());

select * from Qualifications;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Stream_List`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (1, 'Computer Engineering', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (2, 'Information Technology', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (3, 'Civil', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (4, 'Mechanical', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (5, 'Electrical', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (6, 'EC', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (7, 'Chemical', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (8, 'Nursing', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (9, 'Artificial Intelligence', NOW(), NOW());
INSERT INTO `Job_Portal`.`Stream_List` (`Stream_Id`, `Stream_Type`, `dt_created`, `dt_modified`) VALUES (10, 'Arts', NOW(), NOW());
select * from Stream_List;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`College_List`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (1, 'Indian Institute Of Technology', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (2, 'Birla Institute of Technology And Science', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (3, 'Delhi University', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (4, 'Parul University', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (5, 'Dharmsinh Desai University of Technology(DDIT)', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (6, 'Pune Institute of Technology (PIT)', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (7, 'Vellore Institute of Technology', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (8, 'Indian Institute of Technology Bombay', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (9, 'Defence Institute of Advanced Technology', NOW(), NOW());
INSERT INTO `Job_Portal`.`College_List` (`College_Id`, `College_Name`, `dt_created`, `dt_modified`) VALUES (10, 'Manipal Institute of Technology', NOW(), NOW());
select * from College_List;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Educational_Qualifications`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (1, 90.33, 2020, 1, 2, 4, NULL, 'Nadiad', NOW(), NOW(), 1);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (2, 70.54, 1990, 5, 4, 5, NULL, 'Mumbai', NOW(), NOW(), 2);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (3, 80.33, 1983, 4, 8, 6, NULL, 'Valsad', NOW(), NOW(), 3);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (4, 99.32, 2020, 8, 5, 10, NULL, 'Dahod', NOW(), NOW(), 4);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (5, 56.45, 2019, 6, 9, 1, NULL, 'Ahemdabad', NOW(), NOW(), 5);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (6, 87.25, 2020, 2, 6, 2, NULL, 'Vadodara', NOW(), NOW(), 6);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (7, 91.25, 2021, 7, 7, 3, NULL, 'Anand', NOW(), NOW(), 7);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (8, 74.56, 2020, 9, 1, 7, NULL, 'Vasad', NOW(), NOW(), 8);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (9, 86.24, 2019, 3, 3, 9, NULL, 'Changa', NOW(), NOW(), 9);
INSERT INTO `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID`, `Aggregate_Percentage`, `Passing_Year`, `Qualification`, `Stream`, `College`, `NotListedCollage`, `College_Location`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (10, 78.20, 2018, 10, 10, 8, NULL, 'Nadiad', NOW(), NOW(), 10);
select * from Educational_Qualifications;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Applicant_typeList`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Applicant_typeList` (`Type_Id`, `Type`, `dt_created`, `dt_modified`) VALUES (1, 'Fresher', NOW(), NOW());
INSERT INTO `Job_Portal`.`Applicant_typeList` (`Type_Id`, `Type`, `dt_created`, `dt_modified`) VALUES (2, 'Experienced', NOW(), NOW());
select * from Applicant_typeList;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`NoticePeriod_Duration`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`NoticePeriod_Duration` (`Duration_Id`, `Duration`, `dt_created`, `dt_modified`) VALUES (1, 1, NOW(), NOW());
INSERT INTO `Job_Portal`.`NoticePeriod_Duration` (`Duration_Id`, `Duration`, `dt_created`, `dt_modified`) VALUES (2, 2, NOW(), NOW());
INSERT INTO `Job_Portal`.`NoticePeriod_Duration` (`Duration_Id`, `Duration`, `dt_created`, `dt_modified`) VALUES (3, 3, NOW(), NOW());
INSERT INTO `Job_Portal`.`NoticePeriod_Duration` (`Duration_Id`, `Duration`, `dt_created`, `dt_modified`) VALUES (4, 4, NOW(), NOW());
INSERT INTO `Job_Portal`.`NoticePeriod_Duration` (`Duration_Id`, `Duration`, `dt_created`, `dt_modified`) VALUES (5, 5, NOW(), NOW());
INSERT INTO `Job_Portal`.`NoticePeriod_Duration` (`Duration_Id`, `Duration`, `dt_created`, `dt_modified`) VALUES (6, 6, NOW(), NOW());
select * from NoticePeriod_Duration;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Professional_Qualifications`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (1, 2, 17, 700000, 800000, 1, NULL, NULL, 1, 1, 1, NULL, NOW(), NOW(), 1);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (2, 1, 4, 1000000, 1200000, 0, NULL, NULL, 0, 2, 0, NULL, NOW(), NOW(), 2);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (3, 2, 3, 900000, 1000000, 1, NULL, NULL, 1, 3, 0, NULL, NOW(), NOW(), 3);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (4, 1, 4, 500000, 700000, 0, NULL, NULL, 0, 4, 0, NULL, NOW(), NOW(), 4);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (5, 2, 5, 500000, 700000, 0, NULL, NULL, 1, 5, 1, NULL, NOW(), NOW(), 6);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (6, 2, 11, 200000, 700000, 0, NULL, NULL, 1, 3, 0, NULL, NOW(), NOW(), 5);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (7, 1, 1, 300000, 700000, 1, NULL, NULL, 0, 1, 1, NULL, NOW(), NOW(), 7);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (8, 2, 7, 400000, 700000, 0, NULL, NULL, 0, 6, 0, NULL, NOW(), NOW(), 9);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (9, 1, 8, 600000, 700000, 1, NULL, NULL, 1, 5, 1, NULL, NOW(), NOW(), 8);
INSERT INTO `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`, `Applicant_Type`, `Years_of_Experience`, `Current_CTC`, `Expected_CTC`, `Notice_Period`, `Other_Expertise_tech`, `Other_Familiar_Tech`, `notice`, `NoticePeriod_Duration`, `Appeared_In_Test`, `Role_Applied`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (10, 1, 5, 800000, 1000000, 1, NULL, NULL, 1, 4, 0, NULL, NOW(), NOW(), 10);
select * from Professional_Qualifications;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Expertise_Tech`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (1, 'Javascript', NOW(), NOW());
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (2, 'Angular JS', NOW(), NOW());
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (3, 'React', NOW(), NOW());
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (4, 'Node JS', NOW(), NOW());
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (5, 'TypeScript', NOW(), NOW());
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (6, 'Python', NOW(), NOW());
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (7, 'C#', NOW(), NOW());
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (8, 'DevOps', NOW(), NOW());
INSERT INTO `Job_Portal`.`Expertise_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (9, 'Others', NOW(), NOW());
select * from Expertise_Tech;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Familiar_Tech`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (1, 'Javascript', NOW(), NOW());
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (2, 'Angular JS', NOW(), NOW());
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (3, 'React', NOW(), NOW());
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (4, 'Node JS', NOW(), NOW());
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (5, 'TypeScript', NOW(), NOW());
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (6, 'Python', NOW(), NOW());
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (7, 'C#', NOW(), NOW());
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (8, 'DevOps', NOW(), NOW());
INSERT INTO `Job_Portal`.`Familiar_Tech` (`Tech_Id`, `Technology`, `dt_created`, `dt_modified`) VALUES (9, 'Others', NOW(), NOW());
select * from Familiar_Tech;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (1, 1, 1);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (2, 2, 2);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (3, 3, 3);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (4, 4, 4);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (5, 5, 5);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (6, 6, 6);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (7, 7, 7);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (8, 8, 8);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (9, 9, 7);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (10, 1, 6);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (11, 2, 5);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (12, 3, 4);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (13, 4, 3);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (14, 5, 2);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (15, 6, 1);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (16, 7, 2);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (17, 8, 1);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (18, 9, 3);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (19, 1, 4);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (20, 2, 2);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (21, 3, 6);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (22, 2, 7);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (23, 4, 5);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (24, 5, 4);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (25, 2, 8);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (26, 1, 9);
INSERT INTO `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`) VALUES (27, 3, 5);
select * from Expertise_Tech_has_Professional_Qualifications;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (1, 3, 1);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (2, 4, 2);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (3, 5, 4);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (4, 9, 5);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (5, 10, 6);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (6, 8, 3);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (7, 2, 8);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (8, 1, 7);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (9, 6, 9);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (10, 10, 1);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (11, 5, 5);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (12, 2, 2);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (13, 3, 4);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (14, 10, 6);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (15, 2, 3);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (16, 4, 7);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (17, 6, 8);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (18, 5, 9);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (19, 8, 7);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (20, 7, 5);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (21, 9, 8);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (22, 8, 9);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (23, 7, 4);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (24, 9, 6);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (25, 6, 3);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (26, 3, 2);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (27, 2, 1);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (28, 5, 4);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (29, 4, 5);
INSERT INTO `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`) VALUES (30, 1, 8);
select * from Professional_Qualifications_has_Familiar_Tech;
COMMIT;




-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Jobs`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (1, 'Walk In for Designer Job Role', '2021-07-21', '2021-07-29', 'Mumbai', '2021-07-29', NULL, NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (2, 'Walk In for Multiple Job Roles', '2021-06-23', '2021-07-21', 'Mumbai', '2021-07-21', NULL, NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (3, 'Walk In for Design and Development Job Role', '2021-08-11', '2021-08-30', 'Delhi', '2021-08-30', 'Internship Opportunity for BTech Students', NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (4, 'Walk In for Design and Development Job Role', '2021-08-06', '2021-08-15', 'Pune', '2021-08-15', 'Internship Opportunity for MCA Students', NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (5, 'Walk In for Multiple Job Roles', '2021-08-20', '2021-08-30', 'Vadodara', '2021-08-30', NULL, NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (6, 'Walk In for Designer Job Role', '2021-05-01', '2021-05-11', 'Ahemdabad', '2021-05-11', 'Internship Opportunity for BTech Students', NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (7, 'Walk In for Multiple Job Roles', '2021-07-22', '2021-07-28', 'Surat', '2021-07-28', NULL, NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (8, 'Walk In for Design and Development Job Role', '2021-09-21', '2021-09-28', 'Delhi', '2021-09-28', 'Internship Opportunity for MCA Students', NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (9, 'Walk In for Designer Job Role', '2021-07-30', '2021-08-05', 'Mumbai', '2021-08-05', NULL, NOW(), NOW());
INSERT INTO `Job_Portal`.`Jobs` (`Job_Id`, `Job_Title`, `Job_StartDate`, `Job_EndDate`, `Job_Location`, `Expire_date`, `special_message`, `dt_created`, `dt_modified`) VALUES (10, 'Walk In for Design and Development Job Role', '2021-08-03', '2021-08-08', 'Mumbai', '2021-08-08', 'Internship Opportunity for BTech Students', NOW(), NOW());
select * from Jobs;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`JobRole_Types`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`JobRole_Types` (`Type_ID`, `Type_name`, `dt_created`, `dt_modified`) VALUES (1, 'Instructional Designer', NOW(), NOW());
INSERT INTO `Job_Portal`.`JobRole_Types` (`Type_ID`, `Type_name`, `dt_created`, `dt_modified`) VALUES (2, 'Software Engineer', NOW(), NOW());
INSERT INTO `Job_Portal`.`JobRole_Types` (`Type_ID`, `Type_name`, `dt_created`, `dt_modified`) VALUES (3, 'Software Quality Engineer', NOW(), NOW());
INSERT INTO `Job_Portal`.`JobRole_Types` (`Type_ID`, `Type_name`, `dt_created`, `dt_modified`) VALUES (4, 'QA Engineer', NOW(), NOW());
INSERT INTO `Job_Portal`.`JobRole_Types` (`Type_ID`, `Type_name`, `dt_created`, `dt_modified`) VALUES (5, 'Tester', NOW(), NOW());
select * from JobRole_Types;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`JobRole_Details`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (1, 'Instructional Designer', 500000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 1);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (2, 'Software Engineer', 700000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 2);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (3, 'Software Quality Engineer', 600000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 3);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (4, 'Software Engineer', 700000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 2);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (5, 'Instructional Designer', 500000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 1);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (6, 'QA Engineer', 400000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 4);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (7, 'Software Engineer', 700000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 2);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (8, 'Tester', 350000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 5);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (9, 'Software Quality Engineer', 600000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 3);
INSERT INTO `Job_Portal`.`JobRole_Details` (`JobRole_ID`, `JobRole_Title`, `Compensation_Package`, `JobRole_Description`, `JobRole_Requirements`, `dt_created`, `dt_modified`, `JobRole_Types_Type_ID`) VALUES (10, 'Tester', 350000, '- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners\' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance', '- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism', NOW(), NOW(), 5);
select * from JobRole_Details;

COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Requirements_Application_Process`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (1, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 10);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (2, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 1);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (3, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 2);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (4, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 3);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (5, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 4);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (6, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 5);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (7, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 6);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (8, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 7);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (9, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 8);
INSERT INTO `Job_Portal`.`Requirements_Application_Process` (`processId`, `General_Instruction`, `Exam_Instruction`, `System_Requirements`, `Process_Details`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (10, '- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.', '- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.', '- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.', '- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018.', NOW(), NOW(), 9);
select * from Requirements_Application_Process;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`TimeSlots`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`TimeSlots` (`TimeSlots_Id`, `TimeSlot`, `dt_created`, `dt_modified`) VALUES (1, '9:00 AM to 11:00 AM', NOW(), NOW());
INSERT INTO `Job_Portal`.`TimeSlots` (`TimeSlots_Id`, `TimeSlot`, `dt_created`, `dt_modified`) VALUES (2, '1:00 PM to 3:00 PM', NOW(), NOW());
INSERT INTO `Job_Portal`.`TimeSlots` (`TimeSlots_Id`, `TimeSlot`, `dt_created`, `dt_modified`) VALUES (3, '7:00 AM to 9:00 AM', NOW(), NOW());
INSERT INTO `Job_Portal`.`TimeSlots` (`TimeSlots_Id`, `TimeSlot`, `dt_created`, `dt_modified`) VALUES (4, '12:00 PM to 2:00 PM', NOW(), NOW());
INSERT INTO `Job_Portal`.`TimeSlots` (`TimeSlots_Id`, `TimeSlot`, `dt_created`, `dt_modified`) VALUES (5, '4:00 PM to 6:00 PM', NOW(), NOW());
select * from TimeSlots;
COMMIT;



-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Job_Registration`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (1, 1, DEFAULT, NOW(), NOW(), 1, 2);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (2, 2, DEFAULT, NOW(), NOW(), 1, 1);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (3, 3, DEFAULT, NOW(), NOW(), 2, 3);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (4, 4, DEFAULT, NOW(), NOW(), 3, 4);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (5, 3, DEFAULT, NOW(), NOW(), 4, 1);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (6, 2, DEFAULT, NOW(), NOW(), 5, 2);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (7, 1, DEFAULT, NOW(), NOW(), 6, 3);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (8, 5, DEFAULT, NOW(), NOW(), 7, 6);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (9, 4, DEFAULT, NOW(), NOW(), 5, 5);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (10, 3, DEFAULT, NOW(), NOW(), 9, 8);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (11, 2, DEFAULT, NOW(), NOW(), 2, 9);
INSERT INTO `Job_Portal`.`Job_Registration` (`Registration_Id`, `TimeSlot_Time`, `Resume`, `dt_created`, `dt_modified`, `Jobs_Job_Id`, `User_User_ID`) VALUES (12, 1, DEFAULT, NOW(), NOW(), 1, 10);
select * from Job_Registration;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Application_All_Details`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (1, '05th July 2021', 4, 'Pune', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 10);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (2, '03rd July 2021', 1, 'Mumbai', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 1);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (3, '11th June 2021', 2, 'Delhi', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 2);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (4, '17th August 2021', 3, 'Delhi', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 3);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (5, '11th June 2021', 1, 'Pune', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 4);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (6, '17th August 2021', 2, 'Ahemdabad', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 5);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (7, '03rd July 2021', 4, 'Mumbai', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 6);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (8, '17th August 2021', 1, 'Surat', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 7);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (9, '11th June 2021', 2, 'Vadodara', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 8);
INSERT INTO `Job_Portal`.`Application_All_Details` (`Application_ID`, `Walkin_Date`, `Walkin_Time`, `Walkin_Venue`, `Things_To_Remember`, `HallTicket`, `dt_created`, `dt_modified`, `Jobs_Job_Id`) VALUES (10, '03rd July 2021', 3, 'Mumbai', '- Please report 30 MINUTES prior to your reporting time. - Download your Hall Ticket from below and carry it with you during your Walk-In.', DEFAULT, NOW(), NOW(), 9);
select * from Application_All_Details;
COMMIT;



-- -----------------------------------------------------
-- Data for table `Job_Portal`.`User_PersonalInfo`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (1, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 10);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (2, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 1);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (3, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 9);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (4, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 3);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (5, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 6);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (6, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 5);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (7, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 4);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (8, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 7);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (9, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 8);
INSERT INTO `Job_Portal`.`User_PersonalInfo` (`Registration_ID`, `Profile_Pictures`, `Resume`, `Portfolio_URL`, `ReferredEmp_FullName`, `sendme`, `dt_created`, `dt_modified`, `User_User_ID`) VALUES (10, NULL, NULL, 'www.google.com', NULL, NULL, NOW(), NOW(), 2);
select * from User_PersonalInfo;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Jobs_has_TimeSlots`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (1, 1, 1);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (2, 1, 3);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (3, 2, 2);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (4, 2, 5);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (5, 3, 2);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (6, 3, 5);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (7, 4, 1);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (8, 4, 4);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (9, 5, 3);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (10, 5, 5);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (11, 6, 2);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (12, 6, 3);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (13, 7, 4);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (14, 7, 1);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (15, 8, 2);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (16, 8, 4);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (17, 9, 5);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (18, 9, 3);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (19, 10, 1);
INSERT INTO `Job_Portal`.`Jobs_has_TimeSlots` (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`) VALUES (20, 10, 5);
select * from Jobs_has_TimeSlots;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Jobs_has_JobRoles`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (1, 1, 1);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (2, 2, 2);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (3, 3, 3);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (4, 4, 4);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (5, 5, 5);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (6, 4, 6);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (7, 3, 7);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (8, 2, 8);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (9, 5, 9);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (10, 1, 10);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (11, 2, 1);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (12, 3, 2);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (13, 4, 3);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (14, 5, 4);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (15, 1, 9);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (16, 2, 7);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (17, 3, 6);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (18, 4, 3);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (19, 3, 6);
INSERT INTO `Job_Portal`.`Jobs_has_JobRoles` (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`) VALUES (20, 2, 8);
select * from Jobs_has_JobRoles;
COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`SelectedJobRoles_for_Job_Registration`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (1, 1, 1);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (2, 2, 2);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (3, 3, 3);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (4, 4, 5);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (5, 5, 7);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (6, 3, 8);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (7, 2, 5);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (8, 1, 9);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (9, 4, 10);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (10, 5, 11);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (11, 4, 4);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (12, 3, 2);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (13, 2, 5);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (14, 1, 7);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (15, 3, 6);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (16, 4, 8);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (17, 2, 3);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (18, 2, 2);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (19, 5, 6);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (20, 4, 8);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (21, 3, 4);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (22, 2, 7);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (23, 4, 3);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (24, 1, 9);
INSERT INTO `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`) VALUES (25, 3, 11);
select * from SelectedJobRoles_for_Job_Registration;
COMMIT;



-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Preferred_JobRole_Types`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (1, 1, 1);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (2, 2, 2);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (3, 3, 3);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (4, 4, 4);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (5, 5, 5);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (6, 6, 4);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (7, 7, 3);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (8, 8, 5);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (9, 9, 2);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (10, 10, 1);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (11, 1, 2);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (12, 2, 3);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (13, 4, 4);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (14, 5, 3);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (15, 7, 4);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (16, 4, 4);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (17, 7, 1);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (18, 9, 2);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (19, 8, 5);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (20, 3, 5);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (21, 5, 4);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (22, 2, 3);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (23, 4, 2);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (24, 9, 1);
INSERT INTO `Job_Portal`.`Preferred_JobRole_Types` (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`) VALUES (25, 6, 1);
select * from Preferred_JobRole_Types;
COMMIT;


