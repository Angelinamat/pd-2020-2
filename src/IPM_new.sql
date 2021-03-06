-- MySQL Script generated by MySQL Workbench
-- Fri Mar 19 01:44:37 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema IPM
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema IPM
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `IPM` DEFAULT CHARACTER SET utf8 ;
USE `IPM` ;

-- -----------------------------------------------------
-- Table `IPM`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Users` (
  `idUsers` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(105) NOT NULL,
  `Login` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Role` VARCHAR(45) NULL,
  PRIMARY KEY (`idUsers`),
  UNIQUE INDEX `idUsers_UNIQUE` (`idUsers` ASC) VISIBLE)
ENGINE = InnoDB;
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Федоткина Юлия', 'fedotk', '12345678', 'fedotkina@mail.ru', '89124345687', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Баргина Кристина', 'bargina', '1624542', 'bargina@mail.ru', '89134543557', 'admin');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Решетов Игнат', 'fedotk', '12345678', 'fedotkina@mail.ru', '89124345687', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Филимонов Павел', 'fedotk', '12345678', 'fedotkina@mail.ru', '89124345687', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Борисов Тамир', 'fedotk', '12345678', 'fedotkina@mail.ru', '89124345687', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Молотова Инна', 'inna', 'refergtrwh', 'innamolovt@mail.ru', '8912124497', 'admin');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Слюсаренкова Элина', 'elinslus', '1214fwefqh', 'slusar@mail.ru', '89124345687', 'manager');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Беглова Василиса', 'runnforest', 'loiyrjn', 'runnforest@mail.ru', '89124235687', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Акуленко Тамара', 'akulenko', '3236fvwae', 'akulenko@mail.ru', '8917635687', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Триплова Инна', 'triples', 'wage4w44', 'triples@mail.ru', '89123425687', 'manager');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Гоголев Федор', 'gogolmogol', 'wgergr325', 'gogolmogol@mail.ru', '89124345687', 'manager');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Машкин Денис', 'denism', 'wqtwtgw', 'denism@mail.ru', '8912423487', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Кошкина Светлана', 'caat', 'ntrsghera', 'catt@mail.ru', '8923535587', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Армиенов Танир', 'tanir', 'asfewg78', 'tanira@mail.ru', '89134235687', 'manager');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Литовченко Татьяна', 'litovt', '12fwetew78', 'flitovt@mail.ru', '89987564345687', 'client');
INSERT Users(Name, Login, Password, Email, Phone, Role) 
VALUES ('Липатов Денис', 'dlipatov', '12cagtrse8', 'dlipatov@mail.ru', '89263255687', 'admin');
-- -----------------------------------------------------
-- Table `IPM`.`Contract`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Contract` (
  `idContract` INT NOT NULL AUTO_INCREMENT,
  `Description` VARCHAR(45) NULL,
  `AuthOrder` BLOB NULL,
  ` JointIS` BLOB NULL,
  `License` BLOB NULL,
  `Alienation_IS` BLOB NULL,
  `Alienation_PAT` BLOB NULL,
  `AuthRight` BLOB NULL,
  `CertRec` BLOB NULL,
  PRIMARY KEY (`idContract`),
  UNIQUE INDEX `idContract_UNIQUE` (`idContract` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Payment` (
  `idPayment` INT NOT NULL AUTO_INCREMENT,
  `Authorship` BLOB NULL,
  `Patent` BLOB NULL,
  `Recognition` BLOB NULL,
  `Trademark` BLOB NULL,
  `FIPS1` BLOB NULL,
  `FIPS2` BLOB NULL,
  `FIPS3` BLOB NULL,
  `RAO` BLOB NULL,
  PRIMARY KEY (`idPayment`),
  UNIQUE INDEX `idPayment_UNIQUE` (`idPayment` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Working_Documentation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Working_Documentation` (
  `idWorking_Documentation` INT NOT NULL,
  `idUsers` INT NOT NULL,
  `Contract` BLOB NULL,
  `Task` BLOB NULL,
  `Report` BLOB NULL,
  `Decision` BLOB NULL,
  `Formula_izobr` BLOB NULL,
  `Formula_model` BLOB NULL,
  `Image` BLOB NULL,
  `idContract` INT NOT NULL,
  `Essay` BLOB NULL,
  `Note` BLOB NULL,
  `FIPS1` BLOB NULL,
  `FIPS2` BLOB NULL,
  `FIPS3` BLOB NULL,
  `idPayment` INT NOT NULL,
  PRIMARY KEY (`idWorking_Documentation`, `idUsers`, `idContract`, `idPayment`),
  INDEX `fk_Working_Documentation_Users_idx` (`idUsers` ASC) VISIBLE,
  INDEX `fk_Working_Documentation_Contract1_idx` (`idContract` ASC) VISIBLE,
  UNIQUE INDEX `Contract_idContract_UNIQUE` (`idContract` ASC) VISIBLE,
  INDEX `fk_Working_Documentation_Payment1_idx` (`idPayment` ASC) VISIBLE,
  CONSTRAINT `fk_Working_Documentation_Users`
    FOREIGN KEY (`idUsers`)
    REFERENCES `IPM`.`Users` (`idUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Working_Documentation_Contract1`
    FOREIGN KEY (`idContract`)
    REFERENCES `IPM`.`Contract` (`idContract`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Working_Documentation_Payment1`
    FOREIGN KEY (`idPayment`)
    REFERENCES `IPM`.`Payment` (`idPayment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Business_tasks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Business_tasks` (
  `idBusiness_tasks` INT NOT NULL,
  `Tittle` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  PRIMARY KEY (`idBusiness_tasks`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Ways_Reg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Ways_Reg` (
  `idWays_Reg` INT NOT NULL AUTO_INCREMENT,
  `Tittle` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  PRIMARY KEY (`idWays_Reg`),
  UNIQUE INDEX `idWays_Reg_UNIQUE` (`idWays_Reg` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Obj_Reg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Obj_Reg` (
  `idObj_Reg` INT NOT NULL AUTO_INCREMENT,
  `Tittle` VARCHAR(45) NULL,
  `Description` VARCHAR(45) NULL,
  PRIMARY KEY (`idObj_Reg`),
  UNIQUE INDEX `idObj_Reg_UNIQUE` (`idObj_Reg` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Project_Form`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Project_Form` (
  `idProject_Form` INT NOT NULL AUTO_INCREMENT,
  `Tittle` VARCHAR(30) NULL,
  `Description` VARCHAR(200) NULL,
  `Occupation` VARCHAR(105) NULL,
  `Territory` VARCHAR(45) NULL,
  `Risk` VARCHAR(200) NULL,
  `Customer_idUsers` INT NOT NULL,
  `Head_idUsers1` INT NOT NULL,
  `Curator_idUsers2` INT NOT NULL,
  `idBusiness_tasks` INT NOT NULL,
  `idWays_Reg` INT NOT NULL,
  `idObj_Reg` INT NOT NULL,
  PRIMARY KEY (`idProject_Form`, `Customer_idUsers`, `Head_idUsers1`, `Curator_idUsers2`, `idBusiness_tasks`, `idWays_Reg`, `idObj_Reg`),
  UNIQUE INDEX `idProject_Form_UNIQUE` (`idProject_Form` ASC) VISIBLE,
  INDEX `fk_Project_Form_Users1_idx` (`Customer_idUsers` ASC) VISIBLE,
  INDEX `fk_Project_Form_Users2_idx` (`Head_idUsers1` ASC) VISIBLE,
  INDEX `fk_Project_Form_Users3_idx` (`Curator_idUsers2` ASC) VISIBLE,
  INDEX `fk_Project_Form_Business_tasks1_idx` (`idBusiness_tasks` ASC) VISIBLE,
  INDEX `fk_Project_Form_Ways_Reg1_idx` (`idWays_Reg` ASC) VISIBLE,
  INDEX `fk_Project_Form_Obj_Reg1_idx` (`idObj_Reg` ASC) VISIBLE,
  CONSTRAINT `fk_Project_Form_Users1`
    FOREIGN KEY (`Customer_idUsers`)
    REFERENCES `IPM`.`Users` (`idUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Project_Form_Users2`
    FOREIGN KEY (`Head_idUsers1`)
    REFERENCES `IPM`.`Users` (`idUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Project_Form_Users3`
    FOREIGN KEY (`Curator_idUsers2`)
    REFERENCES `IPM`.`Users` (`idUsers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Project_Form_Business_tasks1`
    FOREIGN KEY (`idBusiness_tasks`)
    REFERENCES `IPM`.`Business_tasks` (`idBusiness_tasks`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Project_Form_Ways_Reg1`
    FOREIGN KEY (`idWays_Reg`)
    REFERENCES `IPM`.`Ways_Reg` (`idWays_Reg`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Project_Form_Obj_Reg1`
    FOREIGN KEY (`idObj_Reg`)
    REFERENCES `IPM`.`Obj_Reg` (`idObj_Reg`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Template`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Template` (
  `idTemplate` INT NOT NULL AUTO_INCREMENT,
  `Type` VARCHAR(45) NULL,
  `Tittle` VARCHAR(45) NULL,
  `Purpose` VARCHAR(45) NULL,
  `File` BLOB NULL,
  PRIMARY KEY (`idTemplate`),
  UNIQUE INDEX `idTemplate_UNIQUE` (`idTemplate` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Documents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Documents` (
  `idDocuments` INT NOT NULL AUTO_INCREMENT,
  `Tittle` VARCHAR(45) NULL,
  `Description` VARCHAR(205) NULL,
  `Purpose` VARCHAR(45) NULL,
  `File` BLOB NULL,
  PRIMARY KEY (`idDocuments`),
  UNIQUE INDEX `idTemplate_UNIQUE` (`idDocuments` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Directory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Directory` (
  `idDirectory` INT NOT NULL AUTO_INCREMENT,
  `Tittle` VARCHAR(45) NULL,
  `Description` VARCHAR(205) NULL,
  `Purpose` VARCHAR(45) NULL,
  `File` BLOB NULL,
  PRIMARY KEY (`idDirectory`),
  UNIQUE INDEX `idTemplate_UNIQUE` (`idDirectory` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Specifications`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Specifications` (
  `idSpecifications` INT NOT NULL AUTO_INCREMENT,
  `Tttle` VARCHAR(45) NULL,
  `Product_purpose` VARCHAR(45) NULL,
  `Equipment` BLOB NULL,
  `Interface` BLOB NULL,
  `Drawing` BLOB NULL,
  `Picture` BLOB NULL,
  `Designe` BLOB NULL,
  `Result` BLOB NULL,
  PRIMARY KEY (`idSpecifications`),
  UNIQUE INDEX `idSpecifications_UNIQUE` (`idSpecifications` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Registry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Registry` (
  `idRegistry` INT NOT NULL AUTO_INCREMENT,
  `Local` BLOB NULL,
  `Patent_Izobr` BLOB NULL,
  `Patent_Model` BLOB NULL,
  `Patent_Sample` BLOB NULL,
  `Authorship` BLOB NULL,
  `Contract_IS` BLOB NULL,
  `Contract_Right` BLOB NULL,
  `Recognition` BLOB NULL,
  `Trademark` BLOB NULL,
  `RAO` BLOB NULL,
  `FIPS1` BLOB NULL,
  `FIPS2` BLOB NULL,
  `RID` BLOB NULL,
  `Pass_IS` BLOB NULL,
  `Expert_Sol` BLOB NULL,
  `idWorking_Documentation` INT NOT NULL,
  PRIMARY KEY (`idRegistry`, `idWorking_Documentation`),
  UNIQUE INDEX `idRegistry_UNIQUE` (`idRegistry` ASC) VISIBLE,
  INDEX `fk_Registry_Working_Documentation1_idx` (`idWorking_Documentation` ASC) VISIBLE,
  CONSTRAINT `fk_Registry_Working_Documentation1`
    FOREIGN KEY (`idWorking_Documentation`)
    REFERENCES `IPM`.`Working_Documentation` (`idWorking_Documentation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IPM`.`Registration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IPM`.`Registration` (
  `idRegistration` INT NOT NULL AUTO_INCREMENT,
  `idSpecifications` INT NOT NULL,
  `idDocuments` INT NOT NULL,
  `idDirectory` INT NOT NULL,
  `idTemplate` INT NOT NULL,
  `idWorking_Documentation` INT NOT NULL,
  `idProject_Form` INT NOT NULL,
  `Customer_idUsers` INT NOT NULL,
  `Head_idUsers1` INT NOT NULL,
  `Curator_idUsers2` INT NOT NULL,
  `idBusiness_tasks` INT NOT NULL,
  `idWays_Reg` INT NOT NULL,
  `idObj_Reg` INT NOT NULL,
  PRIMARY KEY (`idRegistration`, `idSpecifications`, `idDocuments`, `idDirectory`, `idTemplate`, `idWorking_Documentation`, `idProject_Form`, `Customer_idUsers`, `Head_idUsers1`, `Curator_idUsers2`, `idBusiness_tasks`, `idWays_Reg`, `idObj_Reg`),
  UNIQUE INDEX `idRegistration_UNIQUE` (`idRegistration` ASC) VISIBLE,
  INDEX `fk_Registration_Specifications1_idx` (`idSpecifications` ASC) VISIBLE,
  INDEX `fk_Registration_Documents1_idx` (`idDocuments` ASC) VISIBLE,
  INDEX `fk_Registration_Directory1_idx` (`idDirectory` ASC) VISIBLE,
  INDEX `fk_Registration_Template1_idx` (`idTemplate` ASC) VISIBLE,
  INDEX `fk_Registration_Working_Documentation1_idx` (`idWorking_Documentation` ASC) VISIBLE,
  INDEX `fk_Registration_Project_Form1_idx` (`idProject_Form` ASC, `Customer_idUsers` ASC, `Head_idUsers1` ASC, `Curator_idUsers2` ASC, `idBusiness_tasks` ASC, `idWays_Reg` ASC, `idObj_Reg` ASC) VISIBLE,
  CONSTRAINT `fk_Registration_Specifications1`
    FOREIGN KEY (`idSpecifications`)
    REFERENCES `IPM`.`Specifications` (`idSpecifications`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registration_Documents1`
    FOREIGN KEY (`idDocuments`)
    REFERENCES `IPM`.`Documents` (`idDocuments`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registration_Directory1`
    FOREIGN KEY (`idDirectory`)
    REFERENCES `IPM`.`Directory` (`idDirectory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registration_Template1`
    FOREIGN KEY (`idTemplate`)
    REFERENCES `IPM`.`Template` (`idTemplate`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registration_Working_Documentation1`
    FOREIGN KEY (`idWorking_Documentation`)
    REFERENCES `IPM`.`Working_Documentation` (`idWorking_Documentation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Registration_Project_Form1`
    FOREIGN KEY (`idProject_Form` , `Customer_idUsers` , `Head_idUsers1` , `Curator_idUsers2` , `idBusiness_tasks` , `idWays_Reg` , `idObj_Reg`)
    REFERENCES `IPM`.`Project_Form` (`idProject_Form` , `Customer_idUsers` , `Head_idUsers1` , `Curator_idUsers2` , `idBusiness_tasks` , `idWays_Reg` , `idObj_Reg`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
