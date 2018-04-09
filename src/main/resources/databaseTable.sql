SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';




-- -----------------------------------------------------
-- Table `GEDESAFT.V3`.`affaire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GEDESAFT.V3`.`affaire` (
 `id_affaire` INT NOT NULL AUTO_INCREMENT,
 `nomAffaire` VARCHAR(30) NULL,
 `date_creationAffaire` DATETIME NULL,
 `date_clotureAffaire` DATETIME NULL,
 `lieuAffaire` VARCHAR(20) NULL,
 `rapportAffaire` LONGTEXT NULL,
 PRIMARY KEY (`id_affaire`),
 UNIQUE INDEX `id_affaire_UNIQUE` (`id_affaire` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GEDESAFT.V3`.`personne`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GEDESAFT.V3`.`personne` (
 `id_personne` INT NOT NULL AUTO_INCREMENT,
 `nomProtagonniste` VARCHAR(20) NULL,
 `prenomProtagonniste` VARCHAR(20) NULL,
 PRIMARY KEY (`id_personne`),
 UNIQUE INDEX `id_personne_UNIQUE` (`id_personne` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GEDESAFT.V3`.`arme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GEDESAFT.V3`.`arme` (
 `id_arme` INT NOT NULL AUTO_INCREMENT,
 `modeleArme` VARCHAR(15) NULL,
 `typeArme` VARCHAR(15) NULL,
 `id_affaire` INT NOT NULL,
 `id_personne` INT NOT NULL,
 PRIMARY KEY (`id_arme`),
 INDEX `fk_arme_affaire1_idx` (`id_affaire` ASC),
 INDEX `fk_arme_personne1_idx` (`id_personne` ASC),
 CONSTRAINT `fk_arme_affaire1`
  FOREIGN KEY (`id_affaire`)
  REFERENCES `GEDESAFT.V3`.`affaire` (`id_affaire`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
 CONSTRAINT `fk_arme_personne1`
  FOREIGN KEY (`id_personne`)
  REFERENCES `GEDESAFT.V3`.`personne` (`id_personne`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GEDESAFT.V3`.`vehicule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GEDESAFT.V3`.`vehicule` (
 `id_vehicule` INT NOT NULL AUTO_INCREMENT,
 `typeVehicule` VARCHAR(15) NULL,
 `marqueVehicule` VARCHAR(15) NULL,
 `modeleVehicule` VARCHAR(15) NULL,
 `immatriculationVehicule` VARCHAR(10) NULL,
 `couleurVehicule` VARCHAR(15) NULL,
 `id_affaire` INT NOT NULL,
 `id_personne` INT NOT NULL,
 PRIMARY KEY (`id_vehicule`),
 UNIQUE INDEX `id_vehicule_UNIQUE` (`id_vehicule` ASC),
 INDEX `fk_vehicule_affaire1_idx` (`id_affaire` ASC),
 INDEX `fk_vehicule_personne1_idx` (`id_personne` ASC),
 CONSTRAINT `fk_vehicule_affaire1`
  FOREIGN KEY (`id_affaire`)
  REFERENCES `GEDESAFT.V3`.`affaire` (`id_affaire`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
 CONSTRAINT `fk_vehicule_personne1`
  FOREIGN KEY (`id_personne`)
  REFERENCES `GEDESAFT.V3`.`personne` (`id_personne`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GEDESAFT.V3`.`suspect`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GEDESAFT.V3`.`suspect` (
 `id_suspect` INT NOT NULL AUTO_INCREMENT,
 `pseudoSuspect` VARCHAR(20) NULL,
 `photoSuspect` VARCHAR(45) NULL,
 `signeParticulierSuspect` MEDIUMTEXT NULL,
 `couleurPeauSuspect` VARCHAR(15) NULL,
 `couleurCheveuxSuspect` VARCHAR(15) NULL,
 `tailleSuspect` INT NULL,
 `id_affaire` INT NOT NULL,
 `id_personne` INT NOT NULL,
 PRIMARY KEY (`id_suspect`),
 UNIQUE INDEX `id_suspect_UNIQUE` (`id_suspect` ASC),
 INDEX `fk_suspect_affaire1_idx` (`id_affaire` ASC),
 INDEX `fk_suspect_personne1_idx` (`id_personne` ASC),
 CONSTRAINT `fk_suspect_affaire1`
  FOREIGN KEY (`id_affaire`)
  REFERENCES `GEDESAFT.V3`.`affaire` (`id_affaire`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
 CONSTRAINT `fk_suspect_personne1`
  FOREIGN KEY (`id_personne`)
  REFERENCES `GEDESAFT.V3`.`personne` (`id_personne`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GEDESAFT.V3`.`temoin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GEDESAFT.V3`.`temoin` (
 `id_temoin` INT NOT NULL AUTO_INCREMENT,
 `temoignageTemoin` LONGTEXT NULL,
 `id_affaire` INT NOT NULL,
 `id_personne` INT NOT NULL,
 PRIMARY KEY (`id_temoin`),
 UNIQUE INDEX `id_temoin_UNIQUE` (`id_temoin` ASC),
 INDEX `fk_temoin_affaire_idx` (`id_affaire` ASC),
 INDEX `fk_temoin_personne1_idx` (`id_personne` ASC),
 CONSTRAINT `fk_temoin_affaire`
  FOREIGN KEY (`id_affaire`)
  REFERENCES `GEDESAFT.V3`.`affaire` (`id_affaire`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
 CONSTRAINT `fk_temoin_personne1`
  FOREIGN KEY (`id_personne`)
  REFERENCES `GEDESAFT.V3`.`personne` (`id_personne`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GEDESAFT.V3`.`victime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GEDESAFT.V3`.`victime` (
 `id_victime` INT NOT NULL AUTO_INCREMENT,
 `typeAgressionVictime` VARCHAR(30) NULL,
 `id_affaire` INT NOT NULL,
 `id_personne` INT NOT NULL,
 PRIMARY KEY (`id_victime`),
 UNIQUE INDEX `id_victime_UNIQUE` (`id_victime` ASC),
 INDEX `fk_victime_affaire1_idx` (`id_affaire` ASC),
 INDEX `fk_victime_personne1_idx` (`id_personne` ASC),
 CONSTRAINT `fk_victime_affaire1`
  FOREIGN KEY (`id_affaire`)
  REFERENCES `GEDESAFT.V3`.`affaire` (`id_affaire`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
 CONSTRAINT `fk_victime_personne1`
  FOREIGN KEY (`id_personne`)
  REFERENCES `GEDESAFT.V3`.`personne` (`id_personne`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GEDESAFT.V3`.`personnel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GEDESAFT.V3`.`personnel` (
 `id_personnel` INT NOT NULL AUTO_INCREMENT,
 `gradePersonnel` VARCHAR(15) NULL,
 `droitAccesPersonnel` INT NOT NULL,
 `identifiantPersonnel` VARCHAR(20) NULL,
 `passwordPersonnel` VARCHAR(10) NULL,
 `id_affaire` INT NOT NULL,
 `id_personne` INT NOT NULL,
 PRIMARY KEY (`id_personnel`),
 UNIQUE INDEX `id_personnel_UNIQUE` (`id_personnel` ASC),
 INDEX `fk_personnel_affaire1_idx` (`id_affaire` ASC),
 INDEX `fk_personnel_personne1_idx` (`id_personne` ASC),
 CONSTRAINT `fk_personnel_affaire1`
  FOREIGN KEY (`id_affaire`)
  REFERENCES `GEDESAFT.V3`.`affaire` (`id_affaire`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
 CONSTRAINT `fk_personnel_personne1`
  FOREIGN KEY (`id_personne`)
  REFERENCES `GEDESAFT.V3`.`personne` (`id_personne`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- AJOUT AFFAIRE
-- -----------------------------------------------------
INSERT INTO affaire (nomAffaire, lieuAffaire, rapportAffaire)
('affaire1','rennes','rapport1'),
('affaire2','Paris','rapport2'),
('affaire3','rennes','rapport3');


1 commentaire