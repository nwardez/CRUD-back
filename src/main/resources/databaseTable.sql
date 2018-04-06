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

INSERT INTO affaire (nomAffaire, lieuAffaire, rapportAffaire) VALUES (
	('Affaire1','rennes','rapport1'),
	('Affaire1','paris','rapport2'),
	('Affaire1','bordeaux','rapport3'),
)
