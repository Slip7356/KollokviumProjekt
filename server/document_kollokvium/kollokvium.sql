select * from hallgato;
SELECT * from jelentkezes;
SELECT * from vizsga;

#user t�bla l�trehoz�sa
  CREATE TABLE IF NOT EXISTS users (
  id INT(11) NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(50) DEFAULT NULL,
  lastName VARCHAR(50) DEFAULT NULL,
  gender VARCHAR(10) DEFAULT NULL,
  userName VARCHAR(50) DEFAULT NULL,
  email VARCHAR(255) DEFAULT NULL,
  password VARCHAR(100) DEFAULT NULL,
  number INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 24,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

#�talak�t�s
select SUBSTRING_INDEX('Kiss B�la', ' ', 1) veznev,SUBSTRING_INDEX('Kiss B�la', ' ', -1) kernev ;

#Email
SELECT concat(veznev('Kiss B�la'),'.', kernev('Kiss B�la'),'@gmail.com');
SELECT email ('Kiss B�la');
SELECT nev,COUNT(*) db from users 
group by nev;
