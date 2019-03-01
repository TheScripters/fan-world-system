-- phpMyAdmin SQL Dump
-- version 2.11.9.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2009 at 01:15 PM
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
-- Table structure for table `kpfw_config`
--

CREATE TABLE IF NOT EXISTS `kpfw_config` (
  `Config_ID` varchar(50) NOT NULL default '',
  `Config_Value` text NOT NULL,
  KEY `Config_ID` (`Config_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpfw_config`
--

INSERT INTO `kpfw_config` (`Config_ID`, `Config_Value`) VALUES
('Keywords', 'Kim Possible, KP, Ron Stoppable, Rufus, Drakken,Shego, Fan World, Fanvideo, userbars, Dementor, spoilers, season 4, character info, chronology, music videos, avatars, trivia, screen caps, episode guides, screen captures, kim possible images'),
('Description', 'KP Fan World is the ultimate Kim Possible fan site. It has the largest collection of Kim Possible screen captures, spoilers for season 4, userbars for your signature, full profiles for centralized video/fic viewing, full episode transcripts/recaps, cover art, chronoglogy, trivia, character info/bios, and even model sheets for the main characters and full episode guides with much much more'),
('Page_Limit', '30'),
('Index_News', 'KPFF Update Mar 26, 2009: RSS feed added, and the Fanfiction conversion tool has been fixed. \r\n\r\nUsers of the old KPFanFiction.com can now change everythng over with a single click. <a href="http://www.kpfanfiction.com" target="_blank">Visit the new site</a> or <a href="http://kpff.thescripters.net" target="_blank">the old site</a> for more information!'),
('Admin_Message', 'Most everything is online and functional now. I suggest you use this area wisely. ;)\r\n\r\nYou can select the section of site to work with from the menu at left. There is a member list there, now.\r\n\r\nBanning system is online and effective. Quite effective. Ban by IP or username.\r\n\r\nAvatar hosting is fully operational, user levels, mass email, everything.\r\n\r\nSo have at it, and let''s all have fun, shall we? ;)'),
('ActivateSend', '864000,1238805237,1239669000'),
('MemberUpdate', '1239170458,1239256858'),
('Index_News_Active', 'True'),
('word_censor', 'shit, fuck, porn, vagina, boob, dammit, ass, bastard, slut, piss, tit, damn, damn, pussy, cunt, whore, bitch, queer, joo, douche, blowjob, rimjob, dickf'),
('countdown_time', '23,0,0,12,31,07;2,0,0,12,31,07;sec;-1800'),
('countdown_text', '<font color="#00FF00"><b>Time Till New Years <font color="#FFFF00">%time%</font>;<font color="#00FF00"><b>Happy New Year!!<font color="#FFFF00">%time%</font>;<font color="#00FF00"><b>Happy New Year!!<font color="#FFFF00">%time%</font>'),
('countdown_active', 'False');
