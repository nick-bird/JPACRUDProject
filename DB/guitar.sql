-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema guitardb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `guitardb` ;

-- -----------------------------------------------------
-- Schema guitardb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `guitardb` DEFAULT CHARACTER SET utf8 ;
USE `guitardb` ;

-- -----------------------------------------------------
-- Table `guitar`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `guitar` ;

CREATE TABLE IF NOT EXISTS `guitar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NULL,
  `price` DECIMAL(8,2) NULL,
  `model` VARCHAR(45) NULL,
  `store_name` VARCHAR(45) NULL,
  `style` VARCHAR(45) NULL,
  `play_notes` VARCHAR(45) NULL,
  `tone_rating` INT NULL,
  `intonation_rating` INT NULL,
  `projection_rating` INT NULL,
  `string_type` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS guitaruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'guitaruser'@'localhost' IDENTIFIED BY 'guitaruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'guitaruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `guitar`
-- -----------------------------------------------------
START TRANSACTION;
USE `guitardb`;
INSERT INTO `guitar` (`id`, `manufacturer`, `price`, `model`, `store_name`, `style`, `play_notes`, `tone_rating`, `intonation_rating`, `projection_rating`, `string_type`) VALUES (1, 'Yamahah', 1000.45, 'aaa', 'gc', 'Classical', 'some text here', 1, 7, 5, 'Nylon');
INSERT INTO `guitar` (`id`, `manufacturer`, `price`, `model`, `store_name`, `style`, `play_notes`, `tone_rating`, `intonation_rating`, `projection_rating`, `string_type`) VALUES (2, 'Cordova ', 500, 'aaa', 'gc', 'Flamenco', 'some text here', 3, 5, 3, 'Nylon');
INSERT INTO `guitar` (`id`, `manufacturer`, `price`, `model`, `store_name`, `style`, `play_notes`, `tone_rating`, `intonation_rating`, `projection_rating`, `string_type`) VALUES (3, 'Yamahah', 727.27, 'something', 'ww', 'Electric', NULL, 4, 4, 5, 'Steel');
INSERT INTO `guitar` (`id`, `manufacturer`, `price`, `model`, `store_name`, `style`, `play_notes`, `tone_rating`, `intonation_rating`, `projection_rating`, `string_type`) VALUES (4, 'Taylor', 500, 'something else', 'ww', 'Accoustic', 'some text here', 6, 3, 2, NULL);

COMMIT;

