-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Job_Portal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Job_Portal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Job_Portal` DEFAULT CHARACTER SET utf8 ;
USE `Job_Portal` ;

-- -----------------------------------------------------
-- Table `Job_Portal`.`Jobs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Jobs` (
  `Job_Id` INT GENERATED ALWAYS AS  VIRTUAL,
  `Job_Title` VARCHAR(300) NOT NULL,
  `Job_StartDate` DATE NOT NULL,
  `Job_EndDate` DATE NOT NULL,
  `Job_Location` VARCHAR(100) NOT NULL,
  `Expire_date` DATE NOT NULL,
  `special_message` VARCHAR(200) NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Job_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Job_Id_UNIQUE` ON `Job_Portal`.`Jobs` (`Job_Id` ASC) INVISIBLE;

CREATE INDEX `Job_Id` ON `Job_Portal`.`Jobs` (`Job_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`JobRole_Types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`JobRole_Types` (
  `Type_ID` INT NOT NULL AUTO_INCREMENT,
  `Type_name` VARCHAR(300) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Type_ID`, `Type_name`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Type_ID_UNIQUE` ON `Job_Portal`.`JobRole_Types` (`Type_ID` ASC) VISIBLE;

CREATE UNIQUE INDEX `Type_name_UNIQUE` ON `Job_Portal`.`JobRole_Types` (`Type_name` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`JobRole_Details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`JobRole_Details` (
  `JobRole_ID` INT NOT NULL,
  `JobRole_Title` VARCHAR(300) NOT NULL,
  `Compensation_Package` BIGINT NOT NULL,
  `JobRole_Description` TEXT NOT NULL,
  `JobRole_Requirements` TEXT NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `JobRole_Types_Type_ID` INT NOT NULL,
  PRIMARY KEY (`JobRole_ID`),
  CONSTRAINT `fk_JobRole_Details_JobRole_Types1`
    FOREIGN KEY (`JobRole_Types_Type_ID`)
    REFERENCES `Job_Portal`.`JobRole_Types` (`Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `JobRole_ID_UNIQUE` ON `Job_Portal`.`JobRole_Details` (`JobRole_ID` ASC) VISIBLE;

CREATE INDEX `JobRole_ID_INDEX` ON `Job_Portal`.`JobRole_Details` (`JobRole_ID` ASC) VISIBLE;

CREATE INDEX `fk_JobRole_Details_JobRole_Types1_idx` ON `Job_Portal`.`JobRole_Details` (`JobRole_Types_Type_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Requirements_Application_Process`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Requirements_Application_Process` (
  `processId` INT NOT NULL AUTO_INCREMENT,
  `General_Instruction` TEXT NOT NULL,
  `Exam_Instruction` TEXT NOT NULL,
  `System_Requirements` TEXT NOT NULL,
  `Process_Details` TEXT NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Jobs_Job_Id` INT NOT NULL,
  PRIMARY KEY (`processId`),
  CONSTRAINT `fk_Requirements_Application_Process_Jobs1`
    FOREIGN KEY (`Jobs_Job_Id`)
    REFERENCES `Job_Portal`.`Jobs` (`Job_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `Job_Id` ON `Job_Portal`.`Requirements_Application_Process` (`processId` ASC) VISIBLE;

CREATE UNIQUE INDEX `processId_UNIQUE` ON `Job_Portal`.`Requirements_Application_Process` (`processId` ASC) VISIBLE;

CREATE INDEX `processID_INDEX` ON `Job_Portal`.`Requirements_Application_Process` (`processId` ASC) VISIBLE;

CREATE INDEX `fk_Requirements_Application_Process_Jobs1_idx` ON `Job_Portal`.`Requirements_Application_Process` (`Jobs_Job_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`TimeSlots`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`TimeSlots` (
  `TimeSlots_Id` INT NOT NULL AUTO_INCREMENT,
  `TimeSlot` VARCHAR(100) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TimeSlots_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TimeSlots_Id_UNIQUE` ON `Job_Portal`.`TimeSlots` (`TimeSlots_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`User` (
  `User_ID` INT GENERATED ALWAYS AS () VIRTUAL,
  `FirstName` VARCHAR(70) NOT NULL,
  `LastName` VARCHAR(70) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `PhoneNumber` VARCHAR(15) NOT NULL,
  `Password` VARCHAR(100) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`User_ID`))
ENGINE = InnoDB
KEY_BLOCK_SIZE = 4;

CREATE UNIQUE INDEX `User_ID_UNIQUE` ON `Job_Portal`.`User` (`User_ID` ASC) VISIBLE;

CREATE UNIQUE INDEX `Email_UNIQUE` ON `Job_Portal`.`User` (`Email` ASC) VISIBLE;

CREATE INDEX `index_ID` ON `Job_Portal`.`User` (`User_ID` ASC) VISIBLE;

CREATE UNIQUE INDEX `PhoneNumber_UNIQUE` ON `Job_Portal`.`User` (`PhoneNumber` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Job_Registration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Job_Registration` (
  `Registration_Id` INT GENERATED ALWAYS AS () VIRTUAL,
  `TimeSlot_Time` INT NOT NULL,
  `Resume` TEXT NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Jobs_Job_Id` INT NOT NULL,
  `User_User_ID` INT NOT NULL,
  PRIMARY KEY (`Registration_Id`, `Jobs_Job_Id`, `User_User_ID`),
  CONSTRAINT `fk_Job_Registration_Jobs1`
    FOREIGN KEY (`Jobs_Job_Id`)
    REFERENCES `Job_Portal`.`Jobs` (`Job_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Job_Registration_TimeSlots1`
    FOREIGN KEY (`TimeSlot_Time`)
    REFERENCES `Job_Portal`.`TimeSlots` (`TimeSlots_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Job_Registration_User1`
    FOREIGN KEY (`User_User_ID`)
    REFERENCES `Job_Portal`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TP_Id_UNIQUE` ON `Job_Portal`.`Job_Registration` (`Registration_Id` ASC) VISIBLE;

CREATE INDEX `tp_Id_Index` ON `Job_Portal`.`Job_Registration` (`Registration_Id` ASC) VISIBLE;

CREATE UNIQUE INDEX `TimeSlot_Time_UNIQUE` ON `Job_Portal`.`Job_Registration` (`TimeSlot_Time` ASC) VISIBLE;

CREATE INDEX `fk_Job_Registration_Jobs1_idx` ON `Job_Portal`.`Job_Registration` (`Jobs_Job_Id` ASC) VISIBLE;

CREATE INDEX `fk_Job_Registration_User1_idx` ON `Job_Portal`.`Job_Registration` (`User_User_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Application_All_Details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Application_All_Details` (
  `Application_ID` INT NOT NULL AUTO_INCREMENT,
  `Walkin_Date` DATE NOT NULL,
  `Walkin_Time` INT NOT NULL,
  `Walkin_Venue` VARCHAR(500) NOT NULL,
  `Things_To_Remember` TEXT NULL,
  `HallTicket` TEXT NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Jobs_Job_Id` INT NOT NULL,
  PRIMARY KEY (`Application_ID`),
  CONSTRAINT `fk_Application_All_Details_Jobs1`
    FOREIGN KEY (`Jobs_Job_Id`)
    REFERENCES `Job_Portal`.`Jobs` (`Job_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Application_All_Details_TimeSlots1`
    FOREIGN KEY (`Walkin_Time`)
    REFERENCES `Job_Portal`.`TimeSlots` (`TimeSlots_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Application_ID_UNIQUE` ON `Job_Portal`.`Application_All_Details` (`Application_ID` ASC) VISIBLE;

CREATE INDEX `Applicaiton_ID_INDEX` ON `Job_Portal`.`Application_All_Details` (`Application_ID` ASC) VISIBLE;

CREATE UNIQUE INDEX `Walkin_Time_UNIQUE` ON `Job_Portal`.`Application_All_Details` (`Walkin_Time` ASC) VISIBLE;

CREATE INDEX `fk_Application_All_Details_Jobs1_idx` ON `Job_Portal`.`Application_All_Details` (`Jobs_Job_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Login` (
  `login_id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`login_id`, `email`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `login_id_UNIQUE` ON `Job_Portal`.`Login` (`login_id` ASC) INVISIBLE;

CREATE UNIQUE INDEX `email_UNIQUE` ON `Job_Portal`.`Login` (`email` ASC) INVISIBLE;

CREATE INDEX `login_id_INDEX` ON `Job_Portal`.`Login` (`login_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`User_PersonalInfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`User_PersonalInfo` (
  `Registration_ID` INT NOT NULL AUTO_INCREMENT,
  `Profile_Pictures` TEXT(5120) NULL,
  `Resume` TEXT NULL,
  `Portfolio_URL` TINYTEXT NULL,
  `ReferredEmp_FullName` VARCHAR(250) NULL,
  `sendme` TINYINT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PreferredJobRole_Types_PreferredType_ID` INT NOT NULL,
  `User_User_ID` INT NOT NULL,
  PRIMARY KEY (`Registration_ID`),
  CONSTRAINT `fk_User_PersonalInfo_User1`
    FOREIGN KEY (`User_User_ID`)
    REFERENCES `Job_Portal`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Registration_ID_UNIQUE` ON `Job_Portal`.`User_PersonalInfo` (`Registration_ID` ASC) VISIBLE;

CREATE INDEX `Registration_ID_INDEX` ON `Job_Portal`.`User_PersonalInfo` (`Registration_ID` ASC) VISIBLE;

CREATE INDEX `fk_User_PersonalInfo_User1_idx` ON `Job_Portal`.`User_PersonalInfo` (`User_User_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Qualifications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Qualifications` (
  `Qualifications_Id` INT NOT NULL AUTO_INCREMENT,
  `Degree` VARCHAR(300) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Qualifications_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TimeSlots_Id_UNIQUE` ON `Job_Portal`.`Qualifications` (`Qualifications_Id` ASC) VISIBLE;

CREATE UNIQUE INDEX `Degree_UNIQUE` ON `Job_Portal`.`Qualifications` (`Degree` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Stream_List`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Stream_List` (
  `Stream_Id` INT NOT NULL AUTO_INCREMENT,
  `Stream_Type` VARCHAR(300) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Stream_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TimeSlots_Id_UNIQUE` ON `Job_Portal`.`Stream_List` (`Stream_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`College_List`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`College_List` (
  `College_Id` INT NOT NULL AUTO_INCREMENT,
  `College_Name` VARCHAR(400) NOT NULL DEFAULT 'none',
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`College_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TimeSlots_Id_UNIQUE` ON `Job_Portal`.`College_List` (`College_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Educational_Qualifications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Educational_Qualifications` (
  `Educational_Qualifications_ID` INT NOT NULL,
  `Aggregate_Percentage` FLOAT(3) NOT NULL,
  `Passing_Year` YEAR NOT NULL,
  `Qualification` INT NOT NULL,
  `Stream` INT NOT NULL,
  `College` INT NOT NULL,
  `NotListedCollage` VARCHAR(250) NULL,
  `College_Location` VARCHAR(100) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_User_ID` INT NOT NULL,
  PRIMARY KEY (`Educational_Qualifications_ID`),
  CONSTRAINT `Qualification`
    FOREIGN KEY (`Qualification`)
    REFERENCES `Job_Portal`.`Qualifications` (`Qualifications_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Stream`
    FOREIGN KEY (`Stream`)
    REFERENCES `Job_Portal`.`Stream_List` (`Stream_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `College`
    FOREIGN KEY (`College`)
    REFERENCES `Job_Portal`.`College_List` (`College_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Educational_Qualifications_User1`
    FOREIGN KEY (`User_User_ID`)
    REFERENCES `Job_Portal`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Educational_Qualifications_ID_UNIQUE` ON `Job_Portal`.`Educational_Qualifications` (`Educational_Qualifications_ID` ASC) VISIBLE;

CREATE INDEX `fk_Educational_Qualifications_User1_idx` ON `Job_Portal`.`Educational_Qualifications` (`User_User_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Applicant_typeList`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Applicant_typeList` (
  `Type_Id` INT NOT NULL AUTO_INCREMENT,
  `Type` VARCHAR(100) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Type_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TimeSlots_Id_UNIQUE` ON `Job_Portal`.`Applicant_typeList` (`Type_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`NoticePeriod_Duration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`NoticePeriod_Duration` (
  `Duration_Id` INT NOT NULL AUTO_INCREMENT,
  `Duration` INT NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Duration_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TimeSlots_Id_UNIQUE` ON `Job_Portal`.`NoticePeriod_Duration` (`Duration_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Professional_Qualifications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Professional_Qualifications` (
  `Professional_Qualifications_ID` INT NOT NULL AUTO_INCREMENT,
  `Applicant_Type` INT NOT NULL,
  `Years_of_Experience` INT NOT NULL,
  `Current_CTC` BIGINT NOT NULL,
  `Expected_CTC` BIGINT NOT NULL,
  `Notice_Period` TINYINT(1) NULL,
  `Other_Expertise_tech` VARCHAR(400) NULL,
  `Other_Familiar_Tech` VARCHAR(400) NULL,
  `notice` TINYINT(1) NULL,
  `NoticePeriod_Duration` INT NULL,
  `Appeared_In_Test` TINYINT(1) NOT NULL,
  `Role_Applied` VARCHAR(100) NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_User_ID` INT NOT NULL,
  PRIMARY KEY (`Professional_Qualifications_ID`),
  CONSTRAINT `fk_Professional_Qualifications_Applicant_typeList1`
    FOREIGN KEY (`Applicant_Type`)
    REFERENCES `Job_Portal`.`Applicant_typeList` (`Type_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Professional_Qualifications_NoticePeriod_Duration1`
    FOREIGN KEY (`NoticePeriod_Duration`)
    REFERENCES `Job_Portal`.`NoticePeriod_Duration` (`Duration_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Professional_Qualifications_User1`
    FOREIGN KEY (`User_User_ID`)
    REFERENCES `Job_Portal`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `Professional_Qualifications_ID_UNIQUE` ON `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID` ASC) VISIBLE;

CREATE INDEX `id_Index` ON `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID` ASC) VISIBLE;

CREATE INDEX `fk_Professional_Qualifications_Applicant_typeList1_idx` ON `Job_Portal`.`Professional_Qualifications` (`Applicant_Type` ASC) VISIBLE;

CREATE INDEX `fk_Professional_Qualifications_NoticePeriod_Duration1_idx` ON `Job_Portal`.`Professional_Qualifications` (`NoticePeriod_Duration` ASC) VISIBLE;

CREATE INDEX `fk_Professional_Qualifications_User1_idx` ON `Job_Portal`.`Professional_Qualifications` (`User_User_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Expertise_Tech`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Expertise_Tech` (
  `Tech_Id` INT NOT NULL AUTO_INCREMENT,
  `Technology` VARCHAR(50) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Tech_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TimeSlots_Id_UNIQUE` ON `Job_Portal`.`Expertise_Tech` (`Tech_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Familiar_Tech`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Familiar_Tech` (
  `Tech_Id` INT NOT NULL AUTO_INCREMENT,
  `Technology` VARCHAR(50) NOT NULL,
  `dt_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Tech_Id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `TimeSlots_Id_UNIQUE` ON `Job_Portal`.`Familiar_Tech` (`Tech_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Jobs_has_TimeSlots`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Jobs_has_TimeSlots` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Jobs_Job_Id` INT NOT NULL,
  `TimeSlots_TimeSlots_Id` INT NOT NULL,
  PRIMARY KEY (`ID`, `Jobs_Job_Id`, `TimeSlots_TimeSlots_Id`),
  CONSTRAINT `fk_Jobs_has_TimeSlots_Jobs1`
    FOREIGN KEY (`Jobs_Job_Id`)
    REFERENCES `Job_Portal`.`Jobs` (`Job_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Jobs_has_TimeSlots_TimeSlots1`
    FOREIGN KEY (`TimeSlots_TimeSlots_Id`)
    REFERENCES `Job_Portal`.`TimeSlots` (`TimeSlots_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Jobs_has_TimeSlots_TimeSlots1_idx` ON `Job_Portal`.`Jobs_has_TimeSlots` (`TimeSlots_TimeSlots_Id` ASC) VISIBLE;

CREATE INDEX `fk_Jobs_has_TimeSlots_Jobs1_idx` ON `Job_Portal`.`Jobs_has_TimeSlots` (`Jobs_Job_Id` ASC) VISIBLE;

CREATE UNIQUE INDEX `ID_UNIQUE` ON `Job_Portal`.`Jobs_has_TimeSlots` (`ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Jobs_has_JobRoles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Jobs_has_JobRoles` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `JobRole_Types_Type_ID` INT NOT NULL,
  `Jobs_Job_Id` INT NOT NULL,
  PRIMARY KEY (`ID`, `JobRole_Types_Type_ID`, `Jobs_Job_Id`),
  CONSTRAINT `fk_JobRole_Types_has_Jobs_JobRole_Types1`
    FOREIGN KEY (`JobRole_Types_Type_ID`)
    REFERENCES `Job_Portal`.`JobRole_Types` (`Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_JobRole_Types_has_Jobs_Jobs1`
    FOREIGN KEY (`Jobs_Job_Id`)
    REFERENCES `Job_Portal`.`Jobs` (`Job_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_JobRole_Types_has_Jobs_Jobs1_idx` ON `Job_Portal`.`Jobs_has_JobRoles` (`Jobs_Job_Id` ASC) VISIBLE;

CREATE INDEX `fk_JobRole_Types_has_Jobs_JobRole_Types1_idx` ON `Job_Portal`.`Jobs_has_JobRoles` (`JobRole_Types_Type_ID` ASC) VISIBLE;

CREATE UNIQUE INDEX `ID_UNIQUE` ON `Job_Portal`.`Jobs_has_JobRoles` (`ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`SelectedJobRoles_for_Job_Registration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `JobRole_Types_Type_ID` INT NOT NULL,
  `Job_Registration_TP_Id` INT NOT NULL,
  `Job_Registration_Jobs_Job_Id` INT NOT NULL,
  PRIMARY KEY (`ID`, `JobRole_Types_Type_ID`, `Job_Registration_TP_Id`, `Job_Registration_Jobs_Job_Id`),
  CONSTRAINT `fk_JobRole_Types_has_Job_Registration_JobRole_Types1`
    FOREIGN KEY (`JobRole_Types_Type_ID`)
    REFERENCES `Job_Portal`.`JobRole_Types` (`Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_JobRole_Types_has_Job_Registration_Job_Registration1`
    FOREIGN KEY (`Job_Registration_TP_Id` , `Job_Registration_Jobs_Job_Id`)
    REFERENCES `Job_Portal`.`Job_Registration` (`Registration_Id` , `Jobs_Job_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_JobRole_Types_has_Job_Registration_Job_Registration1_idx` ON `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`Job_Registration_TP_Id` ASC, `Job_Registration_Jobs_Job_Id` ASC) VISIBLE;

CREATE INDEX `fk_JobRole_Types_has_Job_Registration_JobRole_Types1_idx` ON `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`JobRole_Types_Type_ID` ASC) VISIBLE;

CREATE UNIQUE INDEX `ID_UNIQUE` ON `Job_Portal`.`SelectedJobRoles_for_Job_Registration` (`ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Expertise_Tech_Tech_Id` INT NOT NULL,
  `Professional_Qualifications_Professional_Qualifications_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `Expertise_Tech_Tech_Id`, `Professional_Qualifications_Professional_Qualifications_ID`),
  CONSTRAINT `fk_Expertise_Tech_has_Professional_Qualifications_Expertise_T1`
    FOREIGN KEY (`Expertise_Tech_Tech_Id`)
    REFERENCES `Job_Portal`.`Expertise_Tech` (`Tech_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Expertise_Tech_has_Professional_Qualifications_Professiona1`
    FOREIGN KEY (`Professional_Qualifications_Professional_Qualifications_ID`)
    REFERENCES `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Expertise_Tech_has_Professional_Qualifications_Professio_idx` ON `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`Professional_Qualifications_Professional_Qualifications_ID` ASC) VISIBLE;

CREATE INDEX `fk_Expertise_Tech_has_Professional_Qualifications_Expertise_idx` ON `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`Expertise_Tech_Tech_Id` ASC) VISIBLE;

CREATE UNIQUE INDEX `ID_UNIQUE` ON `Job_Portal`.`Expertise_Tech_has_Professional_Qualifications` (`ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Professional_Qualifications_Professional_Qualifications_ID` INT NOT NULL,
  `Familiar_Tech_Tech_Id` INT NOT NULL,
  PRIMARY KEY (`ID`, `Professional_Qualifications_Professional_Qualifications_ID`, `Familiar_Tech_Tech_Id`),
  CONSTRAINT `fk_Professional_Qualifications_has_Familiar_Tech_Professional1`
    FOREIGN KEY (`Professional_Qualifications_Professional_Qualifications_ID`)
    REFERENCES `Job_Portal`.`Professional_Qualifications` (`Professional_Qualifications_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Professional_Qualifications_has_Familiar_Tech_Familiar_Tech1`
    FOREIGN KEY (`Familiar_Tech_Tech_Id`)
    REFERENCES `Job_Portal`.`Familiar_Tech` (`Tech_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Professional_Qualifications_has_Familiar_Tech_Familiar_T_idx` ON `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`Familiar_Tech_Tech_Id` ASC) VISIBLE;

CREATE INDEX `fk_Professional_Qualifications_has_Familiar_Tech_Profession_idx` ON `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`Professional_Qualifications_Professional_Qualifications_ID` ASC) VISIBLE;

CREATE UNIQUE INDEX `ID_UNIQUE` ON `Job_Portal`.`Professional_Qualifications_has_Familiar_Tech` (`ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Job_Portal`.`Preferred_JobRole_Types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Job_Portal`.`Preferred_JobRole_Types` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `User_PersonalInfo_Registration_ID` INT NOT NULL,
  `JobRole_Types_Type_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `User_PersonalInfo_Registration_ID`, `JobRole_Types_Type_ID`),
  CONSTRAINT `fk_User_PersonalInfo_has_JobRole_Types_User_PersonalInfo1`
    FOREIGN KEY (`User_PersonalInfo_Registration_ID`)
    REFERENCES `Job_Portal`.`User_PersonalInfo` (`Registration_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_PersonalInfo_has_JobRole_Types_JobRole_Types1`
    FOREIGN KEY (`JobRole_Types_Type_ID`)
    REFERENCES `Job_Portal`.`JobRole_Types` (`Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_User_PersonalInfo_has_JobRole_Types_JobRole_Types1_idx` ON `Job_Portal`.`Preferred_JobRole_Types` (`JobRole_Types_Type_ID` ASC) VISIBLE;

CREATE INDEX `fk_User_PersonalInfo_has_JobRole_Types_User_PersonalInfo1_idx` ON `Job_Portal`.`Preferred_JobRole_Types` (`User_PersonalInfo_Registration_ID` ASC) VISIBLE;

CREATE UNIQUE INDEX `ID_UNIQUE` ON `Job_Portal`.`Preferred_JobRole_Types` (`ID` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Job_Portal`.`User`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Jenish', 'Patel', 'jenish.patel@gmail.com', '+919106920227', 'jenish123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Gita', 'Patel', 'gita.patel@gmail.com', '+918160002055', 'gita123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Nitesh', 'Patel', 'nitesh.patel@gmail.com', '+919809506776', 'nitesh123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Payal', 'Patel', 'payal.patel@gmail.com', '+919313324630', 'payal123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Roni', 'Patel', 'roni.patel@gmail.com', '+919102234532', 'roni123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Vatsal', 'Patel', 'vatsal.patel@gmail.com', '+918796532354', 'vatsal123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Priyanshi', 'Patel', 'priyanshi.patel@gmail.com', '+919032563554', 'priyanshi123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Urvi', 'Tandel', 'urvi.tandel@gmail.com', '+912874955639', 'urvi123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Dhruv', 'Gandhi', 'dhruv.gandhi@gmail.com', '+919824047293', 'dhruv123', 'now()', 'now()');
INSERT INTO `Job_Portal`.`User` (`User_ID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Password`, `dt_created`, `dt_modified`) VALUES (, 'Deep', 'Sutiraya', 'deep.sutariya@gmail.com', '+919874652512', 'deep123', 'now()', 'now()');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Job_Portal`.`Login`
-- -----------------------------------------------------
START TRANSACTION;
USE `Job_Portal`;
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (1, 'jenishpatel82345@gmail.com', 'jenish123', DEFAULT, DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (2, 'nitesh.triangle@gmail.com', 'nitesh123', DEFAULT, DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (3, 'gita.patel@gmail.com', 'gita123', '', DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (4, 'dhruv.gandhi@gmail.com', 'dhruv123', DEFAULT, DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (5, 'payal.patel@gmail.com', 'payal123', DEFAULT, DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (6, 'roni.patel@gmail.com', 'roni123', DEFAULT, DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (7 , 'abhay.patel@gmail.com', 'abhay123', DEFAULT, DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (8, 'dhyey.patel@gmail.com', 'dhyey123', DEFAULT, DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (9 , 'deep.tandel@gmail.com', 'deep123', DEFAULT, DEFAULT);
INSERT INTO `Job_Portal`.`Login` (`login_id`, `email`, `password`, `dt_created`, `dt_modified`) VALUES (10, 'urvi.tandel', 'urvi123', DEFAULT, DEFAULT);

COMMIT;

