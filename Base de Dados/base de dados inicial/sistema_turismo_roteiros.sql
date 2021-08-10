CREATE TABLE `sistema_turismo`.`roteiros` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fk_cidade` INT NOT NULL,
  `fk_tipo` INT NOT NULL,
  `fk_atracoes` INT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `sistema_turismo`.`atracoes` (
  `idRoteiro` INT NOT NULL,
  `idAtracao` INT NOT NULL);

ALTER TABLE `sistema_turismo`.`atracoes_roteiro` 
ADD INDEX `fk_roteiro_idx` (`idRoteiro` ASC) VISIBLE,
ADD INDEX `fk_atracao_idx` (`idAtracao` ASC) VISIBLE;
;
ALTER TABLE `sistema_turismo`.`atracoes_roteiro` 
ADD CONSTRAINT `fk_roteiro`
  FOREIGN KEY (`idRoteiro`)
  REFERENCES `sistema_turismo`.`roteiros` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_atracao`
  FOREIGN KEY (`idAtracao`)
  REFERENCES `sistema_turismo`.`pontos_turisticos` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `sistema_turismo`.`atracoes_roteiro` 
ADD INDEX `fk_roteiro_idx` (`idRoteiro` ASC) VISIBLE,
ADD INDEX `fk_atracao_idx` (`idAtracao` ASC) VISIBLE;
;
ALTER TABLE `sistema_turismo`.`atracoes_roteiro` 
ADD CONSTRAINT `fk_roteiro`
  FOREIGN KEY (`idRoteiro`)
  REFERENCES `sistema_turismo`.`roteiros` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_atracao`
  FOREIGN KEY (`idAtracao`)
  REFERENCES `sistema_turismo`.`pontos_turisticos` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
