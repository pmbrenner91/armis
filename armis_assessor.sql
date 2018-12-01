CREATE DATABASE armis_assessor;
CREATE TABLE controls (
	control_id int(11) unsigned NOT NULL AUTO_INCREMENT,
	control_description varchar(255) DEFAULT NULL,
	information_source varchar(255) DEFAULT NULL,
	control_benefit int(11) DEFAULT NULL,
	control_cost int(11) DEFAULT NULL,
	control_impact_score int(11) DEFAULT NULL,
	UNIQUE (control_id),
	PRIMARY KEY (control_id)
);

LOCK TABLES controls WRITE;

INSERT INTO controls ()
VALUES
	()
	();

CREATE TABLE systems (
	system_id int(11) unsigned NOT NULL AUTO_INCREMENT,
	system_description varchar(255) DEFAULT NULL,
	UNIQUE (system_id),
	PRIMARY KEY (system_id)
);
