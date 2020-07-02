CREATE DATABASE Practicum_Enemdu;
USE Practicum_Enemdu;
-- DROP DATABASE Practicum_Enemdu;
-- -----------------------------------------------------
-- Table `Provincias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Provincias` (
  `cod_provincia` CHAR(2) NOT NULL,
  `provincia` VARCHAR(20) NOT NULL,
  `zona` CHAR(2) NOT NULL,
  PRIMARY KEY (`cod_provincia`));
  
-- -----------------------------------------------------
-- Table `Cantones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cantones` (
  `cod_canton` VARCHAR(5) NOT NULL,
  `canton` VARCHAR(50) NOT NULL,
  `cod_provincia` CHAR(2) NOT NULL,
  PRIMARY KEY (`cod_canton`),
   CONSTRAINT `fk_cod_provincia`
   FOREIGN KEY (`cod_provincia`)
   REFERENCES `Provincias` (`cod_provincia`));  
-- -----------------------------------------------------
-- Table `Condiciones_Actividad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Condiciones_Actividad` (
  `cod_cond_act` CHAR(1) NOT NULL,
  `condicion_actividad` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod_cond_act`));
  
-- -----------------------------------------------------
-- Table `Etnias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Etnias` (
  `cod_etnia` CHAR(1) NOT NULL,
  `etnia` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`cod_etnia`));
  
-- -----------------------------------------------------
-- Table `grupos_ocupacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grupos_ocupacion` (
  `cod_grupo` CHAR(2) NOT NULL,
  `grupo` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod_grupo`)); 
  
-- -----------------------------------------------------
-- Table `Niveles_instruccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Niveles_instruccion` (
  `cod_nivel` CHAR(2) NOT NULL,
  `nivel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_nivel`));
  
-- -----------------------------------------------------
-- Table `Ramas_Actividad`
-- -----------------------------------------------------  
CREATE TABLE IF NOT EXISTS `Ramas_Actividad` (
  `cod_rama` CHAR(2) NOT NULL,
  `rama` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod_rama`));  
  

-- -----------------------------------------------------
-- Table `Personas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Personas` (
  `id_persona` VARCHAR(30) NOT NULL,
  `anio` CHAR(4) NOT NULL,
  `mes` CHAR(2) NOT NULL,
  `cod_canton` VARCHAR(5) NOT NULL,
  `area` CHAR(1) NOT NULL,
  `genero` CHAR(1) NOT NULL,
  `edad` INT NOT NULL,
  `estado_civil` VARCHAR(15),
  `cod_nivel` CHAR(2),
  `cod_etnia` CHAR(1),
  `ingresos` DOUBLE,
  `cod_cond_act` CHAR(1),
  `sectorizacion` VARCHAR(45),
  `cod_grupo` CHAR(2),
  `cod_rama` CHAR(2),
  `factor_expansion` FLOAT,
  PRIMARY KEY (`id_persona`),
  CONSTRAINT `fk_cod_grupo`
    FOREIGN KEY (`cod_grupo`)
    REFERENCES `grupos_ocupacion` (`cod_grupo`),
  CONSTRAINT `fk_cod_rama`
    FOREIGN KEY (`cod_rama`)
    REFERENCES `Ramas_Actividad` (`cod_rama`),
  CONSTRAINT `fk_cod_cond_act`
    FOREIGN KEY (`cod_cond_act`)
    REFERENCES `Condiciones_Actividad` (`cod_cond_act`),
  CONSTRAINT `fk_cod_nivel`
    FOREIGN KEY (`cod_nivel`)
    REFERENCES `Niveles_instruccion` (`cod_nivel`),
  CONSTRAINT `fk_cod_etnia`
    FOREIGN KEY (`cod_etnia`)
    REFERENCES `Etnias` (`cod_etnia`),
  CONSTRAINT `fk_cod_canton`
    FOREIGN KEY (`cod_canton`)
    REFERENCES `Cantones` (`cod_canton`));  
-- --------------------------------------------------------------------------------------------------
-- -----------------------------------------------------
-- INSERTS Table `Provincias`
-- -----------------------------------------------------
INSERT INTO Provincias  VALUES ('01','Azuay','07');
INSERT INTO Provincias  VALUES ('02','Bolivar','03');
INSERT INTO Provincias  VALUES ('03','Cañar','07');
INSERT INTO Provincias  VALUES ('04','Carchi','06');
INSERT INTO Provincias  VALUES ('05','Cotopaxi','03');
INSERT INTO Provincias  VALUES ('06','Chimborazo','03');
INSERT INTO Provincias  VALUES ('07','El Oro','07');
INSERT INTO Provincias  VALUES ('08','Esmeraldas','06');
INSERT INTO Provincias  VALUES ('09','Guayas','04');
INSERT INTO Provincias  VALUES ('10','Imbabura','06');
INSERT INTO Provincias  VALUES ('11','Loja','07');
INSERT INTO Provincias  VALUES ('12','Los Rios','05');
INSERT INTO Provincias  VALUES ('13','Manabi','05');
INSERT INTO Provincias  VALUES ('14','Morona Santiago','07');
INSERT INTO Provincias  VALUES ('15','Napo','06');
INSERT INTO Provincias  VALUES ('16','Pastaza','03');
INSERT INTO Provincias  VALUES ('17','Pichincha','02');
INSERT INTO Provincias  VALUES ('18','Tungurahua','03');
INSERT INTO Provincias  VALUES ('19','Zamora Chinchipe','07');
INSERT INTO Provincias  VALUES ('20','Galapagos','05');
INSERT INTO Provincias  VALUES ('21','Sucumbios','06');
INSERT INTO Provincias  VALUES ('22','Orellana','06');
INSERT INTO Provincias  VALUES ('23','Santo Domingo','02');
INSERT INTO Provincias  VALUES ('24','Santa Elena','04');
-- -----------------------------------------------------
-- INSERTS Table `Cantones`
-- -----------------------------------------------------
INSERT INTO Cantones VALUES('0101','CUENCA','01');
INSERT INTO Cantones VALUES('0102','GIRON','01');
INSERT INTO Cantones VALUES('0103','GUALACEO','01');
INSERT INTO Cantones VALUES('0104','NABON','01');
INSERT INTO Cantones VALUES('0105','PAUTE','01');
INSERT INTO Cantones VALUES('0106','PUCARA','01');
INSERT INTO Cantones VALUES('0107','SAN FERNANDO','01');
INSERT INTO Cantones VALUES('0108','SANTA ISABEL','01');
INSERT INTO Cantones VALUES('0109','SIGSIG','01');
INSERT INTO Cantones VALUES('0110','OÑA','01');
INSERT INTO Cantones VALUES('0111','CHORDELEG','01');
INSERT INTO Cantones VALUES('0112','EL PAN','01');
INSERT INTO Cantones VALUES('0113','SEVILLA DE ORO','01');
INSERT INTO Cantones VALUES('0114','GUACHAPALA','01');
INSERT INTO Cantones VALUES('0115','CAMILO PONCE ENRIQUEZ','01');
INSERT INTO Cantones VALUES('0201','GUARANDA','02');
INSERT INTO Cantones VALUES('0202','CHILLANES','02');
INSERT INTO Cantones VALUES('0203','CHIMBO','02');
INSERT INTO Cantones VALUES('0204','ECHEANDIA','02');
INSERT INTO Cantones VALUES('0205','SAN MIGUEL','02');
INSERT INTO Cantones VALUES('0206','CALUMA ','02');
INSERT INTO Cantones VALUES('0207','LAS NAVES','02');
INSERT INTO Cantones VALUES('0301','AZOGUES','03');
INSERT INTO Cantones VALUES('0302','BIBLIAN','03');
INSERT INTO Cantones VALUES('0303','CAÑAR','03');
INSERT INTO Cantones VALUES('0304','LA TRONCAL','03');
INSERT INTO Cantones VALUES('0305','EL TAMBO ','03');
INSERT INTO Cantones VALUES('0306','DELEG','03');
INSERT INTO Cantones VALUES('0307','SUSCAL','03');
INSERT INTO Cantones VALUES('0401','TULCAN','04');
INSERT INTO Cantones VALUES('0402','BOLIVAR','04');
INSERT INTO Cantones VALUES('0403','ESPEJO','04');
INSERT INTO Cantones VALUES('0404','MIRA','04');
INSERT INTO Cantones VALUES('0405','MONTUFAR','04');
INSERT INTO Cantones VALUES('0406','SAN PEDRO DE HUACA','04');
INSERT INTO Cantones VALUES('0501','LATACUNGA','05');
INSERT INTO Cantones VALUES('0502','LA MANA','05');
INSERT INTO Cantones VALUES('0503','PANGUA','05');
INSERT INTO Cantones VALUES('0504','PUJILI','05');
INSERT INTO Cantones VALUES('0505','SALCEDO','05');
INSERT INTO Cantones VALUES('0506','SAQUISILI','05');
INSERT INTO Cantones VALUES('0507','SIGCHOS','05');
INSERT INTO Cantones VALUES('0601','RIOBAMBA','06');
INSERT INTO Cantones VALUES('0602','ALAUSI','06');
INSERT INTO Cantones VALUES('0603','COLTA','06');
INSERT INTO Cantones VALUES('0604','CHAMBO','06');
INSERT INTO Cantones VALUES('0605','CHUNCHI','06');
INSERT INTO Cantones VALUES('0606','GUAMOTE','06');
INSERT INTO Cantones VALUES('0607','GUANO','06');
INSERT INTO Cantones VALUES('0608','PALLATANGA','06');
INSERT INTO Cantones VALUES('0609','PENIPE','06');
INSERT INTO Cantones VALUES('0610','CUMANDA','06');
INSERT INTO Cantones VALUES('0701','MACHALA','07');
INSERT INTO Cantones VALUES('0702','ARENILLAS','07');
INSERT INTO Cantones VALUES('0703','ATAHUALPA','07');
INSERT INTO Cantones VALUES('0704','BALSAS','07');
INSERT INTO Cantones VALUES('0705','CHILLA','07');
INSERT INTO Cantones VALUES('0706','EL GUABO','07');
INSERT INTO Cantones VALUES('0707','HUAQUILLAS','07');
INSERT INTO Cantones VALUES('0708','MARCABELI','07');
INSERT INTO Cantones VALUES('0709','PASAJE','07');
INSERT INTO Cantones VALUES('0710','PIÑAS','07');
INSERT INTO Cantones VALUES('0711','PORTOVELO','07');
INSERT INTO Cantones VALUES('0712','SANTA ROSA','07');
INSERT INTO Cantones VALUES('0713','ZARUMA','07');
INSERT INTO Cantones VALUES('0714','LAS LAJAS','07');
INSERT INTO Cantones VALUES('0801','ESMERALDAS','08');
INSERT INTO Cantones VALUES('0802','ELOY ALFARO','08');
INSERT INTO Cantones VALUES('0803','MUISNE','08');
INSERT INTO Cantones VALUES('0804','QUININDE','08');
INSERT INTO Cantones VALUES('0805','SAN LORENZO','08');
INSERT INTO Cantones VALUES('0806','ATACAMES','08');
INSERT INTO Cantones VALUES('0807','RIOVERDE','08');
INSERT INTO Cantones VALUES('0808','LA CONCORDIA','08');
INSERT INTO Cantones VALUES('0901','GUAYAQUIL','09');
INSERT INTO Cantones VALUES('0902','ALFREDO BAQUERIZO MORENO (JUJAN)','09');
INSERT INTO Cantones VALUES('0903','BALAO','09');
INSERT INTO Cantones VALUES('0904','BALZAR','09');
INSERT INTO Cantones VALUES('0905','COLIMES','09');
INSERT INTO Cantones VALUES('0906','DAULE','09');
INSERT INTO Cantones VALUES('0907','DURAN','09');
INSERT INTO Cantones VALUES('0908','EL EMPALME','09');
INSERT INTO Cantones VALUES('0909','EL TRIUNFO','09');
INSERT INTO Cantones VALUES('0910','MILAGRO','09');
INSERT INTO Cantones VALUES('0911','NARANJAL','09');
INSERT INTO Cantones VALUES('0912','NARANJITO','09');
INSERT INTO Cantones VALUES('0913','PALESTINA','09');
INSERT INTO Cantones VALUES('0914','PEDRO CARBO','09');
INSERT INTO Cantones VALUES('0916','SAMBORONDON','09');
INSERT INTO Cantones VALUES('0918','SANTA LUCIA','09');
INSERT INTO Cantones VALUES('0919','SALITRE (URBINA JADO)','09');
INSERT INTO Cantones VALUES('0920','SAN JACINTO DE YAGUACHI','09');
INSERT INTO Cantones VALUES('0921','PLAYAS','09');
INSERT INTO Cantones VALUES('0922','SIMON BOLIVAR','09');
INSERT INTO Cantones VALUES('0923','CORONEL MARCELINO MARIDUEÑA','09');
INSERT INTO Cantones VALUES('0924','LOMAS DE SARGENTILLO','09');
INSERT INTO Cantones VALUES('0925','NOBOL','09');
INSERT INTO Cantones VALUES('0927','GENERAL ANTONIO ELIZALDE ','09');
INSERT INTO Cantones VALUES('0928','ISIDRO AYORA ','09');
INSERT INTO Cantones VALUES('1001','IBARRA','10');
INSERT INTO Cantones VALUES('1002','ANTONIO ANTE','10');
INSERT INTO Cantones VALUES('1003','COTACACHI','10');
INSERT INTO Cantones VALUES('1004','OTAVALO','10');
INSERT INTO Cantones VALUES('1005','PIMAMPIRO','10');
INSERT INTO Cantones VALUES('1006','SAN MIGUEL DE URCUQUI','10');
INSERT INTO Cantones VALUES('1101','LOJA','11');
INSERT INTO Cantones VALUES('1102','CALVAS','11');
INSERT INTO Cantones VALUES('1103','CATAMAYO','11');
INSERT INTO Cantones VALUES('1104','CELICA','11');
INSERT INTO Cantones VALUES('1105','CHAGUARPAMBA','11');
INSERT INTO Cantones VALUES('1106','ESPINDOLA','11');
INSERT INTO Cantones VALUES('1107','GONZANAMA','11');
INSERT INTO Cantones VALUES('1108','MACARA','11');
INSERT INTO Cantones VALUES('1109','PALTAS','11');
INSERT INTO Cantones VALUES('1110','PUYANGO','11');
INSERT INTO Cantones VALUES('1111','SARAGURO','11');
INSERT INTO Cantones VALUES('1112','SOZORANGA','11');
INSERT INTO Cantones VALUES('1113','ZAPOTILLO','11');
INSERT INTO Cantones VALUES('1114','PINDAL','11');
INSERT INTO Cantones VALUES('1115','QUILANGA','11');
INSERT INTO Cantones VALUES('1116','OLMEDO','11');
INSERT INTO Cantones VALUES('1201','BABAHOYO','12');
INSERT INTO Cantones VALUES('1202','BABA','12');
INSERT INTO Cantones VALUES('1203','MONTALVO','12');
INSERT INTO Cantones VALUES('1204','PUEBLOVIEJO','12');
INSERT INTO Cantones VALUES('1205','QUEVEDO','12');
INSERT INTO Cantones VALUES('1206','URDANETA','12');
INSERT INTO Cantones VALUES('1207','VENTANAS','12');
INSERT INTO Cantones VALUES('1208','VINCES','12');
INSERT INTO Cantones VALUES('1209','PALENQUE','12');
INSERT INTO Cantones VALUES('1210','BUENA FE','12');
INSERT INTO Cantones VALUES('1211','VALENCIA','12');
INSERT INTO Cantones VALUES('1212','MOCACHE','12');
INSERT INTO Cantones VALUES('1213','QUINSALOMA','12');
INSERT INTO Cantones VALUES('1301','PORTOVIEJO','13');
INSERT INTO Cantones VALUES('1302','BOLIVAR','13');
INSERT INTO Cantones VALUES('1303','CHONE','13');
INSERT INTO Cantones VALUES('1304','EL CARMEN','13');
INSERT INTO Cantones VALUES('1305','FLAVIO ALFARO','13');
INSERT INTO Cantones VALUES('1306','JIPIJAPA','13');
INSERT INTO Cantones VALUES('1307','JUNIN','13');
INSERT INTO Cantones VALUES('1308','MANTA','13');
INSERT INTO Cantones VALUES('1309','MONTECRISTI   ','13');
INSERT INTO Cantones VALUES('1310','PAJAN','13');
INSERT INTO Cantones VALUES('1311','PICHINCHA','13');
INSERT INTO Cantones VALUES('1312','ROCAFUERTE','13');
INSERT INTO Cantones VALUES('1313','SANTA ANA','13');
INSERT INTO Cantones VALUES('1314','SUCRE','13');
INSERT INTO Cantones VALUES('1315','TOSAGUA','13');
INSERT INTO Cantones VALUES('1316','24 DE MAYO','13');
INSERT INTO Cantones VALUES('1317','PEDERNALES','13');
INSERT INTO Cantones VALUES('1318','OLMEDO','13');
INSERT INTO Cantones VALUES('1319','PUERTO LOPEZ','13');
INSERT INTO Cantones VALUES('1320','JAMA','13');
INSERT INTO Cantones VALUES('1321','JARAMIJO','13');
INSERT INTO Cantones VALUES('1322','SAN VICENTE','13');
INSERT INTO Cantones VALUES('1401','MORONA','14');
INSERT INTO Cantones VALUES('1402','GUALAQUIZA','14');
INSERT INTO Cantones VALUES('1403','LIMON INDANZA','14');
INSERT INTO Cantones VALUES('1404','PALORA','14');
INSERT INTO Cantones VALUES('1405','SANTIAGO','14');
INSERT INTO Cantones VALUES('1406','SUCUA','14');
INSERT INTO Cantones VALUES('1407','HUAMBOYA','14');
INSERT INTO Cantones VALUES('1408','SAN JUAN BOSCO ','14');
INSERT INTO Cantones VALUES('1409','TAISHA ','14');
INSERT INTO Cantones VALUES('1410','LOGROÑO ','14');
INSERT INTO Cantones VALUES('1411','PABLO SEXTO','14');
INSERT INTO Cantones VALUES('1412','CANTON TIWINTZA','14');
INSERT INTO Cantones VALUES('1501','TENA','15');
INSERT INTO Cantones VALUES('1503','ARCHIDONA','15');
INSERT INTO Cantones VALUES('1504','EL CHACO','15');
INSERT INTO Cantones VALUES('1507','QUIJOS','15');
INSERT INTO Cantones VALUES('1509','CARLOS JULIO AROSEMENA TOLA','15');
INSERT INTO Cantones VALUES('1601','PASTAZA','16');
INSERT INTO Cantones VALUES('1602','MERA','16');
INSERT INTO Cantones VALUES('1603','SANTA CLARA','16');
INSERT INTO Cantones VALUES('1604','ARAJUNO','16');
INSERT INTO Cantones VALUES('1701','QUITO','17');
INSERT INTO Cantones VALUES('1702','CAYAMBE','17');
INSERT INTO Cantones VALUES('1703','MEJIA','17');
INSERT INTO Cantones VALUES('1704','PEDRO MONCAYO','17');
INSERT INTO Cantones VALUES('1705','RUMIÑAHUI','17');
INSERT INTO Cantones VALUES('1707','SAN MIGUEL DE LOS BANCOS','17');
INSERT INTO Cantones VALUES('1708','PEDRO VICENTE MALDONADO','17');
INSERT INTO Cantones VALUES('1709','PUERTO QUITO','17');
INSERT INTO Cantones VALUES('1801','AMBATO','18');
INSERT INTO Cantones VALUES('1802','BAÑOS DE AGUA SANTA','18');
INSERT INTO Cantones VALUES('1803','CEVALLOS','18');
INSERT INTO Cantones VALUES('1804','MOCHA','18');
INSERT INTO Cantones VALUES('1805','PATATE','18');
INSERT INTO Cantones VALUES('1806','QUERO','18');
INSERT INTO Cantones VALUES('1807','SAN PEDRO DE PELILEO','18');
INSERT INTO Cantones VALUES('1808','SANTIAGO DE PILLARO','18');
INSERT INTO Cantones VALUES('1809','TISALEO','18');
INSERT INTO Cantones VALUES('1901','ZAMORA','19');
INSERT INTO Cantones VALUES('1902','CHINCHIPE','19');
INSERT INTO Cantones VALUES('1903','NANGARITZA','19');
INSERT INTO Cantones VALUES('1904','YACUAMBI','19');
INSERT INTO Cantones VALUES('1905','YANTZAZA (YANZATZA)','19');
INSERT INTO Cantones VALUES('1906','EL PANGUI','19');
INSERT INTO Cantones VALUES('1907','CENTINELA DEL CONDOR','19');
INSERT INTO Cantones VALUES('1908','PALANDA','19');
INSERT INTO Cantones VALUES('1909','PAQUISHA ','19');
INSERT INTO Cantones VALUES('2001','SAN CRISTOBAL','20');
INSERT INTO Cantones VALUES('2002','ISABELA','20');
INSERT INTO Cantones VALUES('2003','SANTA CRUZ','20');
INSERT INTO Cantones VALUES('2101','LAGO AGRIO','21');
INSERT INTO Cantones VALUES('2102','GONZALO PIZARRO','21');
INSERT INTO Cantones VALUES('2103','PUTUMAYO','21');
INSERT INTO Cantones VALUES('2104','SHUSHUFINDI','21');
INSERT INTO Cantones VALUES('2105','SUCUMBIOS','21');
INSERT INTO Cantones VALUES('2106','CASCALES','21');
INSERT INTO Cantones VALUES('2107','CUYABENO','21');
INSERT INTO Cantones VALUES('2201','ORELLANA','22');
INSERT INTO Cantones VALUES('2202','AGUARICO','22');
INSERT INTO Cantones VALUES('2203','LA JOYA DE LOS SACHAS','22');
INSERT INTO Cantones VALUES('2204','LORETO','22');
INSERT INTO Cantones VALUES('2301','SANTO DOMINGO','23');
INSERT INTO Cantones VALUES('2401','SANTA ELENA','24');
INSERT INTO Cantones VALUES('2402','LA LIBERTAD','24');
INSERT INTO Cantones VALUES('2403','SALINAS','24');


-- -----------------------------------------------------
-- INSERTS Table `Condiciones_Actividad`
-- -----------------------------------------------------
INSERT INTO condiciones_actividad  VALUES ('1','Empleo Adecuado/Pleno');
INSERT INTO condiciones_actividad  VALUES ('2','Subempleo por insuficiencia de tiempo de trabajo');
INSERT INTO condiciones_actividad  VALUES ('3','Subempleo por insuficiencia de ingresos');
INSERT INTO condiciones_actividad  VALUES ('4','Otro empleo no pleno');
INSERT INTO condiciones_actividad  VALUES ('5','Empleo no remunerado');
INSERT INTO condiciones_actividad  VALUES ('6','Empleo no clasificado');
INSERT INTO condiciones_actividad  VALUES ('7','Empleo Adecuado/Pleno');
INSERT INTO condiciones_actividad  VALUES ('8',' Desempleo oculto');

-- -----------------------------------------------------
-- INSERTS Table `Etnias`
-- -----------------------------------------------------
INSERT INTO etnias VALUES ('1','Indigena');
INSERT INTO etnias VALUES ('2','Afroamericano');
INSERT INTO etnias VALUES ('3','Negro');
INSERT INTO etnias VALUES ('4','Mulato');
INSERT INTO etnias VALUES ('5','Montubio');
INSERT INTO etnias VALUES ('6','Mestizo');
INSERT INTO etnias VALUES ('7','Blanco');
INSERT INTO etnias VALUES ('8','Otro');

-- -----------------------------------------------------
-- Table `grupos_ocupacion`
-- -----------------------------------------------------
INSERT INTO grupos_ocupacion VALUES ('01','Personal direct./admin.publica y empresas');
INSERT INTO grupos_ocupacion VALUES ('02','Profesionales cientificos e intelectuales');
INSERT INTO grupos_ocupacion VALUES ('03','Tecnicos y profesionales de nivel medio');
INSERT INTO grupos_ocupacion VALUES ('04','Empleados de oficina');
INSERT INTO grupos_ocupacion VALUES ('05','Trabajad. de los servicion y comerciantes');
INSERT INTO grupos_ocupacion VALUES ('06','Trabajad. calificados agropecuarios y pesqueros');
INSERT INTO grupos_ocupacion VALUES ('07','Oficiales operarios y artesanos');
INSERT INTO grupos_ocupacion VALUES ('08','Operadores de instalac. maquinas y montad');
INSERT INTO grupos_ocupacion VALUES ('09','Trabajadores no calificados, ocupaciones elementales');
INSERT INTO grupos_ocupacion VALUES ('10','Fuerzas Armandas');

-- -----------------------------------------------------
-- Table `Niveles_instruccion`
-- -----------------------------------------------------
INSERT INTO Niveles_instruccion VALUES ('01','Ninguno');
INSERT INTO Niveles_instruccion VALUES ('02','Centro de alfabetización');
INSERT INTO Niveles_instruccion VALUES ('04','Primaria');
INSERT INTO Niveles_instruccion VALUES ('05','Educación Básica');
INSERT INTO Niveles_instruccion VALUES ('06','Secundaria');
INSERT INTO Niveles_instruccion VALUES ('07','Educación Media');
INSERT INTO Niveles_instruccion VALUES ('08','Superior no univeristario');
INSERT INTO Niveles_instruccion VALUES ('09','Superior Universitario');
INSERT INTO Niveles_instruccion VALUES ('10','Post-grado');

-- -----------------------------------------------------
-- Table `Ramas_Actividad`
-- -----------------------------------------------------  
INSERT INTO Ramas_Actividad VALUES ('01','A. Agricultura, ganadaria, casa y silvicultura y pesca');
INSERT INTO Ramas_Actividad VALUES ('02','B. Explotación de minas y canteras');
INSERT INTO Ramas_Actividad VALUES ('03','C. Industrias Manufactureras');
INSERT INTO Ramas_Actividad VALUES ('04','D. Suministros de electricidad, gas, aire acondicionado');
INSERT INTO Ramas_Actividad VALUES ('05','E. Distribución de agua, alcantarillado');
INSERT INTO Ramas_Actividad VALUES ('06','F. Construcción');
INSERT INTO Ramas_Actividad VALUES ('07','G. Comercio, reparación de vehículo');
INSERT INTO Ramas_Actividad VALUES ('08','H. Transporte y almacenamiento');
INSERT INTO Ramas_Actividad VALUES ('09','I. Actividades de alojamiento y servicios de comida');
INSERT INTO Ramas_Actividad VALUES ('10','J. Información y comunicaión');
INSERT INTO Ramas_Actividad VALUES ('11','K. Actividades financieras y de seguros');
INSERT INTO Ramas_Actividad VALUES ('12','L. Actividades Inmobiliarias');
INSERT INTO Ramas_Actividad VALUES ('13','M. Actividades profesionales, cientificas y técnicas');
INSERT INTO Ramas_Actividad VALUES ('14','N. Actividades y servicio administrativos y de apoyo');
INSERT INTO Ramas_Actividad VALUES ('15','O. Administración pública, defensa y seguridad social');
INSERT INTO Ramas_Actividad VALUES ('16','P. Enseñanza');
INSERT INTO Ramas_Actividad VALUES ('17','Q. Actividades, servicios sociales y de salud');
INSERT INTO Ramas_Actividad VALUES ('18','R. Artes, entretenimmiento y recreación');
INSERT INTO Ramas_Actividad VALUES ('19','S. Otras actividades de servicios');
INSERT INTO Ramas_Actividad VALUES ('20','T. Actividades en hogares privados con servicio doméstico');
INSERT INTO Ramas_Actividad VALUES ('21','U. Actividades de organizaciones extraterritoriales');    