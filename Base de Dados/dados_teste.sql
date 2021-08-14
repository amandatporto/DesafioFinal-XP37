INSERT INTO `sistema_turismo`.`cidades` (`nome`, `estado`) VALUES ('Recife', 'PE');
INSERT INTO `sistema_turismo`.`cidades` (`nome`, `estado`) VALUES ('Santos', 'SP');
INSERT INTO `sistema_turismo`.`cidades` (`nome`, `estado`) VALUES ('Natal', 'RN');
INSERT INTO `sistema_turismo`.`cidades` (`nome`, `estado`) VALUES ('Campos do Jordão', 'SP');

INSERT INTO `sistema_turismo`.`enderecos` (`logradouro`, `numero`, `complemento`, `cep`, `fk_cidade`) 
VALUES 
('Rua da boa fé', '80', '', '13265955', '1'),
('Av Afonso Pena', '560', '', '11030050', '2'),
('Rua Maria', '196', 'loja 15', '16495355', '3'),
('Rua Brigadeiro Jordão', '80', '', '12460000', '4');


INSERT INTO `sistema_turismo`.`setores` (`setor`) 
VALUES 
('Gastronomia'),
('Hotelaria'),
('Aventura'),
('Cultural'),
('Familiar');

INSERT INTO `sistema_turismo`.`pontos_turisticos` (`nome`, `descricao`, `fk_setor`, `fK_enderecos`, `horario_abertura`, `horario_fechamento`)
VALUES 
('Restaurante Dona Lurdes', 'Restaurante de comida típica nordestina', '1', '1', '11:00', '22:00'), 
('Museu do Café', 'Museu sobre a história da era do café no Brasil e sua exportação no porto de Santos', '4', '2', '10:00', '16:00'),
('Restaurante Veggie', 'Restaurante de comida Vegada', '1', '2', '11:00', '16:00'),
('Hotel Dona Lurdes', 'Hotel Dona Lurdes, atendimento acolhedor para sua estadia', '2', '1', '09:00', '23:00'),
('Mirante', 'Mirante ao ar livre', '3', '3', '08:00', '16:00'),
('Restaurante comida chique', 'comida chique', '1', '3', '18:00', '23:00'),
('Fazendinha Toriba', 'Fazendinha cheia de animais dóceis para gerar interação das crianças com a natureza', '5', '4', '10:00', '16:00');


INSERT INTO `sistema_turismo`.`roteiros` (`fk_cidade`, `fk_tipo`) 
VALUES 
('1', '1');

INSERT INTO `sistema_turismo`.`atracoes_roteiro` (`idRoteiro`, `idAtracao`) 
VALUES
('1', '1'),
('1', '4'),
('1', '8');