CREATE DATABASE IF NOT EXISTS `library`;
USE `library`;

CREATE TABLE IF NOT EXISTS `student` (
    `id` VARCHAR(100) PRIMARY KEY,
    `name` VARCHAR(255),
    `course` VARCHAR(100),
    `branch` VARCHAR(100),
    `semester` VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS `book` (
    `id` VARCHAR(100) PRIMARY KEY,
    `name` VARCHAR(255),
    `publisher` VARCHAR(255),
    `price` VARCHAR(50),
    `year` VARCHAR(50),
    `status` VARCHAR(50),
    `issue` VARCHAR(50),
    `due` VARCHAR(50),
    `studentid` VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS `login` (
    `userid` VARCHAR(100) PRIMARY KEY,
    `password` VARCHAR(255)
);

INSERT IGNORE INTO `login` (`userid`, `password`) VALUES ('admin', 'admin');
