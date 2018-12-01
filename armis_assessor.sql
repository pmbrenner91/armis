CREATE DATABASE `armis-assessor`;
CREATE TABLE `t_controls` (
	/*creating the controls table*/
	`control_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`control_description` varchar(255) DEFAULT NULL,
	`information_source` varchar(255) DEFAULT NULL,
	`control_benefit` int(11) DEFAULT NULL,
	`control_cost` int(11) DEFAULT NULL,
	`control_impact_score` int(11) DEFAULT NULL,
	UNIQUE (`control_id`),
	PRIMARY KEY (`control_id`)
);

LOCK TABLES `t_controls` WRITE;

INSERT INTO `t_controls` ()
VALUES
	()
	();
	
UNLOCK TABLES;

CREATE TABLE `t_systems` (
	/*creating the systems table*/
	`system_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`system_description` varchar(255) DEFAULT NULL,
	UNIQUE (`system_id`),
	PRIMARY KEY (`system_id`)
);

LOCK TABLES `t_systems` WRITE;

INSERT INTO `t_systems` ()
VALUES
	()
	();
	
UNLOCK TABLES;

CREATE TABLE `jt_control_system` (
	/*creating the junction table, relating controls with systems*/
	`control_system_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`control_id` int(11) unsigned NOT NULL,
	`system_id` int(11) unsigned NOT NULL,
	
	UNIQUE (`control_system_id`),
	PRIMARY KEY (`control_system_id`),
	
	INDEX (`control_id`),
	INDEX (`system_id`),
	
	KEY `control_id_fk` (`control_id`),
	KEY `system_id_fk` (`system_id`),
	
	CONSTRAINT `control_id_fk` FOREIGN KEY (`control_id`) REFERENCES `t_controls`(`control_id`),
	CONSTRAINT `system_id_fk` FOREIGN KEY (`system_id`) REFERENCES `t_systems`(`system_id`)
);

LOCK TABLES `jt_control_system` WRITE;

INSERT INTO `jt_control_system` ()
VALUES
	()
	();

UNLOCK TABLES;
