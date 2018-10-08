DROP TABLE IF EXISTS Member; 

CREATE TABLE Member(
	pk   INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id   CHAR(32) NULL,
	pswd CHAR(64) NULL,
	NAME CHAR(50) NULL
);

INSERT INTO Member VALUES 
(NULL, 'kitty', 'k123', '³Í¸¦¿ß'), 
(NULL, 'micky', 'm456', '¦Ì¤pÁ¦'), 
(NULL, 'snoopy', 's789', '¥v§V¤ñ')
