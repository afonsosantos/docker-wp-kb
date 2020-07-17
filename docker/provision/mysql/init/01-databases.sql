-- create databases
CREATE DATABASE IF NOT EXISTS `wordpress`;
CREATE DATABASE IF NOT EXISTS `kanboard`;

-- create root user and grant rights
CREATE USER 'afonsosantos'@'%' IDENTIFIED BY 'afonso123';
GRANT ALL PRIVILEGES ON *.* TO 'afonsosantos'@'%' IDENTIFIED BY 'afonso123';