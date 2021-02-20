-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: wm135.wedos.net:3306
-- Generation Time: Feb 20, 2021 at 11:19 AM
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
  `category` varchar(200) NOT NULL DEFAULT '1',
  `rating` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `title` (`title`,`changed`,`author`,`category`),
  KEY `title_2` (`title`),
  KEY `changed` (`changed`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `title`, `version`, `changed`, `author`, `scr_path`, `subtitle`, `description`, `link`, `category`, `rating`, `enabled`) VALUES
(1, 'Napoleon Commander', '1.15', '2021-02-06 21:01:17', 2, 'NapoleonCommander_20210206215759.jpg', 'File explorer similar to ancient Norton, Volkov and other commanders on ancient PC.', 'File and directory copy on local SD card and from/to server (serial port or ESP8266/32 over Wifi with help of Python server). Basic file operations as rename, delete, search. Few viewers (TEXT, BASIC, HEX, SPRITE, IMAGE - also some C64, ZX Spectrum and Atari ST formats). Simple HEX editor...', 'https://github.com/jirsoft/NC', '5', 5, 1),
(2, 'SimplEd', '0.38', '2021-02-08 23:03:04', 2, 'SimplEd_20210206215734.jpg', 'Font editor for fonts used by PRINT and TEXT commands.', 'Font editor for CMM2 fonts (created fonts can be used in MMBasic''s PRINT and TEXT commands). Operations like edit, rotate, shift, inverse, fill... Import from BAS, INC and FNT files, font can be also scanned from any image, HT and PS/2 mouse support.', 'https://github.com/jirsoft/SimplEd', '5,6', 4, 1),
(3, 'Maxiterm', '1.9.1', '2021-02-08 22:46:51', 3, 'Maxiterm_20210206220604.jpg', 'Communications terminal program for enabling the CMM2 to exchange data with other computer systems, via built-in COM ports.', 'Xmodem File transfer (with CMM2 firmware 5.06 or higher), selectable font colors (White, Amber, Green) matching famous vintage terminals, autodialer phone book, ASCII monochrome text rendering, retro terminal sound effects, configurable TTL/RS-232 COM port speeds', 'https://github.com/frnno967/maxiterm', '9', 2, 1),
(4, 'DemoX', '0.9b', '2021-02-08 22:30:44', 4, 'DemoX_20210206220542.jpg', 'This is the first Demoscene for the Colour Maximite 2', '', 'https://github.com/mauroxavierneto/demox_cmm2', '2', 4, 1),
(5, 'Wolfstein 3D', '0.7a', '2021-02-06 21:09:29', 4, 'Wolfstein 3D_20210206220624.jpg', 'Wolfenstein 3D version from scratch', 'Wolfenstein 3D version made from scratch for Colour Maximite 2 (work in progress). <br>Warning: Contains blood and images that may be disturbing to a sensitive audience (swastika).', 'https://github.com/mauroxavierneto/wolf3d_cmm2', '3', 5, 1),
(6, 'Gauntlet', '0.4a', '2021-02-06 21:09:13', 4, 'Gauntlet_20210206220553.jpg', 'Gauntlet port for the Colour Maximite 2', 'This is a version of Gauntlet to Colour Maximite 2. I don''t own any rights about Gauntlet trademark, this is only a homebrew project made by me in my free time, and for sure in the current state, it has lots of bugs. Keep in mind I''m only a Gauntlet fan with some basic developing skills and my target is only to challenge myself to port it to CMM2, it''s not a project with profit intentions.', 'https://github.com/mauroxavierneto/gauntlet_cmm2', '3', 9, 1),
(7, 'Chemical Chaos', '1.2', '2021-02-08 23:02:50', 5, 'ChemicalChaos_20210206220453.jpg', 'Addictive logical game', 'There is chaos and confusion all through the chamistry lab! The chemicals have been mixed', 'https://www.thebackshed.com/forum/uploads/vegipete/2021-01-30_115704_%3Cfont%20color=red%3E%3Cb%3ECHEMICHAOS%3C/b%3E%3C/font%3E12.zip', '3', 5, 1),
(8, 'Z-MIM', 'r3', '2021-02-11 11:22:16', 6, 'zmim_20210211122216.png', 'Play Zork on the Colour Maximite 2', 'Z-MIM is a Z-machine interpreter allowing the classic Infocom works of interactive fiction to be played on the Colour Maximite 2.\n\nThis version is limited to files in the .z3 format but all the early classics are available in that format: Ballyhoo, Cuthroats, Enchanter, Hollywood Hijinx, Leather Goddesses of Phobos, The Lurking Horror, Planetfall, Plundered Hearts, Seastalker, Sorcerer, Spellbreaker, Wishbringer, Infidel and of course Zork I-III.', 'https://github.com/thwill1000/zmim', '3', 4, 1),
(9, 'HexEdit', '0.6', '2021-02-05 12:04:13', 7, '', 'Binary File Editor for Color Maximite 2', ' HexEdit allows you to edit binary files, i.e. files that you can''t edit with a regular text editor such as the built-in editor.  The file''s contents are shown as hexadecimal byte values and as ASCII code in two side-by-side blocks. Changes can be made both in the hex table section and in the ASCII section.  The usual file navigation with cursors keys, page up&down, home, end, etc. should work as expected.  Hexedit is a full-screen console-only editor. I does not work over serial, sorry.  The file to edit can be passed in as a command line argument.  Press F1 to get help on key bindings.', 'https://github.com/epsilon537/hexedit_cmm', '5', 1, 1),
(10, 'MemEdit', '0.2', '2021-02-05 12:04:06', 7, '', 'Memory Editor for Color Maximite 2', 'MemEdit presents you with a view into CMM2''s (virtual) memory and allows you to make changes. Essentially, it''s a peek/poke front-end.  The memory contents are shown as hexadecimal byte values and as ASCII code in two side-by-side blocks. Changes can be made both in the hex table section and in the ASCII section.  The usual file navigation with cursors keys, page up&down, home, end, etc. should work as expected.  MemEdit is a full-screen console-only editor. I does not work over serial, sorry.  The starting address to view can be passed in as a command line argument, e.g. *memedit MM.INFO(PROGRAM)  Commands such as goto and fill accept MMBasic syntax for address specifications, e.g. Go To Address (MMBasic syntax): MM.INFO(PAGE ADDRESS 0)  Press F1 to get help on key bindings.', 'https://github.com/epsilon537/memedit_cmm', '5', 1, 1),
(11, 'XEdit', '0.8', '2021-02-05 12:04:00', 7, '', 'Text Editor for Color Maximite 2', 'XEdit is a text editor written in MMBasic. The editor supports up to two windows (Hsplit/Vsplit or no split) and up to two buffers (files). The two buffers can be freely assigned to  windows and two windows can present separate views into a single buffer. XEdit supports undo, macro recording, MMBasic syntax highlighting as well as the usual  complement of editor operations: cut/copy/paste, find/replace, indent/unident selections,  insert/overwrite mode, goto line.', 'https://github.com/epsilon537/xedit_cmm2', '5', 2, 1),
(12, 'Wurmli', '1.0', '2021-02-14 14:46:18', 8, 'Wurmli_20210214154618.gif', 'a snake game for the CMM2', '', 'https://github.com/NautilusDE/Wurmli', '3', 1, 1),
(13, 'MasterMind', '0.01', '2021-02-14 19:23:24', 2, 'MasterMind_20210214201326.jpg', 'Simple logic game from childhood', 'On the game begin computer randomly selects N colours from MAX count and store this as secret row. Task for player is to guess correct row with placing own choices in every round. On the round end, computer tells with GREENs points how many colors are on right places and with REDs how many are correct colour in wrong place. This should help the player in next row. You can adjust the game difficulty to match yours skill...', 'https://github.com/jirsoft/MasterMind', '3', 0, 1),
(14, 'CMM2 Welcome Tape', 'Release 1.0.0', '2021-02-14 21:29:36', 11, 'welcome_20210215175647.png', '', 'An introductory collection of programs for the Colour Maximite 2 in the vein of the Sinclair Spectrum "Horizons" tape, BBC Micro "Welcome" tape/disk and Apple II.\n\nCreated as a collaborative effort by the denziens of "The Back Shed" and curated by Tom Williams "thwill".', 'https://github.com/thwill1000/cmm2-welcome', '1,2', 2, 1),
(15, 'FalFus2', 'r3', '2021-02-14 21:49:40', 5, 'Falfus2_20210214223426.png', 'Logic puzzle game', 'Decades ago, I wrote a logic puzzle game for my Apple //gs with a Second Sight VGA card. Falfus was based on the game Puzznic. The goal was to clear each level by sliding matching tiles together. Two or more of the same tile touching along any edge would fuse and vanish with a pop. The player can slide tiles sideways only, and tiles fall when unsupported.', 'https://www.thebackshed.com/forum/uploads/vegipete/2020-09-03_120743_%3Cfont%20color=red%3E%3Cb%3EFALFUS2%3C/b%3E%3C/font%3E_r3.zip', '3', 0, 1),
(16, 'Flappy Bird', '', '2021-02-14 21:52:20', 9, 'FlappyBird_20210217193920.png', '', '', 'https://www.thebackshed.com/forum/uploads/jeff510/2020-07-19_172139_FLAPPY_BIRD.zip', '3', 1, 1),
(17, 'Guardian', '', '2021-02-14 21:53:28', 10, 'Defender_20210214224158.jpg', 'Defender clone', '', 'https://github.com/thwill1000/cmm2-welcome/tree/master/games/guardian', '3', 1, 1),
(18, 'Tank versus UFO', '1.0', '2021-02-15 15:47:46', 12, 'Tank_vs_UFO_20210215164746.png', '', 'Shoot UFOs with your tank but beware of their bombs!', 'https://www.thebackshed.com/forum/uploads/Schlowski/2021-02-17_070307_TanksVersusUFOs.zip', '3', 0, 1),
(19, 'Crate Away', '1.6b', '2021-02-15 23:44:12', 5, 'CrateAway_20210215125851.png', 'Addictive logical game', 'More levels can be found  <a target="_blank" href=https://www.sourcecode.se/sokoban/levels>HERE</a>', 'https://www.thebackshed.com/forum/uploads/fuse/2020-12-12_014257_CrateAway15b.zip', '3', 1, 1),
(20, 'CMM2 User Manual', 'v5.06.00', '2021-02-16 10:25:40', 13, 'CMM2userManual_20210216112442.JPG', 'Most important guide for CMM2 owner', 'This is USER GUIDE for last official firmware for CMM2.', 'https://geoffg.net/Downloads/Maximite/Colour_Maximite_2_User_Manual.pdf', '12', 6, 1),
(21, 'Programming with the Colour Maximite 2', '', '2021-02-16 11:10:01', 13, 'IntroductionToProgramming_20210216120921.JPG', '', 'A tutorial covering the Colour Maximite 2 and programming in the BASIC language.', 'https://geoffg.net/Downloads/Maximite/Programming_with_the_Colour_Maximite_2.pdf', '12', 0, 1),
(22, 'MM Edit', '4', '2021-02-16 11:20:43', 14, 'MMEdit_20210216121818.JPG', 'A Windows editor for the Maximite and MicroMite', 'MMEdit was created to simplify writing applications for the Maximite computer.\r\nThe first versions of MM Basic required line numbers, something that I was happy to leave behind when working on my PC!\r\nSince MM Basic version 3.0, line numbers are no longer required and it has a full screen editor, so the original reason for creating MM Edit has diminished.\r\n\r\nBeing able to write code on your PC and easily transfer the files between the PC and Maximite is still a good reason for using MM Edit.\r\n\r\nSince version 3.5.17, MMEdit can use TeraTerm as the VT100 terminal. TeraTerm is a far superior VT100 terminal than MMEdit''s built-in version.\r\n\r\nVersion 3.6.0 added support for the Micromite Plus.\r\nVersion 3.7.0 added support for the Micromite eXtreme.\r\nVersion 4.0 added support for the new Colour Maximite 2.\r\n\r\n', 'https://www.c-com.com.au/MMedit.htm', '13', 0, 1),
(23, 'MMBasic Online Manual', '', '2021-02-16 11:25:03', 14, 'MMBasicOnline_20210216122442.JPG', 'Covers all variants of MMBasic in one integrated online lookup tool', 'This MMBasic syntax help system is based heavily on the MMBasic user manuals.\r\nIt is intended as a quick reference only and not a tutorial on programming with MMBasic.\r\nWith MMBasic it is easy to write a one or two line program to test a command and that is the preferred way of learning (by doing).', 'https://www.c-com.com.au/mmhelp/', '12', 1, 1),
(24, 'GRAPHICS Programming on the Colour MaxiMite 2', 'v3d', '2021-02-16 11:37:17', 15, 'GraphicsProgramming_20210216123658.JPG', '', 'This is a compilation of the threads posted by Peter Mather as a background and deeper explanation of the graphics\r\ncapabilities of the CMM2. I have taken the liberty (with Peters OK), to post them on the forum with some additional\r\ncomments and explanations of recent developments in the hope that they will assist others in realising the full potential\r\nof the CMM2.\r\n', 'https://www.thebackshed.com/forum/uploads/panky/2020-12-17_094759_Graphics%20Programming%20on%20the%20CMM2-v3d.pdf', '12', 1, 1),
(25, 'Max-E-Man', '0.71', '2021-02-16 12:17:51', 16, 'MaxEman_20210216164325.png', 'Near arcade perfect Pac-Man clone', '', 'http://www.thebackshed.com/forum/uploads/realmnm/2020-08-19_210059_Max-E-Man.zip', '3', 5, 1),
(26, 'GoMoku', '', '2021-02-16 12:18:01', 17, 'GoMoku_20210219134815.png', '', '', 'http://www.thebackshed.com/forum/uploads/fiziwig/2020-08-01_015949_GoMoku.zip', '3', 0, 1),
(27, 'Space invaders', '', '2021-02-16 12:23:02', 18, '', '', 'I''ve done a rough conversion of Space Invaders to the Colour Maximite 2.\r\n(not the Colour Invaders version with coloured sprites for aliens)', 'https://www.thebackshed.com/forum/uploads/capsikin/2020-08-15_141705_invaders.zip', '3', 0, 1),
(28, 'PSGmini', 'v0.3a', '2021-02-16 12:27:11', 4, 'PSGmini_20210216132651.JPG', 'SN76489 / NES 2A03 Simulator and VGM Player', 'This is not an emulator and is far from perfect. \nIt''s only a little include file for MMBasic and Colour Maximite 2 that play VGM files for SN76489 chips and with some limitations, for the NES 2A03.\n\n(USE LAST BETA FIRMWARE FOR THE CMM2 TO USE THIS)\n', 'https://github.com/mauroxavierneto/psgmini_cmm2', '4', 2, 1),
(29, 'Chiptune Drumsynth with 16 Step Sequencer', 'v10', '2021-02-16 12:55:40', 19, 'ChiptuneDrumsynth_20210216135303.JPG', '', 'I have programmed a small Chiptune Drumsynth.\r\n\r\nYou can programm 4 Channels (Basedrum, Snaredrum, Hihats, and ADditional Sound)\r\non 16 Steps. You can randomize the patterns and you can change volume on each step.\r\nyou can even temporarly store one pattern.', 'https://www.thebackshed.com/forum/uploads/TweakerRay/2020-09-23_043528_Drummachine%20V10.zip', '4', 6, 1),
(30, 'Heart Attack', '', '2021-02-16 12:55:44', 19, '', '', '', 'https://www.thebackshed.com/forum/uploads/TweakerRay/2020-10-17_084015_Heart%20Attack%20(by%20TweakerRay)_v1-2%20with%20controller%20support.zip', '3', 0, 1),
(31, 'Heli-Blaster', '1.0.0', '2021-02-16 15:55:16', 10, 'heliblaster_20210216151423.png', 'Multi-directional scrolling helicopter shoot-em-up', 'Fly a helicopter around a 10,000x10,000 pixel map wreaking destruction on an enemy base.\n\nMore details at <a target="_blank" href=https://www.thebackshed.com/forum/ViewTopic.php?TID=12952>TBS</a>', 'https://www.thebackshed.com/forum/uploads/PeteCotton/2020-10-17_112118_heliblast.zip', '3', 2, 1),
(32, 'Space Trek', '0.1', '2021-02-18 09:41:51', 20, 'spacetrek-splash_20210217234101.jpg', '', 'Similar to the classic Star-Trek game but more graphical in nature.  This is still in development, though I''m busy with other things at the moment, but you can go around blasting enemies and resupplying at the supply pods.', 'https://github.com/yignoth/CMM2-SpaceTrek', '3', 0, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

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
(7, 'Epsilon', 'https://github.com/epsilon537'),
(8, 'Nautilus', 'https://github.com/NautilusDE'),
(9, 'jeff510', NULL),
(10, 'PeteCotton', NULL),
(11, 'Multiple contributors', ''),
(12, 'Schlowski', 'bjoerg@stojalowski.de'),
(13, 'Geoff Graham', 'https://geoffg.net/'),
(14, 'Jim Hiley', 'https://www.c-com.com.au/'),
(15, 'Doug Pankhurst (panky)', NULL),
(16, 'Martin Scragg (realmnm)', NULL),
(17, 'Gary Shannon (fiziwig)', NULL),
(18, 'Caspian (capsikin)', NULL),
(19, 'Ray (TweakerRay)', 'http://tweakerray.bandcamp.com/'),
(20, 'John DiFelici (johnd)', 'https://github.com/yignoth');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(10, 'business'),
(9, 'comm'),
(2, 'demo'),
(12, 'docs'),
(11, 'electro'),
(3, 'game'),
(1, 'general'),
(6, 'graphics'),
(4, 'music'),
(13, 'non cmm2'),
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
  `new_author` varchar(200) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(200) CHARACTER SET utf8 NOT NULL,
  `scr_path` varchar(200) CHARACTER SET utf8 NOT NULL,
  `subtitle` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `link` varchar(200) CHARACTER SET utf8 NOT NULL,
  `category` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=82 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
