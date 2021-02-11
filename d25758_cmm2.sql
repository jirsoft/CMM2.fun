-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: wm135.wedos.net:3306
-- Generation Time: Feb 11, 2021 at 03:31 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `d25758_cmm2`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE IF NOT EXISTS `apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `version` varchar(200) NOT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(11) NOT NULL DEFAULT '1',
  `scr_path` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `link` varchar(200) NOT NULL,
  `category` int(11) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`,`changed`,`author`,`category`),
  KEY `title_2` (`title`),
  KEY `changed` (`changed`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `title`, `version`, `changed`, `author`, `scr_path`, `subtitle`, `description`, `link`, `category`, `rating`) VALUES
(1, 'Napoleon Commander', '1.15', '2021-02-06 21:01:17', 2, 'NapoleonCommander_20210206215759.jpg', 'File explorer similar to ancient Norton, Volkov and other commanders on ancient PC.', 'File and directory copy on local SD card and from/to server (serial port or ESP8266/32 over Wifi with help of Python server). Basic file operations as rename, delete, search. Few viewers (TEXT, BASIC, HEX, SPRITE, IMAGE - also some C64, ZX Spectrum and Atari ST formats). Simple HEX editor...', 'https://github.com/jirsoft/NC', 5, 1),
(2, 'SimplEd', '0.38', '2021-02-08 23:03:04', 2, 'SimplEd_20210206215734.jpg', 'Font editor for fonts used by PRINT and TEXT commands.', 'Font editor for CMM2 fonts (created fonts can be used in MMBasic''s PRINT and TEXT commands). Operations like edit, rotate, shift, inverse, fill... Import from BAS, INC and FNT files, font can be also scanned from any image, HT and PS/2 mouse support.', 'https://github.com/jirsoft/SimplEd', 5, 3),
(3, 'Maxiterm', '1.9.1', '2021-02-08 22:46:51', 3, 'Maxiterm_20210206220604.jpg', 'Communications terminal program for enabling the CMM2 to exchange data with other computer systems, via built-in COM ports.', 'Xmodem File transfer (with CMM2 firmware 5.06 or higher), selectable font colors (White, Amber, Green) matching famous vintage terminals, autodialer phone book, ASCII monochrome text rendering, retro terminal sound effects, configurable TTL/RS-232 COM port speeds', 'https://github.com/frnno967/maxiterm', 9, 1),
(4, 'DemoX', '0.9b', '2021-02-08 22:30:44', 4, 'DemoX_20210206220542.jpg', 'This is the first Demoscene for the Colour Maximite 2', '', 'https://github.com/mauroxavierneto/demox_cmm2', 2, 1),
(5, 'Wolfstein 3D', '0.7a', '2021-02-06 21:09:29', 4, 'Wolfstein 3D_20210206220624.jpg', 'Wolfenstein 3D version from scratch for Colour Maximite 2', 'It''s possible to read any Wolfenstein stage exported from FLR format\r\nBrown guards, ss, dogs, officers and the first boss are almost full implemented\r\nI think the music is better than the original\r\nThe textures size and resolution are preserved (64x64)\r\nEnemies can open doors and chase you\r\nI think it''s fun to play if you could ignore some speed constrains\r\nSee the controls list, you can change window size with F5 and made it zoom with F6... And can have something like the resolution of Wolf3D from SNES or Gameboy\r\nI remade some game arts to respect German people, but there are other things that I will do better sometime.', 'https://github.com/mauroxavierneto/wolf3d_cmm2', 3, 2),
(6, 'Gauntlet', '0.4a', '2021-02-06 21:09:13', 4, 'Gauntlet_20210206220553.jpg', 'Gauntlet port for the Colour Maximite 2', 'This is a version of Gauntlet to Colour Maximite 2. I don''t own any rights about Gauntlet trademark, this is only a homebrew project made by me in my free time, and for sure in the current state, it has lots of bugs. Keep in mind I''m only a Gauntlet fan with some basic developing skills and my target is only to challenge myself to port it to CMM2, it''s not a project with profit intentions.', 'https://github.com/mauroxavierneto/gauntlet_cmm2', 3, 3),
(7, 'Chemical Chaos', '1.2', '2021-02-08 23:02:50', 5, 'ChemicalChaos_20210206220453.jpg', 'Addictive logical game', 'There is chaos and confusion all through the chamistry lab! The chemicals have been mixed', 'https://www.thebackshed.com/forum/uploads/vegipete/2021-01-30_115704_%3Cfont%20color=red%3E%3Cb%3ECHEMICHAOS%3C/b%3E%3C/font%3E12.zip', 3, 3),
(8, 'Z-MIM', 'r3', '2021-02-11 11:22:16', 6, 'zmim_20210211122216.png', 'Play Zork on the Colour Maximite 2', 'Z-MIM is a Z-machine interpreter allowing the classic Infocom works of interactive fiction to be played on the Colour Maximite 2.\n\nThis version is limited to files in the .z3 format but all the early classics are available in that format: Ballyhoo, Cuthroats, Enchanter, Hollywood Hijinx, Leather Goddesses of Phobos, The Lurking Horror, Planetfall, Plundered Hearts, Seastalker, Sorcerer, Spellbreaker, Wishbringer, Infidel and of course Zork I-III.', 'https://github.com/thwill1000/zmim', 3, 1),
(9, 'HexEdit', '0.6', '2021-02-05 12:04:13', 7, '', 'Binary File Editor for Color Maximite 2', ' HexEdit allows you to edit binary files, i.e. files that you can''t edit with a regular text editor such as the built-in editor.  The file''s contents are shown as hexadecimal byte values and as ASCII code in two side-by-side blocks. Changes can be made both in the hex table section and in the ASCII section.  The usual file navigation with cursors keys, page up&down, home, end, etc. should work as expected.  Hexedit is a full-screen console-only editor. I does not work over serial, sorry.  The file to edit can be passed in as a command line argument.  Press F1 to get help on key bindings.', 'https://github.com/epsilon537/hexedit_cmm', 5, 0),
(10, 'MemEdit', '0.2', '2021-02-05 12:04:06', 7, '', 'Memory Editor for Color Maximite 2', 'MemEdit presents you with a view into CMM2''s (virtual) memory and allows you to make changes. Essentially, it''s a peek/poke front-end.  The memory contents are shown as hexadecimal byte values and as ASCII code in two side-by-side blocks. Changes can be made both in the hex table section and in the ASCII section.  The usual file navigation with cursors keys, page up&down, home, end, etc. should work as expected.  MemEdit is a full-screen console-only editor. I does not work over serial, sorry.  The starting address to view can be passed in as a command line argument, e.g. *memedit MM.INFO(PROGRAM)  Commands such as goto and fill accept MMBasic syntax for address specifications, e.g. Go To Address (MMBasic syntax): MM.INFO(PAGE ADDRESS 0)  Press F1 to get help on key bindings.', 'https://github.com/epsilon537/memedit_cmm', 5, 0),
(11, 'XEdit', '0.8', '2021-02-05 12:04:00', 7, '', 'Text Editor for Color Maximite 2', 'XEdit is a text editor written in MMBasic. The editor supports up to two windows (Hsplit/Vsplit or no split) and up to two buffers (files). The two buffers can be freely assigned to  windows and two windows can present separate views into a single buffer. XEdit supports undo, macro recording, MMBasic syntax highlighting as well as the usual  complement of editor operations: cut/copy/paste, find/replace, indent/unident selections,  insert/overwrite mode, goto line.', 'https://github.com/epsilon537/xedit_cmm2', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(200) NOT NULL,
  `contact` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `author_2` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author`, `contact`) VALUES
(1, 'unknown', NULL),
(2, 'JirSoft', 'https://github.com/jirsoft'),
(3, 'John "Jay" Crutti', 'https://github.com/frnno967'),
(4, 'Mauro Xavier Neto', 'https://github.com/mauroxavierneto'),
(5, 'Vegipete', NULL),
(6, 'Tom Williams "thwill"', 'https://sockpuppetstudios.com'),
(7, 'Epsilon', 'https://github.com/epsilon537');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(10, 'business'),
(9, 'comm'),
(2, 'demo'),
(11, 'electro'),
(3, 'game'),
(1, 'general'),
(6, 'graphic'),
(4, 'music'),
(8, 'school'),
(7, 'science'),
(5, 'tool');

-- --------------------------------------------------------

--
-- Table structure for table `shadow`
--

CREATE TABLE IF NOT EXISTS `shadow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `version` varchar(200) CHARACTER SET utf8 NOT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `contact` varchar(200) CHARACTER SET utf8 NOT NULL,
  `scr_path` varchar(200) CHARACTER SET utf8 NOT NULL,
  `subtitle` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `link` varchar(200) CHARACTER SET utf8 NOT NULL,
  `category` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=27 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
