IF OBJECT_ID('dbo.Member', 'U') IS NOT NULL 
  DROP TABLE dbo.Member; 

CREATE TABLE Member(
	pk   int NOT NULL IDENTITY PRIMARY KEY,
	id   nchar(32) NULL,
	pswd nchar(64) NULL,
	name nchar(50) NULL,
)

INSERT INTO Member VALUES 
('kitty', 'k123', '³Í¸¦¿ß'), 
('micky', 'm456', '¦Ì¤pÁ¦'), 
('snoopy', 's789', '¥v§V¤ñ')
