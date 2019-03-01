-- phpMyAdmin SQL Dump
-- version 2.11.9.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2009 at 12:56 PM
-- Server version: 5.0.75
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kpfanwor_kpsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `kpff_authors`
--

CREATE TABLE IF NOT EXISTS `kpff_authors` (
  `AuthorId` bigint(20) NOT NULL auto_increment,
  `AuthorName` varchar(40) NOT NULL default '',
  `AuthorEmail` varchar(40) NOT NULL default '',
  `AboutAuthor` longtext NOT NULL,
  `Interests` varchar(150) NOT NULL default '',
  `Age` char(2) NOT NULL default '',
  `Password` varchar(32) NOT NULL default '',
  `EmailPublic` char(3) NOT NULL default 'Yes',
  `Editor` char(3) NOT NULL default 'No',
  PRIMARY KEY  (`AuthorId`),
  UNIQUE KEY `AuthorName` (`AuthorName`,`AuthorEmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpff_azlist`
--

CREATE TABLE IF NOT EXISTS `kpff_azlist` (
  `fanFicId` bigint(20) NOT NULL auto_increment,
  `author` varchar(40) NOT NULL default 'TheScripters',
  `authorEmail` varchar(40) NOT NULL default '',
  `ficTitle` varchar(150) NOT NULL default '',
  `ChapNum` int(3) NOT NULL default '0',
  `chapter` varchar(150) NOT NULL default '',
  `ficText` longtext NOT NULL,
  `datePosted` varchar(30) NOT NULL default '',
  `valid` varchar(5) NOT NULL default 'False',
  `rating` varchar(5) default NULL,
  PRIMARY KEY  (`fanFicId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpff_config`
--

CREATE TABLE IF NOT EXISTS `kpff_config` (
  `Id` varchar(10) NOT NULL default '',
  `Value` longtext NOT NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpff_fics`
--

CREATE TABLE IF NOT EXISTS `kpff_fics` (
  `fanFicId` bigint(20) NOT NULL auto_increment,
  `author` varchar(40) NOT NULL default '',
  `authorEmail` varchar(40) NOT NULL default '',
  `ficTitle` varchar(150) NOT NULL default '',
  `ChapNum` int(3) NOT NULL default '0',
  `chapter` varchar(150) NOT NULL default '',
  `ficText` longtext NOT NULL,
  `datePosted` varchar(30) NOT NULL default '',
  `valid` varchar(5) NOT NULL default 'False',
  `rating` varchar(5) default NULL,
  PRIMARY KEY  (`fanFicId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpff_linkcategories`
--

CREATE TABLE IF NOT EXISTS `kpff_linkcategories` (
  `CatId` int(5) NOT NULL auto_increment,
  `CatName` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`CatId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpff_links`
--

CREATE TABLE IF NOT EXISTS `kpff_links` (
  `LinkId` int(5) NOT NULL auto_increment,
  `Linkage` varchar(255) NOT NULL default '',
  `LinkDescription` varchar(255) NOT NULL default '',
  `LinkTitle` varchar(255) NOT NULL default '',
  `LinkCategory` int(5) NOT NULL default '0',
  `LinkBanner` varchar(255) NOT NULL default '',
  `Hits` bigint(20) NOT NULL default '0',
  `Active` char(3) NOT NULL default 'No',
  PRIMARY KEY  (`LinkId`),
  KEY `LinkCategory` (`LinkCategory`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpff_message`
--

CREATE TABLE IF NOT EXISTS `kpff_message` (
  `MsgId` int(4) NOT NULL auto_increment,
  `Name` varchar(30) NOT NULL default '',
  `Message` mediumtext NOT NULL,
  `Time` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`MsgId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpff_reviews`
--

CREATE TABLE IF NOT EXISTS `kpff_reviews` (
  `reviewId` bigint(20) NOT NULL auto_increment,
  `fanFicId` varchar(8) NOT NULL default '',
  `review` text NOT NULL,
  `starRating` varchar(8) NOT NULL default '',
  `userName` varchar(35) NOT NULL default '',
  `userEmail` varchar(35) default NULL,
  `datePosted` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`reviewId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_admin_msg`
--

CREATE TABLE IF NOT EXISTS `kpfw_admin_msg` (
  `Msg_ID` int(10) NOT NULL auto_increment,
  `UserID` int(10) NOT NULL default '0',
  `Message` text NOT NULL,
  `Date` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Msg_ID`),
  FULLTEXT KEY `Message` (`Message`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_audio`
--

CREATE TABLE IF NOT EXISTS `kpfw_audio` (
  `FileID` int(5) NOT NULL auto_increment,
  `FileName` varchar(45) NOT NULL default '',
  `FileTitle` varchar(50) NOT NULL default '',
  `Description` tinytext NOT NULL,
  `UserId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`FileID`),
  UNIQUE KEY `FileName` (`FileName`),
  KEY `UserId` (`UserId`),
  KEY `FileTitle` (`FileTitle`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_avatars`
--

CREATE TABLE IF NOT EXISTS `kpfw_avatars` (
  `Avatar_ID` int(10) NOT NULL auto_increment,
  `Avatar_Name` varchar(50) NOT NULL default '',
  `Avatar_FileName` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`Avatar_ID`),
  UNIQUE KEY `Avatar` (`Avatar_FileName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_avhosting`
--

CREATE TABLE IF NOT EXISTS `kpfw_avhosting` (
  `AvFilename` varchar(45) NOT NULL default '',
  `UserId` int(10) unsigned NOT NULL default '0',
  `File_Size` varchar(45) NOT NULL default '',
  KEY `User` (`AvFilename`,`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_charinfo`
--

CREATE TABLE IF NOT EXISTS `kpfw_charinfo` (
  `id` int(11) default NULL,
  `name` varchar(40) default NULL,
  `description` longtext,
  `picture` varchar(20) default NULL,
  `user_id` int(20) default '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_config`
--

CREATE TABLE IF NOT EXISTS `kpfw_config` (
  `Config_ID` varchar(50) NOT NULL default '',
  `Config_Value` text NOT NULL,
  KEY `Config_ID` (`Config_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_cultural`
--

CREATE TABLE IF NOT EXISTS `kpfw_cultural` (
  `CultId` int(10) NOT NULL auto_increment,
  `EpId` tinyint(4) NOT NULL default '0',
  `CulturalText` text NOT NULL,
  `UserId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`CultId`),
  KEY `EpId` (`EpId`,`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_dialog`
--

CREATE TABLE IF NOT EXISTS `kpfw_dialog` (
  `FileID` int(5) NOT NULL auto_increment,
  `FileName` varchar(45) NOT NULL default '',
  `FileTitle` varchar(50) NOT NULL default '',
  `Description` tinytext NOT NULL,
  `UserId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`FileID`),
  UNIQUE KEY `FileName` (`FileName`),
  KEY `UserId` (`UserId`),
  KEY `FileTitle` (`FileTitle`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_dvdguide`
--

CREATE TABLE IF NOT EXISTS `kpfw_dvdguide` (
  `DVD_ID` int(3) NOT NULL default '0',
  `Type` varchar(17) NOT NULL default '',
  `Contents` varchar(255) NOT NULL default '',
  `Director` varchar(80) NOT NULL default '',
  `Writer` varchar(80) NOT NULL default '',
  `Producer` varchar(80) NOT NULL default '',
  `Executive` varchar(80) NOT NULL default '',
  `Episodes` varchar(255) NOT NULL default '',
  KEY `DVD_ID` (`DVD_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_dvdmovie`
--

CREATE TABLE IF NOT EXISTS `kpfw_dvdmovie` (
  `Id` int(3) NOT NULL auto_increment,
  `Title` varchar(70) NOT NULL default '',
  `Format` varchar(8) NOT NULL default '',
  `ProdId` varchar(4) NOT NULL default '',
  `AirDate` varchar(18) NOT NULL default '',
  PRIMARY KEY  (`Id`),
  UNIQUE KEY `Title` (`Title`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_dvdnotes`
--

CREATE TABLE IF NOT EXISTS `kpfw_dvdnotes` (
  `DVDNoteID` int(3) NOT NULL auto_increment,
  `DVD_ID` int(3) NOT NULL default '0',
  `NoteText` varchar(255) NOT NULL default '',
  `UserId` int(10) NOT NULL default '2',
  PRIMARY KEY  (`DVDNoteID`),
  KEY `DVD_ID` (`DVD_ID`,`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_epguide`
--

CREATE TABLE IF NOT EXISTS `kpfw_epguide` (
  `EpId` tinyint(4) NOT NULL default '0',
  `Studio` varchar(35) NOT NULL default '',
  `Writer` varchar(255) NOT NULL default '',
  `Director` varchar(80) NOT NULL default '',
  `Producer` varchar(255) NOT NULL default '',
  `Executive` varchar(50) NOT NULL default 'Bob Schooley, Mark McCorkle',
  `Stars` varchar(255) NOT NULL default 'Christy Carlson Romano, Will Friedle, Tahj Mowry, Raven',
  `GuestStars` varchar(255) NOT NULL default '',
  `EpRecap` mediumtext NOT NULL,
  KEY `EpId` (`EpId`),
  KEY `Stars` (`Stars`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_eplist`
--

CREATE TABLE IF NOT EXISTS `kpfw_eplist` (
  `EpId` tinyint(4) NOT NULL auto_increment,
  `EpNumber` tinyint(3) NOT NULL default '0',
  `AirDate` varchar(18) NOT NULL default '',
  `EpTitle` varchar(35) NOT NULL default '',
  `EpDesc` varchar(255) NOT NULL default '',
  `ProdId` varchar(12) NOT NULL default '',
  `Season` varchar(9) NOT NULL default '',
  PRIMARY KEY  (`EpId`),
  UNIQUE KEY `EpTitle` (`EpTitle`),
  KEY `EpNumber` (`EpNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_epnotes`
--

CREATE TABLE IF NOT EXISTS `kpfw_epnotes` (
  `NoteId` int(10) NOT NULL auto_increment,
  `EpId` int(3) NOT NULL default '0',
  `NoteText` text NOT NULL,
  `UserId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`NoteId`),
  KEY `EpId` (`EpId`,`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_eps`
--

CREATE TABLE IF NOT EXISTS `kpfw_eps` (
  `ID` varchar(50) NOT NULL,
  `Value` varchar(50) NOT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_ffchapter`
--

CREATE TABLE IF NOT EXISTS `kpfw_ffchapter` (
  `FicId` int(11) NOT NULL default '0',
  `Chapter` int(11) NOT NULL default '0',
  `UserId` int(11) NOT NULL default '0',
  `Date` int(10) unsigned NOT NULL default '0',
  `ChapterTitle` varchar(65) NOT NULL default '',
  `ChapterText` longtext NOT NULL,
  KEY `Index` (`FicId`,`Chapter`,`UserId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_ffeditors`
--

CREATE TABLE IF NOT EXISTS `kpfw_ffeditors` (
  `UserId` int(10) NOT NULL,
  `UserLevel` int(3) NOT NULL,
  KEY `UserId` (`UserId`,`UserLevel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_ffreviews`
--

CREATE TABLE IF NOT EXISTS `kpfw_ffreviews` (
  `FicID` int(11) default '0',
  `ReviewID` int(11) NOT NULL auto_increment,
  `ChapID` int(11) default '0',
  `UserIdReviewer` int(11) default '0',
  `Review` longtext,
  `Date` int(11) default NULL,
  PRIMARY KEY  (`ReviewID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_fftitles`
--

CREATE TABLE IF NOT EXISTS `kpfw_fftitles` (
  `FF_Id` bigint(20) NOT NULL auto_increment,
  `Title` varchar(50) NOT NULL default '',
  `Chapters` int(11) NOT NULL default '0',
  `UserId` int(10) NOT NULL default '0',
  `Public` varchar(3) NOT NULL default 'Yes',
  PRIMARY KEY  (`FF_Id`),
  KEY `User` (`UserId`,`Title`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_goofs`
--

CREATE TABLE IF NOT EXISTS `kpfw_goofs` (
  `GoofID` int(10) NOT NULL auto_increment,
  `EpId` tinyint(4) NOT NULL default '0',
  `GoofText` text NOT NULL,
  `UserId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`GoofID`),
  KEY `EpId` (`EpId`,`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_ip_bans`
--

CREATE TABLE IF NOT EXISTS `kpfw_ip_bans` (
  `BanID` int(9) NOT NULL auto_increment,
  `Ban_IP` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`BanID`),
  UNIQUE KEY `Ban_IP` (`Ban_IP`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_linkcat`
--

CREATE TABLE IF NOT EXISTS `kpfw_linkcat` (
  `CatID` int(3) NOT NULL auto_increment,
  `Link_Cat` varchar(35) NOT NULL default '',
  PRIMARY KEY  (`CatID`),
  KEY `Link_Cat` (`Link_Cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_links`
--

CREATE TABLE IF NOT EXISTS `kpfw_links` (
  `LinkID` int(5) NOT NULL auto_increment,
  `CatID` int(3) NOT NULL default '0',
  `LinkTitle` varchar(45) NOT NULL default '',
  `LinkURL` varchar(70) NOT NULL default '',
  `LinkDescription` varchar(255) NOT NULL default '',
  `Banner` varchar(80) NOT NULL,
  `Hits` bigint(10) NOT NULL default '0',
  `UserID` int(10) NOT NULL default '2',
  PRIMARY KEY  (`LinkID`),
  KEY `CatID` (`CatID`,`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_merchandise`
--

CREATE TABLE IF NOT EXISTS `kpfw_merchandise` (
  `ID` int(10) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_news`
--

CREATE TABLE IF NOT EXISTS `kpfw_news` (
  `NewsId` int(10) NOT NULL auto_increment,
  `Date` bigint(11) NOT NULL,
  `NewsText` varchar(255) NOT NULL default '',
  `Link` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`NewsId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_pmsgtext`
--

CREATE TABLE IF NOT EXISTS `kpfw_pmsgtext` (
  `MsgID` bigint(15) NOT NULL default '0',
  `Msg_Text` longtext NOT NULL,
  KEY `MsgID` (`MsgID`),
  FULLTEXT KEY `Msg_Text` (`Msg_Text`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_privmsg`
--

CREATE TABLE IF NOT EXISTS `kpfw_privmsg` (
  `MsgID` bigint(15) NOT NULL auto_increment,
  `From_User` int(10) NOT NULL default '0',
  `To_User` int(10) NOT NULL default '0',
  `Subject` varchar(60) NOT NULL default '',
  `Sent` int(11) NOT NULL default '0',
  `New` tinyint(1) NOT NULL default '1',
  `Replied` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`MsgID`),
  KEY `Subject` (`Subject`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_quotes`
--

CREATE TABLE IF NOT EXISTS `kpfw_quotes` (
  `QuoteID` int(10) NOT NULL auto_increment,
  `EpId` tinyint(4) NOT NULL default '0',
  `QuoteText` text NOT NULL,
  `UserId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`QuoteID`),
  KEY `EpId` (`EpId`,`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_spoiler`
--

CREATE TABLE IF NOT EXISTS `kpfw_spoiler` (
  `SpoilerID` int(11) NOT NULL auto_increment,
  `SpoilerText` varchar(255) NOT NULL default '',
  `Confirmed` varchar(5) NOT NULL default 'False',
  `Classification` varchar(45) NOT NULL default 'Plot',
  `UserId` int(10) unsigned NOT NULL default '2',
  PRIMARY KEY  (`SpoilerID`),
  KEY `Confirmation` (`Confirmed`,`Classification`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_today`
--

CREATE TABLE IF NOT EXISTS `kpfw_today` (
  `News_ID` int(9) NOT NULL auto_increment,
  `Date` int(11) NOT NULL default '0',
  `Month_Day` varchar(6) NOT NULL default '',
  `Year` int(4) NOT NULL default '0',
  `News_Text` varchar(255) NOT NULL default '',
  `UserID` int(4) NOT NULL default '2',
  PRIMARY KEY  (`News_ID`),
  KEY `Month_Day` (`Month_Day`,`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_transcript`
--

CREATE TABLE IF NOT EXISTS `kpfw_transcript` (
  `EpId` int(3) NOT NULL default '0',
  `ScriptText` longtext NOT NULL,
  UNIQUE KEY `EpId` (`EpId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_trivia`
--

CREATE TABLE IF NOT EXISTS `kpfw_trivia` (
  `Ques_ID` int(10) NOT NULL auto_increment,
  `Ques_Text` text NOT NULL,
  `Poss_Ans` varchar(70) NOT NULL,
  `Poss_Ans_Full` varchar(255) NOT NULL,
  `Correct_Ans` varchar(20) NOT NULL,
  `Diff_Level` tinyint(1) NOT NULL,
  PRIMARY KEY  (`Ques_ID`),
  KEY `Poss_Ans` (`Poss_Ans`,`Poss_Ans_Full`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_userbars`
--

CREATE TABLE IF NOT EXISTS `kpfw_userbars` (
  `BarID` int(3) NOT NULL auto_increment,
  `BarName` varchar(50) NOT NULL default '',
  `BarFileName` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`BarID`),
  KEY `BarName` (`BarName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_users`
--

CREATE TABLE IF NOT EXISTS `kpfw_users` (
  `UserId` int(10) NOT NULL auto_increment,
  `UserName` varchar(40) NOT NULL default '',
  `UserEmail` varchar(40) NOT NULL default '',
  `Password` varchar(32) NOT NULL default '',
  `Joined_Date` bigint(10) NOT NULL default '0',
  `Time_Zone` varchar(6) NOT NULL default '0.00',
  `Profile` longtext NOT NULL,
  `ShowEmail` char(3) NOT NULL default 'Yes',
  `Name` varchar(40) NOT NULL default '',
  `IP_Login` varchar(20) NOT NULL default '',
  `Act_Key` varchar(10) NOT NULL default '',
  `Active` tinyint(1) NOT NULL default '0',
  `UserLevel` tinyint(1) NOT NULL default '1',
  `postCount` int(20) NOT NULL default '0',
  PRIMARY KEY  (`UserId`),
  UNIQUE KEY `UserName` (`UserName`,`UserEmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_user_bans`
--

CREATE TABLE IF NOT EXISTS `kpfw_user_bans` (
  `UserID` int(10) NOT NULL default '0',
  `Date_Banned` bigint(12) NOT NULL default '0',
  `Effective_Until` bigint(12) NOT NULL default '0',
  UNIQUE KEY `UserID` (`UserID`),
  KEY `Date_Banned` (`Date_Banned`,`Effective_Until`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_video`
--

CREATE TABLE IF NOT EXISTS `kpfw_video` (
  `FileID` int(5) NOT NULL auto_increment,
  `FileName` varchar(45) NOT NULL default '',
  `FileTitle` varchar(50) NOT NULL default '',
  `Description` tinytext NOT NULL,
  `UserId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`FileID`),
  UNIQUE KEY `FileName` (`FileName`),
  KEY `UserId` (`UserId`),
  KEY `FileTitle` (`FileTitle`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_vip_question`
--

CREATE TABLE IF NOT EXISTS `kpfw_vip_question` (
  `QuesID` int(11) NOT NULL auto_increment,
  `Ques` longtext,
  `Asked` int(11) default '0',
  PRIMARY KEY  (`QuesID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kpfw_youtubevid`
--

CREATE TABLE IF NOT EXISTS `kpfw_youtubevid` (
  `Vid_ID` int(10) NOT NULL auto_increment,
  `UserId` int(10) NOT NULL default '0',
  `YT_Vid_ID` varchar(15) NOT NULL default '',
  `Video_Title` varchar(80) NOT NULL default '',
  `Video_Description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`Vid_ID`),
  KEY `UserId` (`UserId`,`YT_Vid_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rsnet_adminvideo`
--

CREATE TABLE IF NOT EXISTS `rsnet_adminvideo` (
  `ID` varchar(50) NOT NULL,
  `Value` varchar(50) NOT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rsnet_coco_moo`
--

CREATE TABLE IF NOT EXISTS `rsnet_coco_moo` (
  `entry` int(2) default NULL,
  `votes` int(10) default NULL,
  `ron` longtext NOT NULL,
  `brian` longtext NOT NULL,
  `grandpa` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rsnet_video`
--

CREATE TABLE IF NOT EXISTS `rsnet_video` (
  `FileID` int(5) NOT NULL auto_increment,
  `FileName` varchar(50) NOT NULL,
  `FileTitle` varchar(50) NOT NULL,
  `Description` tinytext NOT NULL,
  `VideoSmall` varchar(50) NOT NULL default '0',
  `PictureFile` varchar(50) NOT NULL,
  `VideoPri` tinyint(1) NOT NULL default '0',
  `Approved` tinyint(1) NOT NULL default '0',
  `Author_Name` varchar(50) NOT NULL,
  `Author_Email` varchar(50) NOT NULL,
  `Upload_ID` int(10) NOT NULL default '0',
  PRIMARY KEY  (`FileID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
