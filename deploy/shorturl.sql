CREATE DATABASE IF NOT EXISTS shorturl DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

use shorturl;

-- ----------------------------
-- Table structure for `sendnum`
-- ----------------------------
DROP TABLE IF EXISTS `sendnum`;
CREATE TABLE `sendnum` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sendnum
-- ----------------------------
DROP TABLE IF EXISTS `short_config`;
CREATE TABLE `short_config` (
  `config_key` varchar(100) NOT NULL,
  `config_value` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `shorturl_000`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_000`;
CREATE TABLE `shorturl_000` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_000
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_001`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_001`;
CREATE TABLE `shorturl_001` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_001
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_002`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_002`;
CREATE TABLE `shorturl_002` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_002
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_003`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_003`;
CREATE TABLE `shorturl_003` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_003
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_004`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_004`;
CREATE TABLE `shorturl_004` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_004
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_005`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_005`;
CREATE TABLE `shorturl_005` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_005
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_006`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_006`;
CREATE TABLE `shorturl_006` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_006
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_007`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_007`;
CREATE TABLE `shorturl_007` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_007
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_008`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_008`;
CREATE TABLE `shorturl_008` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_008
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_009`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_009`;
CREATE TABLE `shorturl_009` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_009
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_010`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_010`;
CREATE TABLE `shorturl_010` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_010
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_011`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_011`;
CREATE TABLE `shorturl_011` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_011
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_012`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_012`;
CREATE TABLE `shorturl_012` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_012
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_013`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_013`;
CREATE TABLE `shorturl_013` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_013
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_014`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_014`;
CREATE TABLE `shorturl_014` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_014
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_015`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_015`;
CREATE TABLE `shorturl_015` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_015
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_016`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_016`;
CREATE TABLE `shorturl_016` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_016
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_017`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_017`;
CREATE TABLE `shorturl_017` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_017
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_018`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_018`;
CREATE TABLE `shorturl_018` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_018
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_019`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_019`;
CREATE TABLE `shorturl_019` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_019
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_020`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_020`;
CREATE TABLE `shorturl_020` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_020
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_021`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_021`;
CREATE TABLE `shorturl_021` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_021
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_022`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_022`;
CREATE TABLE `shorturl_022` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_022
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_023`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_023`;
CREATE TABLE `shorturl_023` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_023
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_024`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_024`;
CREATE TABLE `shorturl_024` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_024
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_025`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_025`;
CREATE TABLE `shorturl_025` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_025
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_026`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_026`;
CREATE TABLE `shorturl_026` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_026
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_027`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_027`;
CREATE TABLE `shorturl_027` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_027
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_028`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_028`;
CREATE TABLE `shorturl_028` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_028
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_029`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_029`;
CREATE TABLE `shorturl_029` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_029
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_030`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_030`;
CREATE TABLE `shorturl_030` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_030
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_031`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_031`;
CREATE TABLE `shorturl_031` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_031
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_032`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_032`;
CREATE TABLE `shorturl_032` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_032
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_033`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_033`;
CREATE TABLE `shorturl_033` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_033
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_034`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_034`;
CREATE TABLE `shorturl_034` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_034
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_035`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_035`;
CREATE TABLE `shorturl_035` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_035
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_036`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_036`;
CREATE TABLE `shorturl_036` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_036
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_037`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_037`;
CREATE TABLE `shorturl_037` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_037
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_038`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_038`;
CREATE TABLE `shorturl_038` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_038
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_039`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_039`;
CREATE TABLE `shorturl_039` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_039
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_040`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_040`;
CREATE TABLE `shorturl_040` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_040
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_041`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_041`;
CREATE TABLE `shorturl_041` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_041
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_042`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_042`;
CREATE TABLE `shorturl_042` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_042
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_043`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_043`;
CREATE TABLE `shorturl_043` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_043
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_044`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_044`;
CREATE TABLE `shorturl_044` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_044
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_045`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_045`;
CREATE TABLE `shorturl_045` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_045
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_046`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_046`;
CREATE TABLE `shorturl_046` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_046
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_047`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_047`;
CREATE TABLE `shorturl_047` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_047
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_048`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_048`;
CREATE TABLE `shorturl_048` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_048
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_049`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_049`;
CREATE TABLE `shorturl_049` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_049
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_050`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_050`;
CREATE TABLE `shorturl_050` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_050
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_051`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_051`;
CREATE TABLE `shorturl_051` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_051
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_052`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_052`;
CREATE TABLE `shorturl_052` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_052
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_053`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_053`;
CREATE TABLE `shorturl_053` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_053
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_054`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_054`;
CREATE TABLE `shorturl_054` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_054
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_055`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_055`;
CREATE TABLE `shorturl_055` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_055
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_056`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_056`;
CREATE TABLE `shorturl_056` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_056
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_057`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_057`;
CREATE TABLE `shorturl_057` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_057
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_058`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_058`;
CREATE TABLE `shorturl_058` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_058
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_059`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_059`;
CREATE TABLE `shorturl_059` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_059
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_060`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_060`;
CREATE TABLE `shorturl_060` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_060
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_061`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_061`;
CREATE TABLE `shorturl_061` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_061
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_062`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_062`;
CREATE TABLE `shorturl_062` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_062
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_063`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_063`;
CREATE TABLE `shorturl_063` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_063
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_064`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_064`;
CREATE TABLE `shorturl_064` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_064
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_065`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_065`;
CREATE TABLE `shorturl_065` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_065
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_066`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_066`;
CREATE TABLE `shorturl_066` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_066
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_067`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_067`;
CREATE TABLE `shorturl_067` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_067
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_068`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_068`;
CREATE TABLE `shorturl_068` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_068
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_069`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_069`;
CREATE TABLE `shorturl_069` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_069
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_070`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_070`;
CREATE TABLE `shorturl_070` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_070
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_071`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_071`;
CREATE TABLE `shorturl_071` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_071
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_072`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_072`;
CREATE TABLE `shorturl_072` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_072
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_073`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_073`;
CREATE TABLE `shorturl_073` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_073
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_074`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_074`;
CREATE TABLE `shorturl_074` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_074
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_075`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_075`;
CREATE TABLE `shorturl_075` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_075
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_076`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_076`;
CREATE TABLE `shorturl_076` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_076
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_077`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_077`;
CREATE TABLE `shorturl_077` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_077
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_078`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_078`;
CREATE TABLE `shorturl_078` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_078
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_079`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_079`;
CREATE TABLE `shorturl_079` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_079
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_080`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_080`;
CREATE TABLE `shorturl_080` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_080
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_081`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_081`;
CREATE TABLE `shorturl_081` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_081
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_082`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_082`;
CREATE TABLE `shorturl_082` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_082
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_083`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_083`;
CREATE TABLE `shorturl_083` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_083
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_084`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_084`;
CREATE TABLE `shorturl_084` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_084
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_085`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_085`;
CREATE TABLE `shorturl_085` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_085
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_086`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_086`;
CREATE TABLE `shorturl_086` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_086
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_087`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_087`;
CREATE TABLE `shorturl_087` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_087
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_088`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_088`;
CREATE TABLE `shorturl_088` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_088
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_089`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_089`;
CREATE TABLE `shorturl_089` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_089
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_090`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_090`;
CREATE TABLE `shorturl_090` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_090
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_091`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_091`;
CREATE TABLE `shorturl_091` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_091
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_092`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_092`;
CREATE TABLE `shorturl_092` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_092
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_093`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_093`;
CREATE TABLE `shorturl_093` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_093
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_094`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_094`;
CREATE TABLE `shorturl_094` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_094
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_095`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_095`;
CREATE TABLE `shorturl_095` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_095
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_096`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_096`;
CREATE TABLE `shorturl_096` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_096
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_097`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_097`;
CREATE TABLE `shorturl_097` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_097
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_098`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_098`;
CREATE TABLE `shorturl_098` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_098
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_099`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_099`;
CREATE TABLE `shorturl_099` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_099
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_100`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_100`;
CREATE TABLE `shorturl_100` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_100
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_101`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_101`;
CREATE TABLE `shorturl_101` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_101
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_102`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_102`;
CREATE TABLE `shorturl_102` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_102
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_103`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_103`;
CREATE TABLE `shorturl_103` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_103
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_104`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_104`;
CREATE TABLE `shorturl_104` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_104
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_105`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_105`;
CREATE TABLE `shorturl_105` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_105
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_106`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_106`;
CREATE TABLE `shorturl_106` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_106
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_107`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_107`;
CREATE TABLE `shorturl_107` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_107
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_108`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_108`;
CREATE TABLE `shorturl_108` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_108
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_109`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_109`;
CREATE TABLE `shorturl_109` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_109
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_110`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_110`;
CREATE TABLE `shorturl_110` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_110
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_111`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_111`;
CREATE TABLE `shorturl_111` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_111
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_112`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_112`;
CREATE TABLE `shorturl_112` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_112
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_113`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_113`;
CREATE TABLE `shorturl_113` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_113
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_114`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_114`;
CREATE TABLE `shorturl_114` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_114
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_115`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_115`;
CREATE TABLE `shorturl_115` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_115
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_116`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_116`;
CREATE TABLE `shorturl_116` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_116
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_117`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_117`;
CREATE TABLE `shorturl_117` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_117
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_118`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_118`;
CREATE TABLE `shorturl_118` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_118
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_119`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_119`;
CREATE TABLE `shorturl_119` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_119
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_120`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_120`;
CREATE TABLE `shorturl_120` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_120
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_121`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_121`;
CREATE TABLE `shorturl_121` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_121
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_122`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_122`;
CREATE TABLE `shorturl_122` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_122
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_123`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_123`;
CREATE TABLE `shorturl_123` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_123
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_124`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_124`;
CREATE TABLE `shorturl_124` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_124
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_125`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_125`;
CREATE TABLE `shorturl_125` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_125
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_126`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_126`;
CREATE TABLE `shorturl_126` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_126
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_127`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_127`;
CREATE TABLE `shorturl_127` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_127
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_128`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_128`;
CREATE TABLE `shorturl_128` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_128
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_129`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_129`;
CREATE TABLE `shorturl_129` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_129
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_130`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_130`;
CREATE TABLE `shorturl_130` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_130
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_131`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_131`;
CREATE TABLE `shorturl_131` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_131
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_132`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_132`;
CREATE TABLE `shorturl_132` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_132
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_133`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_133`;
CREATE TABLE `shorturl_133` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_133
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_134`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_134`;
CREATE TABLE `shorturl_134` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_134
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_135`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_135`;
CREATE TABLE `shorturl_135` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_135
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_136`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_136`;
CREATE TABLE `shorturl_136` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_136
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_137`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_137`;
CREATE TABLE `shorturl_137` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_137
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_138`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_138`;
CREATE TABLE `shorturl_138` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_138
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_139`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_139`;
CREATE TABLE `shorturl_139` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_139
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_140`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_140`;
CREATE TABLE `shorturl_140` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_140
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_141`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_141`;
CREATE TABLE `shorturl_141` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_141
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_142`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_142`;
CREATE TABLE `shorturl_142` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_142
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_143`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_143`;
CREATE TABLE `shorturl_143` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_143
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_144`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_144`;
CREATE TABLE `shorturl_144` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_144
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_145`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_145`;
CREATE TABLE `shorturl_145` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_145
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_146`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_146`;
CREATE TABLE `shorturl_146` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_146
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_147`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_147`;
CREATE TABLE `shorturl_147` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_147
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_148`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_148`;
CREATE TABLE `shorturl_148` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_148
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_149`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_149`;
CREATE TABLE `shorturl_149` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_149
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_150`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_150`;
CREATE TABLE `shorturl_150` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_150
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_151`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_151`;
CREATE TABLE `shorturl_151` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_151
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_152`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_152`;
CREATE TABLE `shorturl_152` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_152
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_153`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_153`;
CREATE TABLE `shorturl_153` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_153
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_154`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_154`;
CREATE TABLE `shorturl_154` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_154
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_155`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_155`;
CREATE TABLE `shorturl_155` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_155
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_156`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_156`;
CREATE TABLE `shorturl_156` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_156
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_157`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_157`;
CREATE TABLE `shorturl_157` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_157
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_158`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_158`;
CREATE TABLE `shorturl_158` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_158
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_159`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_159`;
CREATE TABLE `shorturl_159` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_159
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_160`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_160`;
CREATE TABLE `shorturl_160` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_160
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_161`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_161`;
CREATE TABLE `shorturl_161` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_161
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_162`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_162`;
CREATE TABLE `shorturl_162` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_162
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_163`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_163`;
CREATE TABLE `shorturl_163` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_163
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_164`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_164`;
CREATE TABLE `shorturl_164` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_164
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_165`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_165`;
CREATE TABLE `shorturl_165` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_165
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_166`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_166`;
CREATE TABLE `shorturl_166` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_166
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_167`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_167`;
CREATE TABLE `shorturl_167` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_167
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_168`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_168`;
CREATE TABLE `shorturl_168` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_168
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_169`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_169`;
CREATE TABLE `shorturl_169` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_169
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_170`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_170`;
CREATE TABLE `shorturl_170` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_170
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_171`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_171`;
CREATE TABLE `shorturl_171` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_171
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_172`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_172`;
CREATE TABLE `shorturl_172` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_172
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_173`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_173`;
CREATE TABLE `shorturl_173` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_173
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_174`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_174`;
CREATE TABLE `shorturl_174` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_174
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_175`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_175`;
CREATE TABLE `shorturl_175` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_175
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_176`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_176`;
CREATE TABLE `shorturl_176` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_176
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_177`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_177`;
CREATE TABLE `shorturl_177` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_177
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_178`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_178`;
CREATE TABLE `shorturl_178` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_178
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_179`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_179`;
CREATE TABLE `shorturl_179` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_179
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_180`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_180`;
CREATE TABLE `shorturl_180` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_180
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_181`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_181`;
CREATE TABLE `shorturl_181` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_181
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_182`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_182`;
CREATE TABLE `shorturl_182` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_182
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_183`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_183`;
CREATE TABLE `shorturl_183` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_183
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_184`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_184`;
CREATE TABLE `shorturl_184` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_184
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_185`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_185`;
CREATE TABLE `shorturl_185` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_185
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_186`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_186`;
CREATE TABLE `shorturl_186` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_186
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_187`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_187`;
CREATE TABLE `shorturl_187` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_187
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_188`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_188`;
CREATE TABLE `shorturl_188` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_188
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_189`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_189`;
CREATE TABLE `shorturl_189` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_189
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_190`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_190`;
CREATE TABLE `shorturl_190` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_190
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_191`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_191`;
CREATE TABLE `shorturl_191` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_191
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_192`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_192`;
CREATE TABLE `shorturl_192` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_192
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_193`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_193`;
CREATE TABLE `shorturl_193` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_193
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_194`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_194`;
CREATE TABLE `shorturl_194` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_194
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_195`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_195`;
CREATE TABLE `shorturl_195` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_195
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_196`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_196`;
CREATE TABLE `shorturl_196` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_196
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_197`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_197`;
CREATE TABLE `shorturl_197` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_197
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_198`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_198`;
CREATE TABLE `shorturl_198` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_198
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_199`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_199`;
CREATE TABLE `shorturl_199` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_199
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_200`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_200`;
CREATE TABLE `shorturl_200` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_200
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_201`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_201`;
CREATE TABLE `shorturl_201` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_201
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_202`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_202`;
CREATE TABLE `shorturl_202` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_202
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_203`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_203`;
CREATE TABLE `shorturl_203` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_203
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_204`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_204`;
CREATE TABLE `shorturl_204` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_204
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_205`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_205`;
CREATE TABLE `shorturl_205` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_205
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_206`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_206`;
CREATE TABLE `shorturl_206` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_206
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_207`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_207`;
CREATE TABLE `shorturl_207` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_207
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_208`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_208`;
CREATE TABLE `shorturl_208` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_208
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_209`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_209`;
CREATE TABLE `shorturl_209` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_209
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_210`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_210`;
CREATE TABLE `shorturl_210` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_210
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_211`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_211`;
CREATE TABLE `shorturl_211` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_211
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_212`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_212`;
CREATE TABLE `shorturl_212` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_212
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_213`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_213`;
CREATE TABLE `shorturl_213` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_213
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_214`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_214`;
CREATE TABLE `shorturl_214` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_214
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_215`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_215`;
CREATE TABLE `shorturl_215` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_215
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_216`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_216`;
CREATE TABLE `shorturl_216` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_216
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_217`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_217`;
CREATE TABLE `shorturl_217` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_217
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_218`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_218`;
CREATE TABLE `shorturl_218` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_218
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_219`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_219`;
CREATE TABLE `shorturl_219` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_219
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_220`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_220`;
CREATE TABLE `shorturl_220` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_220
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_221`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_221`;
CREATE TABLE `shorturl_221` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_221
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_222`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_222`;
CREATE TABLE `shorturl_222` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_222
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_223`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_223`;
CREATE TABLE `shorturl_223` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_223
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_224`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_224`;
CREATE TABLE `shorturl_224` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_224
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_225`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_225`;
CREATE TABLE `shorturl_225` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_225
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_226`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_226`;
CREATE TABLE `shorturl_226` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_226
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_227`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_227`;
CREATE TABLE `shorturl_227` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_227
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_228`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_228`;
CREATE TABLE `shorturl_228` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_228
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_229`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_229`;
CREATE TABLE `shorturl_229` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_229
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_230`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_230`;
CREATE TABLE `shorturl_230` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_230
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_231`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_231`;
CREATE TABLE `shorturl_231` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_231
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_232`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_232`;
CREATE TABLE `shorturl_232` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_232
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_233`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_233`;
CREATE TABLE `shorturl_233` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_233
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_234`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_234`;
CREATE TABLE `shorturl_234` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_234
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_235`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_235`;
CREATE TABLE `shorturl_235` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_235
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_236`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_236`;
CREATE TABLE `shorturl_236` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_236
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_237`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_237`;
CREATE TABLE `shorturl_237` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_237
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_238`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_238`;
CREATE TABLE `shorturl_238` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_238
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_239`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_239`;
CREATE TABLE `shorturl_239` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_239
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_240`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_240`;
CREATE TABLE `shorturl_240` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_240
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_241`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_241`;
CREATE TABLE `shorturl_241` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_241
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_242`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_242`;
CREATE TABLE `shorturl_242` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_242
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_243`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_243`;
CREATE TABLE `shorturl_243` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_243
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_244`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_244`;
CREATE TABLE `shorturl_244` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_244
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_245`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_245`;
CREATE TABLE `shorturl_245` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_245
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_246`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_246`;
CREATE TABLE `shorturl_246` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_246
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_247`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_247`;
CREATE TABLE `shorturl_247` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_247
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_248`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_248`;
CREATE TABLE `shorturl_248` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_248
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_249`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_249`;
CREATE TABLE `shorturl_249` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_249
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_250`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_250`;
CREATE TABLE `shorturl_250` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_250
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_251`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_251`;
CREATE TABLE `shorturl_251` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_251
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_252`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_252`;
CREATE TABLE `shorturl_252` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_252
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_253`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_253`;
CREATE TABLE `shorturl_253` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_253
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_254`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_254`;
CREATE TABLE `shorturl_254` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_254
-- ----------------------------

-- ----------------------------
-- Table structure for `shorturl_255`
-- ----------------------------
DROP TABLE IF EXISTS `shorturl_255`;
CREATE TABLE `shorturl_255` (
  `id` bigint(20) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  `ext` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shorturl_255
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_000`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_000`;
CREATE TABLE `urlmd5_000` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_000
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_001`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_001`;
CREATE TABLE `urlmd5_001` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_001
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_002`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_002`;
CREATE TABLE `urlmd5_002` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_002
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_003`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_003`;
CREATE TABLE `urlmd5_003` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_003
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_004`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_004`;
CREATE TABLE `urlmd5_004` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_004
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_005`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_005`;
CREATE TABLE `urlmd5_005` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_005
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_006`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_006`;
CREATE TABLE `urlmd5_006` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_006
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_007`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_007`;
CREATE TABLE `urlmd5_007` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_007
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_008`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_008`;
CREATE TABLE `urlmd5_008` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_008
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_009`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_009`;
CREATE TABLE `urlmd5_009` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_009
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_010`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_010`;
CREATE TABLE `urlmd5_010` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_010
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_011`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_011`;
CREATE TABLE `urlmd5_011` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_011
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_012`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_012`;
CREATE TABLE `urlmd5_012` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_012
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_013`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_013`;
CREATE TABLE `urlmd5_013` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_013
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_014`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_014`;
CREATE TABLE `urlmd5_014` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_014
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_015`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_015`;
CREATE TABLE `urlmd5_015` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_015
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_016`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_016`;
CREATE TABLE `urlmd5_016` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_016
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_017`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_017`;
CREATE TABLE `urlmd5_017` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_017
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_018`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_018`;
CREATE TABLE `urlmd5_018` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_018
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_019`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_019`;
CREATE TABLE `urlmd5_019` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_019
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_020`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_020`;
CREATE TABLE `urlmd5_020` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_020
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_021`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_021`;
CREATE TABLE `urlmd5_021` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_021
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_022`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_022`;
CREATE TABLE `urlmd5_022` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_022
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_023`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_023`;
CREATE TABLE `urlmd5_023` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_023
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_024`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_024`;
CREATE TABLE `urlmd5_024` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_024
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_025`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_025`;
CREATE TABLE `urlmd5_025` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_025
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_026`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_026`;
CREATE TABLE `urlmd5_026` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_026
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_027`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_027`;
CREATE TABLE `urlmd5_027` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_027
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_028`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_028`;
CREATE TABLE `urlmd5_028` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_028
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_029`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_029`;
CREATE TABLE `urlmd5_029` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_029
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_030`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_030`;
CREATE TABLE `urlmd5_030` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_030
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_031`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_031`;
CREATE TABLE `urlmd5_031` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_031
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_032`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_032`;
CREATE TABLE `urlmd5_032` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_032
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_033`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_033`;
CREATE TABLE `urlmd5_033` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_033
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_034`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_034`;
CREATE TABLE `urlmd5_034` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_034
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_035`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_035`;
CREATE TABLE `urlmd5_035` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_035
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_036`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_036`;
CREATE TABLE `urlmd5_036` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_036
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_037`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_037`;
CREATE TABLE `urlmd5_037` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_037
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_038`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_038`;
CREATE TABLE `urlmd5_038` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_038
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_039`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_039`;
CREATE TABLE `urlmd5_039` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_039
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_040`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_040`;
CREATE TABLE `urlmd5_040` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_040
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_041`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_041`;
CREATE TABLE `urlmd5_041` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_041
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_042`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_042`;
CREATE TABLE `urlmd5_042` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_042
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_043`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_043`;
CREATE TABLE `urlmd5_043` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_043
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_044`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_044`;
CREATE TABLE `urlmd5_044` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_044
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_045`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_045`;
CREATE TABLE `urlmd5_045` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_045
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_046`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_046`;
CREATE TABLE `urlmd5_046` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_046
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_047`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_047`;
CREATE TABLE `urlmd5_047` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_047
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_048`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_048`;
CREATE TABLE `urlmd5_048` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_048
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_049`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_049`;
CREATE TABLE `urlmd5_049` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_049
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_050`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_050`;
CREATE TABLE `urlmd5_050` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_050
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_051`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_051`;
CREATE TABLE `urlmd5_051` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_051
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_052`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_052`;
CREATE TABLE `urlmd5_052` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_052
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_053`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_053`;
CREATE TABLE `urlmd5_053` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_053
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_054`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_054`;
CREATE TABLE `urlmd5_054` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_054
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_055`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_055`;
CREATE TABLE `urlmd5_055` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_055
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_056`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_056`;
CREATE TABLE `urlmd5_056` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_056
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_057`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_057`;
CREATE TABLE `urlmd5_057` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_057
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_058`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_058`;
CREATE TABLE `urlmd5_058` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_058
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_059`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_059`;
CREATE TABLE `urlmd5_059` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_059
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_060`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_060`;
CREATE TABLE `urlmd5_060` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_060
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_061`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_061`;
CREATE TABLE `urlmd5_061` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_061
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_062`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_062`;
CREATE TABLE `urlmd5_062` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_062
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_063`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_063`;
CREATE TABLE `urlmd5_063` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_063
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_064`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_064`;
CREATE TABLE `urlmd5_064` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_064
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_065`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_065`;
CREATE TABLE `urlmd5_065` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_065
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_066`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_066`;
CREATE TABLE `urlmd5_066` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_066
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_067`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_067`;
CREATE TABLE `urlmd5_067` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_067
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_068`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_068`;
CREATE TABLE `urlmd5_068` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_068
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_069`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_069`;
CREATE TABLE `urlmd5_069` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_069
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_070`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_070`;
CREATE TABLE `urlmd5_070` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_070
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_071`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_071`;
CREATE TABLE `urlmd5_071` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_071
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_072`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_072`;
CREATE TABLE `urlmd5_072` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_072
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_073`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_073`;
CREATE TABLE `urlmd5_073` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_073
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_074`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_074`;
CREATE TABLE `urlmd5_074` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_074
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_075`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_075`;
CREATE TABLE `urlmd5_075` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_075
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_076`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_076`;
CREATE TABLE `urlmd5_076` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_076
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_077`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_077`;
CREATE TABLE `urlmd5_077` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_077
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_078`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_078`;
CREATE TABLE `urlmd5_078` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_078
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_079`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_079`;
CREATE TABLE `urlmd5_079` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_079
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_080`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_080`;
CREATE TABLE `urlmd5_080` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_080
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_081`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_081`;
CREATE TABLE `urlmd5_081` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_081
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_082`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_082`;
CREATE TABLE `urlmd5_082` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_082
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_083`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_083`;
CREATE TABLE `urlmd5_083` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_083
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_084`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_084`;
CREATE TABLE `urlmd5_084` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_084
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_085`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_085`;
CREATE TABLE `urlmd5_085` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_085
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_086`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_086`;
CREATE TABLE `urlmd5_086` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_086
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_087`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_087`;
CREATE TABLE `urlmd5_087` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_087
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_088`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_088`;
CREATE TABLE `urlmd5_088` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_088
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_089`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_089`;
CREATE TABLE `urlmd5_089` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_089
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_090`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_090`;
CREATE TABLE `urlmd5_090` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_090
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_091`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_091`;
CREATE TABLE `urlmd5_091` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_091
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_092`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_092`;
CREATE TABLE `urlmd5_092` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_092
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_093`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_093`;
CREATE TABLE `urlmd5_093` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_093
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_094`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_094`;
CREATE TABLE `urlmd5_094` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_094
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_095`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_095`;
CREATE TABLE `urlmd5_095` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_095
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_096`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_096`;
CREATE TABLE `urlmd5_096` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_096
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_097`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_097`;
CREATE TABLE `urlmd5_097` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_097
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_098`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_098`;
CREATE TABLE `urlmd5_098` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_098
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_099`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_099`;
CREATE TABLE `urlmd5_099` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_099
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_100`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_100`;
CREATE TABLE `urlmd5_100` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_100
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_101`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_101`;
CREATE TABLE `urlmd5_101` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_101
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_102`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_102`;
CREATE TABLE `urlmd5_102` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_102
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_103`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_103`;
CREATE TABLE `urlmd5_103` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_103
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_104`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_104`;
CREATE TABLE `urlmd5_104` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_104
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_105`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_105`;
CREATE TABLE `urlmd5_105` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_105
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_106`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_106`;
CREATE TABLE `urlmd5_106` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_106
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_107`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_107`;
CREATE TABLE `urlmd5_107` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_107
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_108`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_108`;
CREATE TABLE `urlmd5_108` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_108
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_109`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_109`;
CREATE TABLE `urlmd5_109` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_109
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_110`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_110`;
CREATE TABLE `urlmd5_110` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_110
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_111`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_111`;
CREATE TABLE `urlmd5_111` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_111
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_112`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_112`;
CREATE TABLE `urlmd5_112` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_112
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_113`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_113`;
CREATE TABLE `urlmd5_113` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_113
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_114`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_114`;
CREATE TABLE `urlmd5_114` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_114
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_115`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_115`;
CREATE TABLE `urlmd5_115` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_115
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_116`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_116`;
CREATE TABLE `urlmd5_116` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_116
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_117`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_117`;
CREATE TABLE `urlmd5_117` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_117
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_118`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_118`;
CREATE TABLE `urlmd5_118` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_118
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_119`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_119`;
CREATE TABLE `urlmd5_119` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_119
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_120`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_120`;
CREATE TABLE `urlmd5_120` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_120
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_121`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_121`;
CREATE TABLE `urlmd5_121` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_121
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_122`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_122`;
CREATE TABLE `urlmd5_122` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_122
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_123`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_123`;
CREATE TABLE `urlmd5_123` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_123
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_124`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_124`;
CREATE TABLE `urlmd5_124` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_124
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_125`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_125`;
CREATE TABLE `urlmd5_125` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_125
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_126`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_126`;
CREATE TABLE `urlmd5_126` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_126
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_127`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_127`;
CREATE TABLE `urlmd5_127` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_127
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_128`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_128`;
CREATE TABLE `urlmd5_128` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_128
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_129`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_129`;
CREATE TABLE `urlmd5_129` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_129
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_130`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_130`;
CREATE TABLE `urlmd5_130` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_130
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_131`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_131`;
CREATE TABLE `urlmd5_131` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_131
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_132`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_132`;
CREATE TABLE `urlmd5_132` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_132
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_133`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_133`;
CREATE TABLE `urlmd5_133` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_133
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_134`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_134`;
CREATE TABLE `urlmd5_134` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_134
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_135`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_135`;
CREATE TABLE `urlmd5_135` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_135
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_136`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_136`;
CREATE TABLE `urlmd5_136` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_136
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_137`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_137`;
CREATE TABLE `urlmd5_137` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_137
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_138`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_138`;
CREATE TABLE `urlmd5_138` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_138
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_139`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_139`;
CREATE TABLE `urlmd5_139` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_139
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_140`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_140`;
CREATE TABLE `urlmd5_140` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_140
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_141`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_141`;
CREATE TABLE `urlmd5_141` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_141
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_142`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_142`;
CREATE TABLE `urlmd5_142` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_142
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_143`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_143`;
CREATE TABLE `urlmd5_143` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_143
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_144`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_144`;
CREATE TABLE `urlmd5_144` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_144
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_145`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_145`;
CREATE TABLE `urlmd5_145` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_145
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_146`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_146`;
CREATE TABLE `urlmd5_146` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_146
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_147`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_147`;
CREATE TABLE `urlmd5_147` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_147
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_148`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_148`;
CREATE TABLE `urlmd5_148` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_148
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_149`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_149`;
CREATE TABLE `urlmd5_149` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_149
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_150`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_150`;
CREATE TABLE `urlmd5_150` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_150
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_151`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_151`;
CREATE TABLE `urlmd5_151` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_151
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_152`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_152`;
CREATE TABLE `urlmd5_152` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_152
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_153`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_153`;
CREATE TABLE `urlmd5_153` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_153
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_154`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_154`;
CREATE TABLE `urlmd5_154` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_154
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_155`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_155`;
CREATE TABLE `urlmd5_155` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_155
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_156`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_156`;
CREATE TABLE `urlmd5_156` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_156
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_157`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_157`;
CREATE TABLE `urlmd5_157` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_157
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_158`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_158`;
CREATE TABLE `urlmd5_158` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_158
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_159`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_159`;
CREATE TABLE `urlmd5_159` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_159
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_160`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_160`;
CREATE TABLE `urlmd5_160` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_160
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_161`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_161`;
CREATE TABLE `urlmd5_161` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_161
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_162`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_162`;
CREATE TABLE `urlmd5_162` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_162
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_163`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_163`;
CREATE TABLE `urlmd5_163` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_163
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_164`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_164`;
CREATE TABLE `urlmd5_164` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_164
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_165`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_165`;
CREATE TABLE `urlmd5_165` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_165
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_166`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_166`;
CREATE TABLE `urlmd5_166` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_166
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_167`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_167`;
CREATE TABLE `urlmd5_167` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_167
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_168`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_168`;
CREATE TABLE `urlmd5_168` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_168
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_169`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_169`;
CREATE TABLE `urlmd5_169` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_169
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_170`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_170`;
CREATE TABLE `urlmd5_170` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_170
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_171`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_171`;
CREATE TABLE `urlmd5_171` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_171
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_172`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_172`;
CREATE TABLE `urlmd5_172` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_172
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_173`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_173`;
CREATE TABLE `urlmd5_173` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_173
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_174`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_174`;
CREATE TABLE `urlmd5_174` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_174
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_175`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_175`;
CREATE TABLE `urlmd5_175` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_175
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_176`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_176`;
CREATE TABLE `urlmd5_176` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_176
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_177`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_177`;
CREATE TABLE `urlmd5_177` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_177
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_178`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_178`;
CREATE TABLE `urlmd5_178` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_178
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_179`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_179`;
CREATE TABLE `urlmd5_179` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_179
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_180`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_180`;
CREATE TABLE `urlmd5_180` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_180
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_181`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_181`;
CREATE TABLE `urlmd5_181` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_181
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_182`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_182`;
CREATE TABLE `urlmd5_182` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_182
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_183`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_183`;
CREATE TABLE `urlmd5_183` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_183
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_184`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_184`;
CREATE TABLE `urlmd5_184` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_184
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_185`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_185`;
CREATE TABLE `urlmd5_185` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_185
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_186`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_186`;
CREATE TABLE `urlmd5_186` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_186
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_187`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_187`;
CREATE TABLE `urlmd5_187` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_187
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_188`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_188`;
CREATE TABLE `urlmd5_188` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_188
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_189`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_189`;
CREATE TABLE `urlmd5_189` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_189
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_190`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_190`;
CREATE TABLE `urlmd5_190` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_190
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_191`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_191`;
CREATE TABLE `urlmd5_191` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_191
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_192`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_192`;
CREATE TABLE `urlmd5_192` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_192
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_193`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_193`;
CREATE TABLE `urlmd5_193` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_193
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_194`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_194`;
CREATE TABLE `urlmd5_194` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_194
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_195`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_195`;
CREATE TABLE `urlmd5_195` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_195
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_196`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_196`;
CREATE TABLE `urlmd5_196` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_196
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_197`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_197`;
CREATE TABLE `urlmd5_197` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_197
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_198`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_198`;
CREATE TABLE `urlmd5_198` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_198
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_199`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_199`;
CREATE TABLE `urlmd5_199` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_199
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_200`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_200`;
CREATE TABLE `urlmd5_200` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_200
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_201`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_201`;
CREATE TABLE `urlmd5_201` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_201
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_202`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_202`;
CREATE TABLE `urlmd5_202` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_202
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_203`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_203`;
CREATE TABLE `urlmd5_203` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_203
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_204`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_204`;
CREATE TABLE `urlmd5_204` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_204
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_205`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_205`;
CREATE TABLE `urlmd5_205` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_205
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_206`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_206`;
CREATE TABLE `urlmd5_206` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_206
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_207`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_207`;
CREATE TABLE `urlmd5_207` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_207
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_208`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_208`;
CREATE TABLE `urlmd5_208` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_208
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_209`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_209`;
CREATE TABLE `urlmd5_209` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_209
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_210`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_210`;
CREATE TABLE `urlmd5_210` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_210
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_211`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_211`;
CREATE TABLE `urlmd5_211` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_211
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_212`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_212`;
CREATE TABLE `urlmd5_212` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_212
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_213`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_213`;
CREATE TABLE `urlmd5_213` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_213
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_214`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_214`;
CREATE TABLE `urlmd5_214` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_214
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_215`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_215`;
CREATE TABLE `urlmd5_215` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_215
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_216`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_216`;
CREATE TABLE `urlmd5_216` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_216
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_217`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_217`;
CREATE TABLE `urlmd5_217` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_217
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_218`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_218`;
CREATE TABLE `urlmd5_218` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_218
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_219`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_219`;
CREATE TABLE `urlmd5_219` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_219
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_220`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_220`;
CREATE TABLE `urlmd5_220` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_220
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_221`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_221`;
CREATE TABLE `urlmd5_221` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_221
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_222`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_222`;
CREATE TABLE `urlmd5_222` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_222
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_223`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_223`;
CREATE TABLE `urlmd5_223` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_223
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_224`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_224`;
CREATE TABLE `urlmd5_224` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_224
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_225`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_225`;
CREATE TABLE `urlmd5_225` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_225
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_226`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_226`;
CREATE TABLE `urlmd5_226` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_226
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_227`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_227`;
CREATE TABLE `urlmd5_227` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_227
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_228`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_228`;
CREATE TABLE `urlmd5_228` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_228
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_229`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_229`;
CREATE TABLE `urlmd5_229` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_229
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_230`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_230`;
CREATE TABLE `urlmd5_230` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_230
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_231`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_231`;
CREATE TABLE `urlmd5_231` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_231
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_232`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_232`;
CREATE TABLE `urlmd5_232` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_232
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_233`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_233`;
CREATE TABLE `urlmd5_233` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_233
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_234`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_234`;
CREATE TABLE `urlmd5_234` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_234
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_235`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_235`;
CREATE TABLE `urlmd5_235` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_235
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_236`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_236`;
CREATE TABLE `urlmd5_236` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_236
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_237`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_237`;
CREATE TABLE `urlmd5_237` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_237
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_238`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_238`;
CREATE TABLE `urlmd5_238` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_238
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_239`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_239`;
CREATE TABLE `urlmd5_239` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_239
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_240`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_240`;
CREATE TABLE `urlmd5_240` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_240
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_241`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_241`;
CREATE TABLE `urlmd5_241` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_241
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_242`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_242`;
CREATE TABLE `urlmd5_242` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_242
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_243`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_243`;
CREATE TABLE `urlmd5_243` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_243
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_244`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_244`;
CREATE TABLE `urlmd5_244` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_244
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_245`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_245`;
CREATE TABLE `urlmd5_245` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_245
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_246`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_246`;
CREATE TABLE `urlmd5_246` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_246
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_247`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_247`;
CREATE TABLE `urlmd5_247` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_247
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_248`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_248`;
CREATE TABLE `urlmd5_248` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_248
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_249`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_249`;
CREATE TABLE `urlmd5_249` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_249
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_250`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_250`;
CREATE TABLE `urlmd5_250` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_250
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_251`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_251`;
CREATE TABLE `urlmd5_251` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_251
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_252`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_252`;
CREATE TABLE `urlmd5_252` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_252
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_253`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_253`;
CREATE TABLE `urlmd5_253` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_253
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_254`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_254`;
CREATE TABLE `urlmd5_254` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_254
-- ----------------------------

-- ----------------------------
-- Table structure for `urlmd5_255`
-- ----------------------------
DROP TABLE IF EXISTS `urlmd5_255`;
CREATE TABLE `urlmd5_255` (
  `urlmd5` varchar(1024) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of urlmd5_255
-- ----------------------------
