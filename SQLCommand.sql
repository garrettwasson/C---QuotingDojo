-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema QuotingDojo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema QuotingDojo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `QuotingDojo` DEFAULT CHARACTER SET utf8 ;
USE `QuotingDojo` ;

-- -----------------------------------------------------
-- Table `QuotingDojo`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `QuotingDojo`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `quote` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
