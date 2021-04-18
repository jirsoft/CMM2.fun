-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: wm135.wedos.net:3306
-- Generation Time: Apr 18, 2021 at 05:06 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `title`, `version`, `changed`, `author`, `scr_path`, `subtitle`, `description`, `link`, `category`, `rating`, `enabled`) VALUES
(1, 'Napoleon Commander', '1.26', '2021-04-18 14:06:13', 2, 'NC_20210418164955.jpg', 'File explorer similar to ancient Norton, Volkov and other commanders on DOS', 'File and directory operations on local SD card and from/to server (serial port or ESP8266/32 over Wifi with help of Python server, full support of <a href=https://sklep.pslabs.pl/Colour-Maximite-2-Deluxe-Edition-USB-Host-Contr-WiFi-p150 target="_blank">CMM2 DeLuxe Edition</a>)<br>Operations like copy, move, rename, delete, search... <br>Data viewers (TEXT, BASIC, HEX, SPRITE, IMAGE - also some C64, ZX Spectrum and Atari ST formats), simple HEX editor\n<br>Archive and compress', 'https://github.com/jirsoft/NC', '5,9,13', 14, 1),
(2, 'SimplEd', '0.38', '2021-02-08 23:03:04', 2, 'SimplEd_20210418165714.jpg', 'Font editor for fonts used by PRINT and TEXT commands.', 'Font editor for CMM2 fonts (created fonts can be used in MMBasic''s PRINT and TEXT commands). Operations like edit, rotate, shift, inverse, fill... Import from BAS, INC and FNT files, font can be also scanned from any image, HT and PS/2 mouse support.', 'https://github.com/jirsoft/SimplEd', '5,6', 15, 1),
(3, 'Maxiterm', '1.9.5', '2021-04-12 08:00:00', 3, 'Maxiterm_20210206220604.jpg', 'Communications terminal program for enabling the CMM2 to exchange data with other computer systems, via built-in COM ports.', 'Xmodem File transfer (with CMM2 firmware 5.06 or higher), selectable font colors (White, Amber, Green) matching famous vintage terminals, autodialer phone book, ASCII monochrome text rendering, retro terminal sound effects, configurable TTL/RS-232 COM port speeds', 'https://github.com/frnno967/maxiterm', '9', 11, 1),
(4, 'DemoX', '0.9b', '2021-02-08 22:30:44', 4, 'DemoX_20210206220542.jpg', 'This is the first Demoscene for the Colour Maximite 2', '', 'https://github.com/mauroxavierneto/demox_cmm2', '2', 18, 1),
(5, 'Wolfstein 3D', '0.7a', '2021-02-06 21:09:29', 4, 'Wolfstein 3D_20210206220624.jpg', 'Wolfenstein 3D version from scratch', 'Wolfenstein 3D version made from scratch for Colour Maximite 2 (work in progress). <br>Warning: Contains blood and images that may be disturbing to a sensitive audience (swastika).', 'https://github.com/mauroxavierneto/wolf3d_cmm2', '3', 15, 1),
(6, 'Gauntlet', '0.4a', '2021-02-06 21:09:13', 4, 'Gauntlet_20210206220553.jpg', 'Gauntlet port for the Colour Maximite 2', 'This is a version of Gauntlet to Colour Maximite 2. I don''t own any rights about Gauntlet trademark, this is only a homebrew project made by me in my free time, and for sure in the current state, it has lots of bugs. Keep in mind I''m only a Gauntlet fan with some basic developing skills and my target is only to challenge myself to port it to CMM2, it''s not a project with profit intentions.', 'https://github.com/mauroxavierneto/gauntlet_cmm2', '3', 18, 1),
(7, 'Chemical Chaos', '1.2', '2021-02-08 23:02:50', 5, 'ChemicalChaos_20210206220453.jpg', 'Addictive logical game', 'There is chaos and confusion all through the chamistry lab! The chemicals have been mixed', 'https://www.thebackshed.com/forum/uploads/vegipete/2021-01-30_115704_%3Cfont%20color=red%3E%3Cb%3ECHEMICHAOS%3C/b%3E%3C/font%3E12.zip', '3', 14, 1),
(8, 'Z-MIM', 'r3', '2021-02-11 11:22:16', 6, 'zmim_20210211122216.png', 'Play Zork on the Colour Maximite 2', 'Z-MIM is a Z-machine interpreter allowing the classic Infocom works of interactive fiction to be played on the Colour Maximite 2.\n\nThis version is limited to files in the .z3 format but all the early classics are available in that format: Ballyhoo, Cuthroats, Enchanter, Hollywood Hijinx, Leather Goddesses of Phobos, The Lurking Horror, Planetfall, Plundered Hearts, Seastalker, Sorcerer, Spellbreaker, Wishbringer, Infidel and of course Zork I-III.', 'https://github.com/thwill1000/zmim', '3', 10, 1),
(9, 'HexEdit', '0.6', '2021-02-05 12:04:13', 7, 'HexEdit_20210227232618.jpg', 'Binary File Editor for Color Maximite 2', ' HexEdit allows you to edit binary files, i.e. files that you can''t edit with a regular text editor such as the built-in editor.  The file''s contents are shown as hexadecimal byte values and as ASCII code in two side-by-side blocks. Changes can be made both in the hex table section and in the ASCII section.  The usual file navigation with cursors keys, page up&down, home, end, etc. should work as expected.  Hexedit is a full-screen console-only editor. I does not work over serial, sorry.  The file to edit can be passed in as a command line argument.  Press F1 to get help on key bindings.', 'https://github.com/epsilon537/hexedit_cmm', '5', 8, 1),
(10, 'MemEdit', '0.2', '2021-02-05 12:04:06', 7, '', 'Memory Editor for Color Maximite 2', 'MemEdit presents you with a view into CMM2''s (virtual) memory and allows you to make changes. Essentially, it''s a peek/poke front-end.  The memory contents are shown as hexadecimal byte values and as ASCII code in two side-by-side blocks. Changes can be made both in the hex table section and in the ASCII section.  The usual file navigation with cursors keys, page up&down, home, end, etc. should work as expected.  MemEdit is a full-screen console-only editor. I does not work over serial, sorry.  The starting address to view can be passed in as a command line argument, e.g. *memedit MM.INFO(PROGRAM)  Commands such as goto and fill accept MMBasic syntax for address specifications, e.g. Go To Address (MMBasic syntax): MM.INFO(PAGE ADDRESS 0)  Press F1 to get help on key bindings.', 'https://github.com/epsilon537/memedit_cmm', '5', 9, 1),
(11, 'XEdit', '0.9', '2021-03-15 12:50:56', 7, 'xscrn_20210315115431.jpg', 'XEdit Text Editor for Color Maximite 2', 'XEdit is a text editor written in MMBasic. The editor supports up to two windows (Hsplit/Vsplit or no split) and up to two buffers (files). The two buffers can be freely assigned to  windows and two windows can present separate views into a single buffer. XEdit supports undo, macro recording, MMBasic syntax highlighting as well as the usual  complement of editor operations: cut/copy/paste, find/replace, indent/unident selections,  insert/overwrite mode, goto line.', 'https://www.thebackshed.com/forum/uploads/epsilon/2021-03-15_205037_xedit.zip', '1,5', 12, 1),
(12, 'Wurmli', '1.0', '2021-02-14 14:46:18', 8, 'Wurmli_20210214154618.gif', 'A snake game for the CMM2', '', 'https://github.com/NautilusDE/Wurmli', '3', 13, 1),
(13, 'MasterMind', '0.01', '2021-02-14 19:23:24', 2, 'MasterMind_20210214201326.jpg', 'Simple logic game from childhood', 'On the game begin computer randomly selects N colours from MAX count and store this as secret row. Task for player is to guess correct row with placing own choices in every round. On the round end, computer tells with GREENs points how many colors are on right places and with REDs how many are correct colour in wrong place. This should help the player in next row. You can adjust the game difficulty to match yours skill...', 'https://github.com/jirsoft/MasterMind', '3', 9, 1),
(14, 'CMM2 Welcome Tape', 'Release 1.0.0', '2021-02-14 21:29:36', 11, 'welcome_20210215175647.png', 'First program to run on CMM2', 'An introductory collection of programs for the Colour Maximite 2 in the vein of the Sinclair Spectrum "Horizons" tape, BBC Micro "Welcome" tape/disk and Apple II.\n\nCreated as a collaborative effort by the denziens of "The Back Shed" and curated by Tom Williams "thwill".', 'https://github.com/thwill1000/cmm2-welcome', '1,2', 9, 1),
(15, 'FalFus2', 'r3', '2021-02-14 21:49:40', 5, 'Falfus2_20210214223426.png', 'Logic puzzle game', 'Decades ago, I wrote a logic puzzle game for my Apple //gs with a Second Sight VGA card. Falfus was based on the game Puzznic. The goal was to clear each level by sliding matching tiles together. Two or more of the same tile touching along any edge would fuse and vanish with a pop. The player can slide tiles sideways only, and tiles fall when unsupported.', 'https://www.thebackshed.com/forum/uploads/vegipete/2020-09-03_120743_%3Cfont%20color=red%3E%3Cb%3EFALFUS2%3C/b%3E%3C/font%3E_r3.zip', '3', 8, 1),
(16, 'Flappy Bird', '', '2021-02-14 21:52:20', 9, 'FlappyBird_20210217193920.png', '', '', 'https://www.thebackshed.com/forum/uploads/jeff510/2020-07-19_172139_FLAPPY_BIRD.zip', '3', 9, 1),
(17, 'Guardian', '', '2021-02-14 21:53:28', 10, 'Defender_20210214224158.jpg', 'Defender clone', '', 'https://github.com/thwill1000/cmm2-welcome/tree/master/games/guardian', '3', 8, 1),
(18, 'Tank versus UFO', '1.0', '2021-02-15 15:47:46', 12, 'Tank_vs_UFO_20210215164746.png', 'Simple ASCII graphics game', 'Shoot UFOs with your tank but beware of their bombs!', 'https://www.thebackshed.com/forum/uploads/Schlowski/2021-02-17_070307_TanksVersusUFOs.zip', '3', 6, 1),
(19, 'Crate Away', '1.6b', '2021-02-15 23:44:12', 5, 'CrateAway_20210215125851.png', 'Addictive logical game', 'More levels can be found  <a target="_blank" href=https://www.sourcecode.se/sokoban/levels>HERE</a>', 'https://www.thebackshed.com/forum/uploads/fuse/2020-12-12_014257_CrateAway15b.zip', '3', 8, 1),
(20, 'CMM2 User Manual', 'v5.06.00', '2021-02-16 10:25:40', 13, 'CMM2userManual_20210216112442.JPG', 'Most important guide for any CMM2 owner', 'This is USER GUIDE for last official firmware for CMM2.', 'https://geoffg.net/Downloads/Maximite/Colour_Maximite_2_User_Manual.pdf', '12', 16, 1),
(21, 'Programming with the Colour Maximite 2', '', '2021-02-16 11:10:01', 13, 'IntroductionToProgramming_20210216120921.JPG', 'Introduction to CMM2 programming', 'A tutorial covering the Colour Maximite 2 and programming in the BASIC language.', 'https://geoffg.net/Downloads/Maximite/Programming_with_the_Colour_Maximite_2.pdf', '12', 10, 1),
(22, 'MM Edit', '4', '2021-02-16 11:20:43', 14, 'MMEdit_20210216121818.JPG', 'A Windows editor for the Maximite and MicroMite', 'MMEdit was created to simplify writing applications for the Maximite computer.\r\nThe first versions of MM Basic required line numbers, something that I was happy to leave behind when working on my PC!\r\nSince MM Basic version 3.0, line numbers are no longer required and it has a full screen editor, so the original reason for creating MM Edit has diminished.\r\n\r\nBeing able to write code on your PC and easily transfer the files between the PC and Maximite is still a good reason for using MM Edit.\r\n\r\nSince version 3.5.17, MMEdit can use TeraTerm as the VT100 terminal. TeraTerm is a far superior VT100 terminal than MMEdit''s built-in version.\r\n\r\nVersion 3.6.0 added support for the Micromite Plus.\r\nVersion 3.7.0 added support for the Micromite eXtreme.\r\nVersion 4.0 added support for the new Colour Maximite 2.\r\n\r\n', 'https://www.c-com.com.au/MMedit.htm', '13', 9, 1),
(23, 'MMBasic Online Manual', '', '2021-02-16 11:25:03', 14, 'MMBasicOnline_20210216122442.JPG', 'Covers all variants of MMBasic in one integrated online lookup tool', 'This MMBasic syntax help system is based heavily on the MMBasic user manuals.\r\nIt is intended as a quick reference only and not a tutorial on programming with MMBasic.\r\nWith MMBasic it is easy to write a one or two line program to test a command and that is the preferred way of learning (by doing).', 'https://www.c-com.com.au/mmhelp/', '12', 11, 1),
(24, 'Graphics Programming on the CMM2', '3f', '2021-04-06 07:40:43', 15, 'GraphicsProgramming_20210216123658.JPG', 'A detailed tutorial on the graphics capabilities of the Color Maximite 2.', 'This is a compilation of the threads posted by Peter Mather as a background and deeper explanation of the graphics\ncapabilities of the CMM2. I have taken the liberty (with Peters OK), to post them on the forum with some additional\ncomments and explanations of recent developments in the hope that they will assist others in realising the full potential\nof the CMM2.\n', 'https://www.thebackshed.com/forum/uploads/panky/2021-04-05_114624_Graphics%20Programming%20on%20the%20CMM2-v3f.pdf', '6,12', 9, 1),
(25, 'Max-E-Man', '0.71', '2021-02-16 12:17:51', 16, 'MaxEman_20210216164325.png', 'Near arcade perfect Pac-Man clone', '', 'http://www.thebackshed.com/forum/uploads/realmnm/2020-08-19_210059_Max-E-Man.zip', '3', 17, 1),
(26, 'GoMoku', '', '2021-02-16 12:18:01', 17, 'GoMoku_20210219134815.png', '', '', 'http://www.thebackshed.com/forum/uploads/fiziwig/2020-08-01_015949_GoMoku.zip', '3', 6, 1),
(27, 'Space invaders', '', '2021-02-16 12:23:02', 18, 'Invanders_20210317202004.png', '', 'Rough conversion (by Capsikin) of a version of Space Invaders written for the original Maximite (by Fabrice Muller). The zip file contains multiple versions and it is in need of some TLC.', 'https://www.thebackshed.com/forum/uploads/capsikin/2020-08-15_141705_invaders.zip', '3', 6, 1),
(28, 'PSGmini', 'v0.3a', '2021-02-16 12:27:11', 4, 'PSGmini_20210216132651.JPG', 'SN76489 / NES 2A03 Simulator and VGM Player', 'This is not an emulator and is far from perfect. \nIt''s only a little include file for MMBasic and Colour Maximite 2 that play VGM files for SN76489 chips and with some limitations, for the NES 2A03.\n\n(USE LAST BETA FIRMWARE FOR THE CMM2 TO USE THIS)\n', 'https://github.com/mauroxavierneto/psgmini_cmm2', '4', 9, 1),
(29, 'Chiptune Drumsynth', 'v10', '2021-02-16 12:55:40', 19, 'ChiptuneDrumsynth_20210216135303.JPG', '16 Step drum Sequencer', 'I have programmed a small Chiptune Drumsynth.\r\n\r\nYou can programm 4 Channels (Basedrum, Snaredrum, Hihats, and ADditional Sound)\r\non 16 Steps. You can randomize the patterns and you can change volume on each step.\r\nyou can even temporarly store one pattern.', 'https://www.thebackshed.com/forum/uploads/TweakerRay/2020-09-23_043528_Drummachine%20V10.zip', '4', 16, 1),
(30, 'Heart Attack', '', '2021-02-16 12:55:44', 19, 'HeartAttack_20210317201820.png', '', 'Original game with simple graphics. Notable for its outstanding original mp3 soundtrack by the author TweakerRay on its title screen.', 'https://www.thebackshed.com/forum/uploads/TweakerRay/2020-10-17_084015_Heart%20Attack%20(by%20TweakerRay)_v1-2%20with%20controller%20support.zip', '3', 6, 1),
(31, 'Heli-Blaster', '1.0.0', '2021-02-16 15:55:16', 10, 'heliblaster_20210216151423.png', 'Multi-directional scrolling helicopter shoot-em-up', 'Fly a helicopter around a 10,000x10,000 pixel map wreaking destruction on an enemy base.\n\nMore details at <a target="_blank" href=https://www.thebackshed.com/forum/ViewTopic.php?TID=12952>TBS</a>', 'https://www.thebackshed.com/forum/uploads/PeteCotton/2020-10-17_112118_heliblast.zip', '3', 18, 1),
(32, 'Space Trek', '0.1', '2021-02-18 09:41:51', 20, 'spacetrek-splash_20210217234101.jpg', '', 'Similar to the classic Star-Trek game but more graphical in nature.  This is still in development, though I''m busy with other things at the moment, but you can go around blasting enemies and resupplying at the supply pods.', 'https://github.com/yignoth/CMM2-SpaceTrek', '3', 8, 1),
(33, 'xFind', '0.1', '2021-02-20 19:15:03', 7, '', 'String Find across Files', 'xFind finds all occurrences of a given text string across files specified by a filespec or directory.', 'https://github.com/epsilon537/xFind_cmm2', '5', 8, 1),
(34, 'MAR', '0.4', '2021-02-20 19:15:31', 7, '', 'Archiving Tool', 'On CMM2, mar.bas allows you to roll up and optionally compress a directory tree into a single file archive, and vice versa.\r\nmar.py is an equivalent Python implementation intended for running on Windows, MacOSX or Linux. This allows you to create your archive on a host machine,\r\ntransfer it over to CMM2 and unpack it there, and vice versa.', 'https://github.com/epsilon537/mar_cmm2', '5', 8, 1),
(35, '3D case', '', '2021-02-27 11:25:32', 21, 'PrintedCases_20210227124330.jpg', 'Nice Retromax case', 'Front ports for: audio jack, Micro SD card, power button, reset button, power LED, SD card LED, user LED.<br>\r\nRear ports for: VGA, USB-B, USB-A, 2 Wii Nunchuck ports.<br>\r\nSnaps together.<br>\r\nBoard can be mounted using M2 x 12 mm screws and nuts. Printable washers included.<br>\r\nPrintable buttons for power and reset buttons.<br>\r\nNO SUPPORTS REQUIRED!<br>\r\nThis version does not have a port on top for the header pins. A future version is planned with the option of a removable port cover.<br>', 'https://www.thingiverse.com/thing:4771521', '14', 11, 1),
(36, 'Dragonfly Game Engine', '0.1', '2021-03-27 03:16:40', 7, 'intro_20210326184115.jpg', 'A Text-Based Game Engine', 'Dragonfly is a text-based game engine, primarily designed to teach about game engine development.\nMark Claypool wrote a free book that teaches how to program a game engine from scratch.\nFor more info, see the Dragonfly website \n\n<a href="https://dragonfly.wpi.edu" target="_blank">dragonfly.wpi.edu</a>.\n\n<br>This is a CMM2 MMBasic port of the Dragonfly Game Engine. Dragonfly as documented on the website\nand book, is a C++ Object Oriented Design. The CMM2 version, although written in MMBasic, has\nretained most of the Object Oriented Design, with some compromises for the sake of performance.', 'https://github.com/epsilon537/df_cmm2', '3,5', 7, 1),
(37, 'MaxiCalc', '0.06', '2021-03-27 21:51:02', 5, 'MaxiCalc_20210327225036.png', 'Spreadsheet Calculator', 'Like Visicalc from 40 odd years ago, now your CMM2 too can enjoy a 63 column wide and 255 row high field of calculations. Built-in MMBasic functions should work in your equations.', 'https://www.thebackshed.com/forum/uploads/vegipete/2021-01-05_110222_MaxiCalc-v06.zip', '10', 8, 1),
(38, 'rexec', '0.1', '2021-03-31 14:52:07', 7, '', 'Remote command execution on host from CMM2', 'REXEC allows you to remotely execute commands on an attached host machine from the CMM2 command line. It uses <b>rexec.py</b> server on host (Python3 needed) and <b>Xmodem</b> for data transfer (correct for filesize, so you don''t end up with those pesky trailing bytes at the end of a transfered file).', 'https://github.com/epsilon537/rexec_cmm2', '5,9,13', 6, 1),
(39, 'Tower of Hanoi', '(One-screen version)', '2021-04-18 10:30:07', 2, 'TowerOfHanoi_20210418115537.jpg', 'Logical game', 'This game was made for CMM1&2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)<p>You have just one task: move all discs from pillar 1 to pillar 3 with the help of pillar 2.<br>There is just one rule, you can''t put a bigger disc onto a smaller one.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/jirsoft', '3,15', 1, 1),
(40, 'Escape to the Green Hills', '(One-screen version)', '2021-04-18 10:30:06', 5, 'EscapeToTheGreenHills_20210418160207.jpg', '3D maze game', 'This game won the 3rd place in CMM1&2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)<p>\nThe alien command pyramid is hovering just above the ground. Your job is to navigate the maze like pyramid and find and activate the self-destruct device. Others have tried before you but apparently without success. We hope someone has left a message for you. As far as we know, all levels except the smallest one near the top, where we can infiltrate you, have an item of interest. But beware! Some of those items are likely to be aliens, greenish blobs according to reports. Destroy the pyramid to save the green hills, and hopefully escape out of the lowest level to tell the tale.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/vegipete', '3,15', 2, 1),
(41, 'Hope Robot', '(One-screen version)', '2021-04-18 10:30:05', 4, 'HopeRobot_20210418155238.jpg', 'Action game', 'This game won the 1st place in CMM1&2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)<p>You are a testing prototype nanomachine called HOPE ROBOT, which is the last hope of humanity to extinguish virus plague that spread to all the world.<br>Navigate inside human bodies and save patients in this nano adventure for your Colour Maximite 2.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/mauro-xavier', '3,15', 2, 1),
(42, 'Chemi Chaos (Redux)', '(One-screen version)', '2021-04-18 10:30:04', 22, 'ChemiChaosRedux_20210418154905.jpg', 'Logical game', 'This game was made for CMM1&2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)<p>The object is to sort the vials so that all balls of the same color are in the same vial. There are 10 rounds to play.<br>\n(Derived with permission from the original ChemiChaos game by @vegipete.)', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/lizby', '3,15', 1, 1),
(43, 'Gravity Assist', '(One-screen version)', '2021-04-18 10:30:03', 23, 'GravityAssist_20210418160015.jpg', 'Action game', 'This game won the 2nd place in CMM1&2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)<p>The spaceship is stranded with only enough fuel for one last short engine burn; help it get back to the space station by selecting the correct angle using the left & right cursor keys then pressing [Enter] to ignite the engine, using the gravity of the surrounding planets to get it home. Watch out for the black hole â€“ itâ€™s barely visible but has a very strong gravitational field!<br>There are 30 levels, and each level has only one solution. At the beginning of the game, you can skip to a later level by entering the appropriate 4-letter code â€“ otherwise, just press [Enter] to start at level 1.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/timd', '3,15', 1, 1),
(44, 'Iceberg', '(One-screen version)', '2021-04-18 10:30:02', 24, 'Iceberg_20210418155812.jpg', 'Action game', 'This game was made for CMM1&2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)<p>In February 2021 a giant tabular iceberg named A-48 calved from Antarcticaâ€™s Larsen C ice shelf and started to drift to open waters. You are member of an expedition intended to sample the marine life at the A-48 cleavage line and therefore entered the the gap between the iceberg and the main shelf on an agile but fragile little speedboat. You are far too busy with your research to notice the motion of the iceberg changed with it now drifting back to the shelf, closing the gap at alarming speed. When you realize the danger, you propel your boats engines to highspeed, desperately trying to escape the fate of being crushed between gigatons of floating ice. How far can you get?', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/realbobele', '3,15', 0, 1),
(45, 'Resistors', '(One-screen version)', '2021-04-18 10:30:01', 25, 'Resistors_20210418155538.jpg', 'Color bands to resistor value', 'This program was made for CMM1&2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)<p>The marked tolerance value on resistors is only a guide. In actual fact, resistors are selected on test for their tolerance after manufacture. It''s unlikely that you''ll find, say, a 5% resistor that''s within 1% of it''s marked value as those will have already been removed and sold as 1% resistors. Because of this, a resistor actually has two likely value bands, one above it''s marked value and one below.<br>The enclosed program attempts to show these value bands, with a graphical interface to set the value of the resistor. Simply move the band indicating pointer using the B and N keys and press a key 0-9, S or G (silver or gold) to set the band colour. The value information at the right hand side is updated automatically.<br>The tolerance band will also show the more unusual closer tolerances that are available, although only 1%, 5% and 10% are calculated here. Many old resistors are 20% tolerance but this band hasn''t been shown as it''s unlikely to be of much interest now.<br>The program illustrates quite nicely how unlikely it is that you''ll find a resistor that is exactly it''s marked value.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/mixtel90', '11,15', 1, 1),
(46, 'Ten Line Sokoban', '(One-screen version)', '2021-04-18 10:30:00', 26, 'TenLinesSokoban_20210418160430.jpg', 'Logical game', 'This program was made for CMM1&2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)<p>Use your man to push the green boxes onto the yellow crosses. You can only push the boxes, not pull them. There are 20 levels. The level is shown in the left top corner.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/volhout', '3,15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(200) NOT NULL,
  `contact` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author_4` (`author`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `author` (`author`),
  KEY `author_2` (`author`),
  KEY `author_3` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author`, `contact`) VALUES
(1, 'Unknown author', NULL),
(2, 'JirSoft', 'https://github.com/jirsoft'),
(3, 'John "Jay" Crutti (frnno967)', 'https://github.com/frnno967'),
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
(15, 'Doug Pankhurst (panky)', ''),
(16, 'Martin Scragg (realmnm)', NULL),
(17, 'Gary Shannon (fiziwig)', NULL),
(18, 'Caspian (capsikin)', NULL),
(19, 'Ray (TweakerRay)', 'http://tweakerray.bandcamp.com/'),
(20, 'John DiFelici (johnd)', 'https://github.com/yignoth'),
(21, 'Jonathan Wright (Neino)', ''),
(22, 'Lance Benson (lizby)', ''),
(23, 'Tim Dorrington (TimD)', ''),
(24, 'Boris (realbobele)', ''),
(25, 'Mick (Mixtel90)', 'https://nascom.wordpress.com/about/'),
(26, 'Harm (Volhout)', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(10, 'business'),
(15, 'challenges'),
(9, 'comm'),
(2, 'demo'),
(12, 'docs'),
(11, 'electro'),
(3, 'game'),
(1, 'general'),
(6, 'graphics'),
(14, 'hardware'),
(13, 'mac-pc'),
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
  `new_author` varchar(200) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(200) CHARACTER SET utf8 NOT NULL,
  `scr_path` varchar(200) CHARACTER SET utf8 NOT NULL,
  `subtitle` varchar(200) CHARACTER SET utf8 NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `link` varchar(200) CHARACTER SET utf8 NOT NULL,
  `category` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=131 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
