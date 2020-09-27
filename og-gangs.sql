USE `essentialmode`;

INSERT INTO `jobs` (name, label) VALUES
	('ballas', 'Ballas'),
	('thefamily', 'Thefamily'),
	('vagos', 'Vagos'),
	('marabunta', 'Marabunta'),
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('ballas',1,'ballas','Ballas',0,'{}','{}'),
	('thefamily',1,'thefamily','Thefamily',0,'{}','{}'),
	('vagos',1,'vagos','Vagos',0,'{}','{}'),
	('marabunta',1,'marabunta',"Marabunta",0,'{}','{}')
;