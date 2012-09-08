/*
Navicat MySQL Data Transfer

Source Server         : databases
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : db_dental

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2012-09-08 17:42:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_appointment`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_appointment`;
CREATE TABLE `tbl_appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_date` datetime DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `appointment_status` enum('cancelled','pending','approved') DEFAULT NULL,
  `appointment_description` longtext NOT NULL,
  `appointment_request_ip` varchar(15) DEFAULT NULL,
  `appointment_ticket_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_appointment
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_patient`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_patient`;
CREATE TABLE `tbl_patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_lastname` varchar(40) DEFAULT NULL,
  `patient_firstname` varchar(40) DEFAULT NULL,
  `patient_dob` datetime DEFAULT NULL,
  `patient_street` varchar(40) DEFAULT NULL,
  `patient_city` varchar(40) DEFAULT NULL,
  `patient_email` varchar(50) NOT NULL,
  `patient_phone` varchar(15) NOT NULL,
  `patient_status` enum('ban','active') DEFAULT NULL,
  `patient_nic` varchar(12) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_patient
-- ----------------------------
