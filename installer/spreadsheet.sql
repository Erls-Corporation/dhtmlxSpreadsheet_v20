/*
MySQL Data Transfer
Source Host: localhost
Source Database: sampledb
Target Host: localhost
Target Database: sampledb
Date: 08.02.2011 14:27:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for data
-- ----------------------------
CREATE TABLE IF NOT EXISTS `#__data` (
  `sheetid` varchar(255) DEFAULT NULL,
  `columnid` int(11) DEFAULT NULL,
  `rowid` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `parsed` varchar(255) DEFAULT NULL,
  `calc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sheetid`,`columnid`,`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for header
-- ----------------------------
CREATE TABLE IF NOT EXISTS `#__header` (
  `sheetid` varchar(255) DEFAULT NULL,
  `columnid` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`sheetid`,`columnid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sheet
-- ----------------------------
CREATE TABLE IF NOT EXISTS `#__sheet` (
  `sheetid` varchar(255) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `cfg` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`sheetid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `#__sheet` VALUES ('demo_sheet', null, null, 'any_key', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE IF NOT EXISTS `#__user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `apikey` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `secret` varchar(64) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for triggers
-- ----------------------------
CREATE TABLE IF NOT EXISTS `#__triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sheetid` varchar(255) DEFAULT NULL,
  `trigger` varchar(10) DEFAULT NULL,
  `source` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;