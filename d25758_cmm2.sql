-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: wm135.wedos.net:3306
-- Generation Time: May 16, 2021 at 05:53 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `title`, `version`, `changed`, `author`, `scr_path`, `subtitle`, `description`, `link`, `category`, `rating`, `enabled`) VALUES
(1, 'Napoleon Commander', '1.26', '2021-04-18 14:06:13', 2, 'Napoleon_Commander_20210418164955.jpg', 'File explorer similar to ancient Norton, Volkov and other commanders on DOS', 'File and directory operations on local SD card and from/to server (serial port or ESP8266/32 over Wifi with help of Python server, full support of [URL=https://sklep.pslabs.pl/Colour-Maximite-2-Deluxe-Edition-USB-Host-Contr-WiFi-p150]CMM2 DeLuxe Edition[/URL])<br>Operations like copy, move, rename, delete, search... <br>Data viewers (TEXT, BASIC, HEX, SPRITE, IMAGE - also some C64, ZX Spectrum and Atari ST formats), simple HEX editor\n<br>Archive and compress', 'https://github.com/jirsoft/NC', '5,9,13', 30, 1),
(2, 'SimplEd', '0.38', '2021-02-08 23:03:04', 2, 'SimplEd_20210418165714.jpg', 'Font editor for fonts used by PRINT and TEXT commands.', 'Font editor for CMM2 fonts (created fonts can be used in MMBasic''s PRINT and TEXT commands). Operations like edit, rotate, shift, inverse, fill... Import from BAS, INC and FNT files, font can be also scanned from any image, HT and PS/2 mouse support.', 'https://github.com/jirsoft/SimplEd', '5,6', 29, 1),
(3, 'Maxiterm', '1.9.5', '2021-04-12 08:00:00', 3, 'Maxiterm_20210206220604.jpg', 'Communications terminal program for enabling the CMM2 to exchange data with other computer systems, via built-in COM ports.', 'Xmodem File transfer (with CMM2 firmware 5.06 or higher), selectable font colors (White, Amber, Green) matching famous vintage terminals, autodialer phone book, ASCII monochrome text rendering, retro terminal sound effects, configurable TTL/RS-232 COM port speeds', 'https://github.com/frnno967/maxiterm', '9', 21, 1),
(4, 'DemoX', '0.9b', '2021-04-23 17:10:28', 4, 'DemoX_20210206220542.jpg', 'This is the first Demoscene for the Colour Maximite 2', 'This demo shows, what can be done with CMM2 after such short time...', 'https://github.com/mauroxavierneto/demox_cmm2', '2', 33, 1),
(5, 'Wolfstein 3D', '0.7a', '2021-02-06 21:09:29', 4, 'Wolfstein_3D_20210206220624.jpg', 'Wolfenstein 3D version from scratch', 'Wolfenstein 3D version made from scratch for Colour Maximite 2 (work in progress). <br>Warning: Contains blood and images that may be disturbing to a sensitive audience (swastika).', 'https://github.com/mauroxavierneto/wolf3d_cmm2', '3', 26, 1),
(6, 'Gauntlet', '0.4a', '2021-02-06 21:09:13', 4, 'Gauntlet_20210206220553.jpg', 'Gauntlet port for the Colour Maximite 2', 'This is a version of Gauntlet to Colour Maximite 2. I don''t own any rights about Gauntlet trademark, this is only a homebrew project made by me in my free time, and for sure in the current state, it has lots of bugs. Keep in mind I''m only a Gauntlet fan with some basic developing skills and my target is only to challenge myself to port it to CMM2, it''s not a project with profit intentions.', 'https://github.com/mauroxavierneto/gauntlet_cmm2', '3', 29, 1),
(7, 'Chemical Chaos', '1.3', '2021-02-08 23:02:50', 5, 'Chemical_Chaos_20210206220453.png', 'Addictive logical game', 'There is chaos and confusion all through the chemistry lab! The chemicals have been mixed and mingled. Your task is to combat the chaos and restore order by sorting the chemicals. Move the coloured balls one by one until each test tube contains a single colour. However, you can not drop a ball on a different coloured one!<br>\nRuns on the Colour Maximite 2 and uses the keyboard or a mouse.', 'http://multimite.strongedge.net/downloads/ChemiChaos-v13.zip', '3', 26, 1),
(8, 'Z-MIM', 'r3', '2021-02-11 11:22:16', 6, 'Z-MIM_20210211122216.png', 'Play Zork on the Colour Maximite 2', 'Z-MIM is a Z-machine interpreter allowing the classic Infocom works of interactive fiction to be played on the Colour Maximite 2.\n\nThis version is limited to files in the .z3 format but all the early classics are available in that format: Ballyhoo, Cuthroats, Enchanter, Hollywood Hijinx, Leather Goddesses of Phobos, The Lurking Horror, Planetfall, Plundered Hearts, Seastalker, Sorcerer, Spellbreaker, Wishbringer, Infidel and of course Zork I-III.', 'https://github.com/thwill1000/zmim', '3', 18, 1),
(9, 'HexEdit', '0.6', '2021-02-05 12:04:13', 7, 'HexEdit_20210227232618.jpg', 'Binary File Editor for Color Maximite 2', ' HexEdit allows you to edit binary files, i.e. files that you can''t edit with a regular text editor such as the built-in editor.  The file''s contents are shown as hexadecimal byte values and as ASCII code in two side-by-side blocks. Changes can be made both in the hex table section and in the ASCII section.  The usual file navigation with cursors keys, page up&down, home, end, etc. should work as expected.  Hexedit is a full-screen console-only editor. I does not work over serial, sorry.  The file to edit can be passed in as a command line argument.  Press F1 to get help on key bindings.', 'https://github.com/epsilon537/hexedit_cmm', '5', 16, 1),
(10, 'MemEdit', '0.2', '2021-02-05 12:04:06', 7, '', 'Memory Editor for Color Maximite 2', 'MemEdit presents you with a view into CMM2''s (virtual) memory and allows you to make changes. Essentially, it''s a peek/poke front-end.  The memory contents are shown as hexadecimal byte values and as ASCII code in two side-by-side blocks. Changes can be made both in the hex table section and in the ASCII section.  The usual file navigation with cursors keys, page up&down, home, end, etc. should work as expected.  MemEdit is a full-screen console-only editor. I does not work over serial, sorry.  The starting address to view can be passed in as a command line argument, e.g. *memedit MM.INFO(PROGRAM)  Commands such as goto and fill accept MMBasic syntax for address specifications, e.g. Go To Address (MMBasic syntax): MM.INFO(PAGE ADDRESS 0)  Press F1 to get help on key bindings.', 'https://github.com/epsilon537/memedit_cmm', '5', 15, 1),
(11, 'XEdit', '0.10', '2021-04-24 09:02:38', 7, 'XEdit_20210315115431.jpg', 'XEdit Text Editor for Color Maximite 2', 'XEdit is a text editor written in MMBasic. The editor supports up to two windows (Hsplit/Vsplit or no split) and up to two buffers (files). The two buffers can be freely assigned to  windows and two windows can present separate views into a single buffer. XEdit supports undo, macro recording, MMBasic syntax highlighting as well as the usual  complement of editor operations: cut/copy/paste, find/replace, indent/unident selections,  insert/overwrite mode, goto line.', 'https://github.com/epsilon537/xedit_cmm2', '1,5', 24, 1),
(12, 'Wurmli', '1.0', '2021-02-14 14:46:18', 8, 'Wurmli_20210214154618.gif', 'A snake game for the CMM2', '', 'https://github.com/NautilusDE/Wurmli', '3', 21, 1),
(13, 'MasterMind', '0.01', '2021-02-14 19:23:24', 2, 'MasterMind_20210214201326.jpg', 'Simple logic game from childhood', 'On the game begin computer randomly selects N colours from MAX count and store this as secret row. Task for player is to guess correct row with placing own choices in every round. On the round end, computer tells with GREENs points how many colors are on right places and with REDs how many are correct colour in wrong place. This should help the player in next row. You can adjust the game difficulty to match yours skill...', 'https://github.com/jirsoft/MasterMind', '3', 16, 1),
(14, 'CMM2 Welcome Tape', 'Release 1.0.0', '2021-02-14 21:29:36', 11, 'CMM2_Welcome_Tape_20210215175647.png', 'First program to run on CMM2', 'An introductory collection of programs for the Colour Maximite 2 in the vein of the Sinclair Spectrum "Horizons" tape, BBC Micro "Welcome" tape/disk and Apple II.\n\nCreated as a collaborative effort by the denziens of "The Back Shed" and curated by Tom Williams "thwill".', 'https://github.com/thwill1000/cmm2-welcome', '1,2', 19, 1),
(15, 'FalFus2', 'r4', '2021-02-14 21:49:40', 5, 'FalFus2_20210214223426.png', 'Logic puzzle game', 'Slide matching tiles together to make them vanish.<br>Decades ago, I wrote a logic puzzle game for my Apple //gs with a Second Sight VGA card. Falfus was based on the game Puzznic. The goal was to clear each level by sliding matching tiles together. Two or more of the same tile touching along any edge would fuse and vanish with a pop. The player can slide tiles sideways only, and tiles fall when unsupported. After some fun extracting files from my Apple //gs, here it is, ported to the Colour Maximite 2. Uses a Nunchuk if found or the keyboard.', 'http://multimite.strongedge.net/downloads/FalFus2-r4.zip', '3', 17, 1),
(16, 'Flappy Bird', '', '2021-02-14 21:52:20', 9, 'Flappy_Bird_20210217193920.png', 'Arcade style game', '', 'https://www.thebackshed.com/forum/uploads/jeff510/2020-07-19_172139_FLAPPY_BIRD.zip', '3', 18, 1),
(17, 'Guardian', '', '2021-02-14 21:53:28', 10, 'Guardian_20210214224158.jpg', 'Defender clone', '', 'https://github.com/thwill1000/cmm2-welcome/tree/master/games/guardian', '3', 17, 1),
(18, 'Tank versus UFO', '1.0', '2021-02-15 15:47:46', 12, 'Tank_versus_UFO_20210215164746.png', 'Simple ASCII graphics game', 'Shoot UFOs with your tank but beware of their bombs!', 'https://www.thebackshed.com/forum/uploads/Schlowski/2021-02-17_070307_TanksVersusUFOs.zip', '3', 13, 1),
(19, 'Crate Away', '1.5', '2021-02-15 23:44:12', 5, 'Crate_Away_20210215125851.png', 'Addictive logical game', 'Feeling pushy? Get to work and push crates away to position them correctly. Just watch out, because you cannot pull them back.<br>This program is a CMM2 version of the classic Sokoban. Use the arrow keys to move the player around the level. Advance to the next level by pushing each crate to a target square.<br>The program recognizes standard formatted level files so you can find thousands more levels on the internet from sites such as <a href=https://www.sourcecode.se/sokoban target="_blank">this</a>.', 'http://multimite.strongedge.net/downloads/CrateAway15-vp.zip', '3', 18, 1),
(20, 'CMM2 User Manual', 'v5.06.00', '2021-02-16 10:25:40', 13, 'CMM2_User_Manual_20210216112442.JPG', 'Most important guide for any CMM2 owner', 'This is USER GUIDE for last official firmware for CMM2.', 'https://geoffg.net/Downloads/Maximite/Colour_Maximite_2_User_Manual.pdf', '12', 25, 1),
(21, 'Programming with the Colour Maximite 2', '', '2021-02-16 11:10:01', 13, 'Programming_with_the_Colour_Maximite_2_20210216120921.JPG', 'Introduction to CMM2 programming', 'A tutorial covering the Colour Maximite 2 and programming in the BASIC language.', 'https://geoffg.net/Downloads/Maximite/Programming_with_the_Colour_Maximite_2.pdf', '12', 15, 1),
(22, 'MM Edit', '4.1.4', '2021-05-16 11:43:32', 14, 'MM_Edit_20210216121818.JPG', 'A Windows editor for the Maximite and MicroMite', 'MMEdit was created to simplify writing applications for the Maximite computer.\r<br>The first versions of MM Basic required line numbers, something that I was happy to leave behind when working on my PC!\r<br>Since MM Basic version 3.0, line numbers are no longer required and it has a full screen editor, so the original reason for creating MM Edit has diminished.\r<br>\r<br>Being able to write code on your PC and easily transfer the files between the PC and Maximite is still a good reason for using MM Edit.\r<br>\r<br>Since version 3.5.17, MMEdit can use TeraTerm as the VT100 terminal. TeraTerm is a far superior VT100 terminal than MMEdit&#039;s built-in version.\r<br>\r<br>Version 3.6.0 added support for the Micromite Plus.\r<br>Version 3.7.0 added support for the Micromite eXtreme.\r<br>Version 4.0 added support for the new Colour Maximite 2.\r<br>', 'https://www.c-com.com.au/MMedit.htm', '13', 15, 1),
(23, 'MMBasic Online Manual', '', '2021-02-16 11:25:03', 14, 'MMBasic_Online_Manual_20210216122442.JPG', 'Covers all variants of MMBasic in one integrated online lookup tool', 'This MMBasic syntax help system is based heavily on the MMBasic user manuals.\r\nIt is intended as a quick reference only and not a tutorial on programming with MMBasic.\r\nWith MMBasic it is easy to write a one or two line program to test a command and that is the preferred way of learning (by doing).', 'https://www.c-com.com.au/mmhelp/', '12', 17, 1),
(24, 'Graphics Programming on the CMM2', '3f', '2021-04-06 07:40:43', 15, 'Graphics_Programming_on_the_CMM2_20210216123658.JPG', 'A detailed tutorial on the graphics capabilities of the Color Maximite 2.', 'This is a compilation of the threads posted by Peter Mather as a background and deeper explanation of the graphics\ncapabilities of the CMM2. I have taken the liberty (with Peters OK), to post them on the forum with some additional\ncomments and explanations of recent developments in the hope that they will assist others in realising the full potential\nof the CMM2.\n', 'https://www.thebackshed.com/forum/uploads/panky/2021-04-05_114624_Graphics%20Programming%20on%20the%20CMM2-v3f.pdf', '6,12', 21, 1),
(25, 'Max-E-Man', '0.71', '2021-02-16 12:17:51', 16, 'Max-E-Man_20210216164325.png', 'Near arcade perfect Pac-Man clone', '', 'http://www.thebackshed.com/forum/uploads/realmnm/2020-08-19_210059_Max-E-Man.zip', '3', 26, 1),
(26, 'GoMoku', '', '2021-02-16 12:18:01', 17, 'GoMoku_20210219134815.png', 'Five in a Row game', '', 'http://www.thebackshed.com/forum/uploads/fiziwig/2020-08-01_015949_GoMoku.zip', '3', 14, 1),
(27, 'Space invaders', '', '2021-02-16 12:23:02', 18, 'Space_invaders_20210317202004.png', 'Well known game', 'Rough conversion (by Capsikin) of a version of Space Invaders written for the original Maximite (by Fabrice Muller). The zip file contains multiple versions and it is in need of some TLC.', 'https://www.thebackshed.com/forum/uploads/capsikin/2020-08-15_141705_invaders.zip', '3', 12, 1),
(28, 'PSGmini', 'v0.3a', '2021-02-16 12:27:11', 4, 'PSGmini_20210216132651.JPG', 'SN76489 / NES 2A03 Simulator and VGM Player', 'This is not an emulator and is far from perfect. \nIt''s only a little include file for MMBasic and Colour Maximite 2 that play VGM files for SN76489 chips and with some limitations, for the NES 2A03.\n\n(USE LAST BETA FIRMWARE FOR THE CMM2 TO USE THIS)\n', 'https://github.com/mauroxavierneto/psgmini_cmm2', '4', 16, 1),
(29, 'Chiptune Drumsynth', 'v10', '2021-02-16 12:55:40', 19, 'Chiptune_Drumsynth_20210216135303.JPG', '16 Step drum Sequencer', 'I have programmed a small Chiptune Drumsynth.\r\n\r\nYou can programm 4 Channels (Basedrum, Snaredrum, Hihats, and ADditional Sound)\r\non 16 Steps. You can randomize the patterns and you can change volume on each step.\r\nyou can even temporarly store one pattern.', 'https://www.thebackshed.com/forum/uploads/TweakerRay/2020-09-23_043528_Drummachine%20V10.zip', '4', 26, 1),
(30, 'Heart Attack', '', '2021-02-16 12:55:44', 19, 'Heart_Attack_20210317201820.png', 'Original game', 'Original game with simple graphics. Notable for its outstanding original mp3 soundtrack by the author TweakerRay on its title screen.', 'https://www.thebackshed.com/forum/uploads/TweakerRay/2020-10-17_084015_Heart%20Attack%20(by%20TweakerRay)_v1-2%20with%20controller%20support.zip', '3', 13, 1),
(31, 'Heli-Blaster', '1.0.0', '2021-02-16 15:55:16', 10, 'Heli-Blaster_20210216151423.png', 'Multi-directional scrolling helicopter shoot-em-up', 'Fly a helicopter around a 10,000x10,000 pixel map wreaking destruction on an enemy base.\n\nMore details at <a target="_blank" href=https://www.thebackshed.com/forum/ViewTopic.php?TID=12952>TBS</a>', 'https://www.thebackshed.com/forum/uploads/PeteCotton/2020-10-17_112118_heliblast.zip', '3', 28, 1),
(32, 'Space Trek', '0.1', '2021-02-18 09:41:51', 20, 'Space_Trek_20210217234101.jpg', 'Star Trek clone', 'Similar to the classic Star-Trek game but more graphical in nature.  This is still in development, though I''m busy with other things at the moment, but you can go around blasting enemies and resupplying at the supply pods.', 'https://github.com/yignoth/CMM2-SpaceTrek', '3', 16, 1),
(33, 'xFind', '0.2', '2021-04-23 19:43:59', 7, 'Shell.jpg', 'String Find across Files', 'xFind finds all occurrences of a given text string across files specified by a filespec or directory.', 'https://github.com/epsilon537/xFind_cmm2', '5', 18, 1),
(34, 'MAR', '0.4', '2021-02-20 19:15:31', 7, 'Shell.jpg', 'Archiving Tool', 'On CMM2, mar.bas allows you to roll up and optionally compress a directory tree into a single file archive, and vice versa.\r\nmar.py is an equivalent Python implementation intended for running on Windows, MacOSX or Linux. This allows you to create your archive on a host machine,\r\ntransfer it over to CMM2 and unpack it there, and vice versa.', 'https://github.com/epsilon537/mar_cmm2', '5', 14, 1),
(35, '3D case', '', '2021-02-27 11:25:32', 21, '3D_case_20210227124330.jpg', 'Nice Retromax case', 'Front ports for: audio jack, Micro SD card, power button, reset button, power LED, SD card LED, user LED.<br>\r\nRear ports for: VGA, USB-B, USB-A, 2 Wii Nunchuck ports.<br>\r\nSnaps together.<br>\r\nBoard can be mounted using M2 x 12 mm screws and nuts. Printable washers included.<br>\r\nPrintable buttons for power and reset buttons.<br>\r\nNO SUPPORTS REQUIRED!<br>\r\nThis version does not have a port on top for the header pins. A future version is planned with the option of a removable port cover.<br>', 'https://www.thingiverse.com/thing:4771521', '14', 19, 1),
(36, 'Dragonfly Game Engine', '0.1', '2021-03-27 03:16:40', 7, 'Dragonfly_Game_Engine_20210326184115.jpg', 'A Text-Based Game Engine', 'Dragonfly is a text-based game engine, primarily designed to teach about game engine development.\nMark Claypool wrote a free book that teaches how to program a game engine from scratch.\nFor more info, see the  [URL=https://dragonfly.wpi.edu]Dragonfly website[/URL].\n\n<br>This is a CMM2 MMBasic port of the Dragonfly Game Engine. Dragonfly as documented on the website\nand book, is a C++ Object Oriented Design. The CMM2 version, although written in MMBasic, has\nretained most of the Object Oriented Design, with some compromises for the sake of performance.', 'https://github.com/epsilon537/df_cmm2', '3,5', 16, 1),
(37, 'MaxiCalc', '0.06', '2021-03-27 21:51:02', 5, 'MaxiCalc_20210327225036.png', 'Spreadsheet Calculator', 'It''s not just about games, OK?<br>Over 40 years ago, VisiCalc turned the Apple ][ computer into a valuable business tool. MaxiCalc won''t do the same with the CMM2 but you will be able to have some spreadsheet fun with this program. And the 1024x768 screen resolution will show you far more spreadsheet goodness in one view than the Apple ][ ever could.', 'http://multimite.strongedge.net/downloads/MaxiCalc-v06.zip', '10', 16, 1),
(38, 'rexec', '0.1', '2021-03-31 14:52:07', 7, 'Shell.jpg', 'Remote command execution on host from CMM2', 'REXEC allows you to remotely execute commands on an attached host machine from the CMM2 command line. It uses <b>rexec.py</b> server on host (Python3 needed) and <b>Xmodem</b> for data transfer (correct for filesize, so you don''t end up with those pesky trailing bytes at the end of a transfered file).', 'https://github.com/epsilon537/rexec_cmm2', '5,9,13', 18, 1),
(39, 'Tower of Hanoi', '(One-screen version)', '2021-04-23 17:07:00', 2, 'Tower_of_Hanoi_20210418115537.jpg', 'Logical game', 'This game was made for CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\n<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=372]HERE[/URL].\n<br>\n<br>You have just one task: move all discs from pillar 1 to pillar 3 with the help of pillar 2.\n<br>There is just one rule, you can&#039;t put a bigger disc onto a smaller one.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/jirsoft', '3,15', 16, 1),
(40, 'Escape to the Green Hills', '(One-screen version)', '2021-04-23 17:06:17', 5, 'Escape_to_the_Green_Hills_20210418160207.jpg', '3D maze game', 'This game won the 3rd place in CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\n<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=550]HERE[/URL].\n<br>\n<br>The alien command pyramid is hovering just above the ground. Your job is to navigate the maze like pyramid and find and activate the self-destruct device. Others have tried before you but apparently without success. We hope someone has left a message for you. As far as we know, all levels except the smallest one near the top, where we can infiltrate you, have an item of interest. But beware! Some of those items are likely to be aliens, greenish blobs according to reports. Destroy the pyramid to save the green hills, and hopefully escape out of the lowest level to tell the tale.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/vegipete', '3,15', 17, 1),
(41, 'Hope Robot', '(One-screen version)', '2021-05-16 15:19:05', 4, 'Hope_Robot_20210418155238.jpg', 'Action game', 'This game won the 1st place in CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\r<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=984]HERE[/URL].\r<br>\r<br>You are a testing prototype nanomachine called HOPE ROBOT, which is the last hope of humanity to extinguish virus plague that spread to all the world.\r<br>Navigate inside human bodies and save patients in this nano adventure for your Colour Maximite 2.\r<br>More can be seen in [URL=https://www.youtube.com/watch?v=epJiRJwBbX8&amp;t=142s]Mauro&#039;s video on YT[/URL].', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/mauro-xavier', '3,15', 15, 1),
(42, 'Chemi Chaos (Redux)', '(One-screen version)', '2021-04-23 17:05:44', 22, 'Chemi_Chaos_(Redux)_20210418154905.jpg', 'Logical game', 'This game was made for CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\n<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=85]HERE[/URL].\n<br>\n<br>The object is to sort the vials so that all balls of the same color are in the same vial. There are 10 rounds to play.\n<br>(Derived with permission from the original ChemiChaos game by @vegipete.)', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/lizby', '3,15', 14, 1),
(43, 'Gravity Assist', '(One-screen version)', '2021-04-23 17:06:29', 23, 'Gravity_Assist_20210418160015.jpg', 'Action game', 'This game won the 2nd place in CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\n<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=908]HERE[/URL].\n<br>\n<br>The spaceship is stranded with only enough fuel for one last short engine burn; help it get back to the space station by selecting the correct angle using the left &amp; right cursor keys then pressing [Enter] to ignite the engine, using the gravity of the surrounding planets to get it home. Watch out for the black hole â€“ itâ€™s barely visible but has a very strong gravitational field!\n<br>There are 30 levels, and each level has only one solution. At the beginning of the game, you can skip to a later level by entering the appropriate 4-letter code â€“ otherwise, just press [Enter] to start at level 1.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/timd', '3,15', 16, 1),
(44, 'Iceberg', '(One-screen version)', '2021-04-23 17:06:59', 24, 'Iceberg_20210418155812.jpg', 'Action game', 'This game was made for CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\n<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=182]HERE[/URL].\n<br>\n<br>In February 2021 a giant tabular iceberg named A-48 calved from Antarcticaâ€™s Larsen C ice shelf and started to drift to open waters. You are member of an expedition intended to sample the marine life at the A-48 cleavage line and therefore entered the the gap between the iceberg and the main shelf on an agile but fragile little speedboat. You are far too busy with your research to notice the motion of the iceberg changed with it now drifting back to the shelf, closing the gap at alarming speed. When you realize the danger, you propel your boats engines to highspeed, desperately trying to escape the fate of being crushed between gigatons of floating ice. How far can you get?', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/realbobele', '3,15', 14, 1),
(45, 'Resistors', '(One-screen version)', '2021-04-23 17:07:16', 25, 'Resistors_20210418155538.jpg', 'Color bands to resistor value', 'This program was made for CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\n<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=486]HERE[/URL].\n<br>\n<br>The marked tolerance value on resistors is only a guide. In actual fact, resistors are selected on test for their tolerance after manufacture. It&#039;s unlikely that you&#039;ll find, say, a 5% resistor that&#039;s within 1% of it&#039;s marked value as those will have already been removed and sold as 1% resistors. Because of this, a resistor actually has two likely value bands, one above it&#039;s marked value and one below.\n<br>The enclosed program attempts to show these value bands, with a graphical interface to set the value of the resistor. Simply move the band indicating pointer using the B and N keys and press a key 0-9, S or G (silver or gold) to set the band colour. The value information at the right hand side is updated automatically.\n<br>The tolerance band will also show the more unusual closer tolerances that are available, although only 1%, 5% and 10% are calculated here. Many old resistors are 20% tolerance but this band hasn&#039;t been shown as it&#039;s unlikely to be of much interest now.\n<br>The program illustrates quite nicely how unlikely it is that you&#039;ll find a resistor that is exactly it&#039;s marked value.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/mixtel90', '11,15', 13, 1),
(46, 'Ten Line Sokoban', '(One-screen version)', '2021-04-23 17:07:30', 26, 'Ten_Line_Sokoban_20210418160430.jpg', 'Logical game', 'This program was made for CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\n<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=266]HERE[/URL].\n<br>\n<br>Use your man to push the green boxes onto the yellow crosses. You can only push the boxes, not pull them. There are 20 levels. The level is shown in the left top corner.', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/volhout', '3,15', 15, 1),
(47, 'ThatDiceGame', '1', '2021-04-19 08:15:45', 27, 'ThatDiceGame_20210419001441.jpg', 'Many dice games', 'Common dice game, where players try to make poker hands from 3 rolls of the dice per turn. The ''impossible'' poker hand of 5 of a kind, earns the highest score, if you have a score slot to play it!', 'https://www.thebackshed.com/forum/uploads/yock1960/2021-01-13_115358_ThatDiceGame_8.zip', '3', 6, 1),
(48, '4 State Linear Automata', '1', '2021-04-19 08:15:51', 27, '4_State_Linear_Automata_20210419002742.jpg', 'Automata', 'A program to explore cellular automata, in this case, 4 state linear automata. A cousin to the well known ''Game of Life'', but with an initial state or generation as 1 line, that propagates linearly, down the screen. This program is the ''grandchild'' of a program written for the Commodore 64 and published in the magazine ''The Transactor'', back in the mid 1980''s.', 'https://www.thebackshed.com/forum/uploads/yock1960/2020-12-03_114726_automata_1.zip', '6,7', 9, 1),
(49, 'M~Berto', '0.8', '2021-04-19 08:17:35', 27, 'MBerto_20210419004528.jpg', 'Q*bert like game', 'A clone of a well known arcade game of the 1980''s. Gameplay is similar, but is not exact to the last detail. This is a work in progress and is the first ever arcade type game I''ve attempted.', 'https://www.thebackshed.com/forum/uploads/yock1960/2021-03-13_111728_m-berto_a.zip', '3', 5, 1),
(50, '15 Puzzle', '', '2021-04-21 20:28:59', 28, '15_Puzzle_20210421222427.jpeg', 'Logical game', 'Play eight variations of 15 Puzzle ranging from 3x3 to 10x10\r\ngrid sizes.  The object is to put the numbers in order from\r\nleft to right starting at the top left corner.\r\n', 'https://www.thebackshed.com/forum/uploads/vegipete/2021-04-22_172919_TileSlide.zip', '3', 6, 1),
(51, 'Battleship & Battleship+', '', '2021-04-22 15:06:57', 28, 'Battleship__Battleship+_20210422031824.jpeg', 'Classic game', 'Battleship.bas allows for horizontal and vertical placement of\r\nfive naval ships of length 2, 3, 3, 4, and 5.  The grid size\r\nis 10x10 and one plays against the computer.  The user can\r\nselect between two versions.  One version allows one guess per\r\nround.  The other is the Salvo version where one receives one\r\nguess per round for each ship they have that has not yet been\r\nsunk.  Control is via the keyboard.\r\nBattleship+.bas allows for diagonal, horizontal, and vertical\r\nplacement of either 5, 10, 15, 20, 25, or 30 ships of lengths\r\n2, 3, 3, 4, and 5.  The user chooses the grid size which can\r\nbe 10x10, 15x15, 20x20, or 25x25.  One plays against the computer.\r\nLike Battleship.bas, the user can select between the regular\r\nversion with one shot per round or the Salvo version.', 'https://www.thebackshed.com/forum/uploads/bar1010/2021-04-19_132314_Battleship.zip', '3', 6, 1),
(52, 'Cobo2', '', '2021-04-22 23:26:12', 5, 'Cobo2_20210423012553.png', 'Billiard like game', 'There Can Only Be One! Finish each level by knocking all but one ball from the field. However, balls cannot be tossed directly off the edge and at least one empty spot is required in the direction of travel.<br>Written for the original Colour Maximite in 2013, I updated this in 2020 for the new Colour Maximite 2 to take advantage of the improved screen resolution. Choose a numbered ball and fling it in the desired direction.', 'http://multimite.strongedge.net/downloads/COBO2.zip', '3', 5, 1),
(53, 'Boxes and dots', '0.41', '2021-04-22 23:29:10', 5, 'Boxes_and_dots_20210423012905.png', 'Pencil and paper game', 'Boxes and Dots, the classic pencil and paper game, written for your Colour Maximite 2 with a mouse. Compete against your computer to capture boxes. Take turns connecting adjacent dots together with lines. Players score a box whenever they close the fourth side. The winner is the first to capture more than half of the squares. ', 'http://multimite.strongedge.net/downloads/boxdot041.zip', '3', 6, 1),
(54, 'Lunar Lander 2', 'v0.73', '2021-04-22 23:38:21', 5, 'Lunar_Lander_2_20210423013914.png', 'Classic game', 'The lunar surface awaits. All you need to do is land. In one piece.<br>This game for the Colour Maximite 2 is a community effort by a number of members from [URL=https://www.thebackshed.com/forum/ViewForum.php?FID=16]The Back Shed Microcontroller Forum[/URL]. I quickly cobbled a version together in July, 2020. Others enjoyed it enough to add sound, improved graphics and an instrument panel. I added some more at the end, including an explosion with shrapnel for those lander pilots determined to leave a spectacular crater. Fun was had by all.', 'http://multimite.strongedge.net/downloads/LunarLander2v73.zip', '3', 7, 1),
(55, 'Green Hills Saga', '', '2021-04-22 23:56:59', 5, 'Green_Hills_Saga_20210423015641.jpg', 'Game trilogy', 'March, 2021 was the month of the (perhaps first) Maximite One Page Programming challenge. The essential rule was, create the most amazing program possible using just a single built-in editor page of source text. Loosely modeled after the long running BASIC 10-Liner Competition, a full editor page was chosen to enable the creation of really polished programs.<br>I quickly whipped up as close a clone as possible of the classic Space Invaders, which fit comfortably within the size limit of 48 lines of 100 characters in the CMM2 editor. For silliness, I chose the name In Defence of the Green Hills of Earth. I decided to keep going and created a Missile Command clone, titled In Renewed Defence of the Green Hills. But why stop there? For my piÃ¨ce de rÃ©sistance, I was able to compress an eight level 3-D maze program into a single page. Escape to the Green Hills was my actual contest entry and was worth third place! Awesome!', 'http://multimite.strongedge.net/downloads/greenhills3.zip', '3', 8, 1),
(56, 'Rocks in space', 'v0.1', '2021-04-23 00:00:58', 5, 'Rocks_in_space_20210423020053.png', 'A copy of Asteroids for the CMM2. What more is there to say? ', 'This program redraws the entire image every frame. The number on the bottom left is the time taken to draw the screen. The program is set to start a new redraw every 35 milliseconds. If the image frames start to take longer than this, then things could start to get laggy. It takes many many things on screen to get to this, a testament to just how fast the CMM2 BASIC interpreter runs.', 'http://multimite.strongedge.net/downloads/Rocks-in-Space-v010.zip', '3', 7, 1),
(57, 'Hangman', '', '2021-04-23 10:20:21', 28, 'Hangman_20210423084525.jpeg', 'Pencil and paper game', 'Hangman includes 15 DAT files ranging from 4,006 to 466,514 entries\nmostly based on dictionaries.  Most of these use United States English\nalthough there are files for Australian, Canadian, and British\nEnglish included.  Two other versions are included based\non Wheel of Fortune and Videogames.  There are four levels of difficulty.\nThe number of wins and losses are shown for both the session and all time.', 'https://www.thebackshed.com/forum/uploads/bar1010/2021-02-19_061636_Hangman.zip', '3,8', 9, 1),
(58, 'Spell & Speak', '', '2021-04-23 10:22:28', 28, 'Spell__Speak_20210423092351.jpeg', 'Electronic child computer adaptation', 'Spell & Speak is a spelling game using text to speech.  There are two versions included.  One features 8,000 spelling words while the other uses over 117,000 words from a collegiate dictionary.', 'https://github.com/bar1010/Color-Maximite-2/blob/master/Spell%20%26%20Speak.zip', '3,8', 8, 1),
(59, 'Poker Solitaire', '', '2021-04-23 10:25:45', 28, 'Poker_Solitaire_20210423093311.jpeg', 'Many poker solitaire games', 'Poker Solitaire and Double Deck Poker Solitaire â€” Each game keeps track of the one hundred top scores.  Two sizes of card decks are used and four other sized decks of cards are included.', 'https://www.thebackshed.com/forum/uploads/bar1010/2021-01-20_134103_Poker%20Solitaire.zip', '3', 6, 1),
(60, 'Math Quizes', '', '2021-04-23 10:27:57', 28, 'Math_Quizes_20210423093920.jpeg', 'As the name says...', 'Math Quiz features regular decimal (base 10) numbers.\nOther bases Math Quiz features hexadecimal, octal, and binary\n(base 16, base 8, and base 2) numbers.\nBoth programs have addition, subtraction, multiplication, and division\nwith 52 levels of difficulty.', 'https://www.thebackshed.com/forum/uploads/bar1010/2020-12-29_123357_BAR%20Math%20Quizes.zip', '3,8', 8, 1),
(61, 'Chess', '1.1', '2021-04-25 19:21:46', 28, 'Chess_20210423094908.jpeg', 'Classic chess game', 'This is an update for Chess.  Increased resolution from 800x600 to 1024x768.  Provided a different piece set.  Improved redrawing of screen process.  Also added three chess variants that are at least somewhat playable.  Two involve play on a 12x8 board, while the other is played on a 16x8 board.  Like before the player plays against the computer with the computer making random moves.', 'https://www.thebackshed.com/forum/uploads/bar1010/2021-04-26_050235_Chess.zip', '3', 8, 1),
(62, 'Maze programs', '', '2021-04-25 21:30:42', 28, 'Maze_programs_20210423095554.jpeg', 'Different mazes', 'Here are several of my 2 dimensional and 3 dimensional maze programs.  Some involve finding a key before one can descend the ladder to the next lower level which increases in size a little each time.  There are treasures to collect along the way.  One version features colored walls, others have vector style graphics.  There is a version which features multiple levels with many up and down ladders.  Another version includes multi-screen 2 dimensional mazes.  Some of these versions include a compass and ability to view a map/top view.  Finally there is a 2D version which includes monsters.', 'https://www.thebackshed.com/forum/uploads/bar1010/2020-12-24_055347_BAR%20Maze%20Programs.zip', '3,6', 9, 1),
(63, 'Function Grapher Demos', '', '2021-04-23 16:57:13', 28, 'Function_Grapher_Demos_20210423185540.jpeg', '2D functions demo', 'Two function grapher demos are included.\nFunction Grapher 2D Cartesian Coordinates\nFunction Grapher Polar Coordinates\nBoth demos show plotting of points on grids in a slideshow\ntype manner.  Each function is displayed at the top left of the screen.', 'https://www.thebackshed.com/forum/uploads/bar1010/2021-04-24_024413_Function%20Graphers.zip', '2,6,8', 11, 1),
(64, 'MMBasic and Astronomy Quizes', '', '2021-04-25 20:37:41', 28, 'MMBasic_and_Astronomy_Quizes_20210424032759.jpeg', 'Quizes', 'Here is my MMBasic Quiz with 633 questions and answers and my\nAstronomy Quiz with 510 questions and answers.', 'https://www.thebackshed.com/forum/uploads/bar1010/2020-12-28_140211_BAR%20Quiz%20Programs.zip', '3,8', 9, 1),
(65, 'Concentration', '', '2021-04-25 20:38:00', 28, 'Concentration_20210425084123.jpeg', 'Card game', 'This is the card game Concentration.  There are two\nvariations.  One is played with one deck of cards\nmatching Diamonds to Hearts for each rank and matching\nClubs to Spades for each rank.  The other variation\nis played with two decks of cards matching pairs of\nclones.  Control is via the keyboard.', 'https://www.thebackshed.com/forum/uploads/bar1010/2021-04-25_163219_Concentration.zip', '3', 8, 1),
(66, 'Mazist', 'v0.99', '2021-04-27 00:33:50', 30, 'Mazist_20210426165206.JPG', 'Maze generator and solver', '2D maze generation/solving program. Mazes can be 10x10 to 99x69. Included Save/load mazes for solving over several sessions, zoom function for small screens or poor eyesight or kids, mouse solve routines when you give up on a maze, mark trails or points in the maze to aid in solving.', 'https://www.thebackshed.com/forum/uploads/Goksteroo/2021-04-26_235653_mazist.zip', '3,6', 9, 1),
(67, 'Word Search', '', '2021-04-27 20:42:56', 28, 'Word_Search_20210427214345.jpeg', 'Classic word game', 'Play 18 variations of Word Search.\nThe user selects one of six font sizes and also\none of three types of presentation.  The first\ntype displays a word list and removes words from\nthe list when they are found.  The second type\nhides the word list initially and displays words\nin the list whey they are found.  Finally the\nthird type does not display a word list, but \ndisplays the number of words found in X of Y fashion.\nThe words are selected randomly from a Collegiate\ndictionary.  Control is via the keyboard.  Pressing\nthe space bar highlights a letter.', 'https://www.thebackshed.com/forum/ViewTopic.php?FID=16&TID=13749', '3,8', 8, 1),
(68, 'Rubikâ€™s Cube', '', '2021-05-09 12:33:02', 28, 'Rubikâ€™s_Cube_20210509045621.jpeg', 'Classic toy simulator', 'Rubik&#039;s Cube features a 3x3x3 cube that has tiles with six\ndifferent colors.  The object is to manipulate the tiles\nsuch that each face has all of the nine tiles set to the\nsame color.  There are two different views available.', 'https://www.thebackshed.com/forum/ViewTopic.php?FID=16&TID=13782', '3', 2, 1),
(69, 'Analog Clock', '1.0.0', '2021-05-09 18:23:14', 29, 'Analog_Clock_20210509202222.png', 'Large clock', 'A large analog clock face. Parameters at the top of the source allow you to choose 12 or 24-hour display and whether to play hourly chimes or not.', 'http://thebackshed.com/Clock.zip', '6', 2, 1),
(70, 'Grandfather Clock', '1.3.0', '2021-05-10 14:42:36', 29, 'Grandfather_Clock_20210510154259.png', 'A little different clock', 'A grandfather clock that displays the current 12-hour time on the main face, the phase of the moon on the top bow, and the sunrise and sunset times, the current date, and the UTC 24-hour time on inset digital windows. If the user puts his correct latitude, longitude, UTC offset hour, and local elevation above sea level into the constants at the top of the source code, all displayed values will be accurate for his locality.', 'http://thebackshed.com/GrandfatherClock.zip', '6', 1, 1),
(71, 'SpinClock', '1.1.2', '2021-05-10 14:42:45', 29, 'SpinClock_20210510154552.png', 'A little different clock', 'A digital clock that can be set to show 12-hour or 24-hour time by changing a constant at the top of the source code. Each large digit is made up of a 4 x 6 rectangle of small &quot;clock dials&quot; that spin to different positions when the digits of the current time change.', 'http://thebackshed.com/SpinClock.zip', '6', 0, 1),
(72, 'Binary Coded Decimal Clock', '1.0.0', '2021-05-10 14:42:53', 29, 'Binary_Coded_Decimal_Clock_20210510155320.png', 'A little different clock', 'A clock whos display consists of 6 columns of colored squares that represent the digits of the hour (2 leftmost columns), minutes (2 center columns), and second. (2 rightmost columns) From bottom to top, the row values are powers of 2: 1, 2, 4, and 8. Each square shows a bright color when active. For instance, at 07:39:06, the illuminated squares are (left to right): column 1: nothing (0); column 2: yellow, green, blue (1+2+4=7); column 3: yellow, green (1+2=3); column 4: yellow, red (1+8=9); column 5: nothing (0); column 6: green, blue (2+4=6).', 'http://thebackshed.com/BCDClock.zip', '6', 1, 1),
(73, 'KitKatClock', '1.1.0', '2021-05-10 14:43:02', 29, 'KitKatClock_20210510155503.png', 'A little different clock', 'An emulation of the classic &quot;Kit Kat Clock&quot; with moving eyes and swinging tail.', 'http://thebackshed.com/KitKatClock.zip', '6', 0, 1),
(74, 'Radar Air Traffic Control', '1.1.0', '2021-05-10 14:43:15', 29, 'Radar_Air_Traffic_Control_20210510163435.png', 'Radar screen simulator', 'A simulation of an analog radar screen with sweep and phosphor exponential brightness decay. A user-selectable number of simulated radar targets are shown, and a table shows transponder ID, range, and bearing for each target. Table values can be sorted by each target value and sorts can be changed to be up or down.', 'http://thebackshed.com/Radar.zip', '6,7', 0, 1),
(75, 'Math Matrix Inversion', '1.0.0', '2021-05-10 14:43:22', 29, '', 'Matrix inversion helper', 'A short program to compute the inverse of 2D matrices up to 10x10 in size. The method is Gaussian Elimination, which is fast but has issues with numerical instability with ill-conditioned matrices. This is more of a demo than a really useful program because of the numerical issues.', 'http://thebackshed.com/Math_Matrix_Inversion.zip', '2,7,8', 0, 1),
(76, 'Turing Machine', '1.0.0', '2021-05-10 14:43:31', 29, 'Turing_Machine_20210510164213.png', 'Turing machine simulator', 'A Turing Machine is a theoretical model of machine computation invented by Alan Turing in a famous 1936 paper. Turing is acknowledged to be one of the principal fathers of the digital computer. Turing Machines are still used as the reference model for researching topics such as computational complexity.\nThis program allows you to create, load, and save Turing Machine programs and run them either in a tabular or graphical format. The screen shot is of a graphical view. Several Turing Machine programs are included in the folder &quot;Programs&quot;.\nThe program has substantial Help features to explain Turing Machines.', 'https://www.thebackshed.com/forum/uploads/William%20Leue/2021-01-06_061309_Turing.zip', '7,8', 0, 1),
(77, 'Enigma', '1.0.0', '2021-05-10 15:05:39', 29, 'Enigma_20210510164849.png', 'Enigma simulator', 'The Enigma Machine was the famous mechanical encryption/decryption machine used by the German military in WWII. It was advanced for its day, and if used correctly would have been unbreakable. A combination of operator errors, good luck, and outstanding mathematical skill by British, Polish, and French cryptanalysts, most notably Alan Turing, led to the breaking of many of the Enigma messages, which helped to shorten WWII and facilitate an eventual Allied victory.\nThis program is an accurate simulation of the Enigma Machine, and lets users set up the rotors, reflectors, and plugboards exactly the way the real Enigma would have been set up. Messages can then be encrypted and decrypted exactly the way they would have been on the real Enigma.\nSubstantial Help is included in the program.', 'https://www.thebackshed.com/forum/uploads/William%20Leue/2021-01-04_041828_Enigma.zip', '7,8', 0, 1),
(78, 'Kaleidoscope', '1.1.1', '2021-05-10 15:05:49', 29, 'Kaleidoscope_20210510165056.png', 'Graphic effects', 'A simulated kaleidoscope that creates an ever-changing display of colored figures with 8-fold symmetry in a round field.', 'https://www.thebackshed.com/forum/uploads/William%20Leue/2020-11-15_010256_Kaleid.zip', '2,6', 2, 1),
(79, 'Sudoku', '1.2.0', '2021-05-10 15:06:16', 29, 'Sudoku_20210510165220.png', 'Well known game', 'Allows you to create, load, save and solve Sudoku puzzles with some limited computer assistance.', 'http://thebackshed.com/Sudoku.zip', '3', 1, 1),
(80, 'Morse Code Practice', '1.0.1', '2021-05-10 15:06:26', 29, 'Morse_Code_Practice_20210510165650.png', 'Morse code trainer', 'A Morse Code reading practice program. Users can specify random characters or characters from a text file. The code speed and beep frequency can be specified. Users can choose alphabetic characters only, characters and numbers, or the full range of characters, numbers, and punctuation.\nA special mode lets users learn the Morse Code using the Koch Incremental Learning method, which is a proven method for learning Morse Code and getting your reading speed up to practical levels.', 'http://thebackshed.com/Morse.zip', '7,8', 0, 1),
(81, 'Nim', '1.0.0', '2021-05-11 17:44:31', 29, 'Nim_20210511171149.png', 'Well known game', 'Play the game of Nim against the computer or another player. ', 'http://thebackshed.com/Nim.zip', '3', 0, 1),
(82, 'TicTacToe', '1.0.0', '2021-05-11 17:44:42', 29, 'TicTacToe_20210511171255.png', 'Well known game', 'Play the game of TicTacToe against the computer or another player.', 'http://thebackshed.com/TicTacToe.zip', '3', 1, 1),
(83, 'Minesweeper', '1.0.1', '2021-05-11 17:45:09', 29, 'Minesweeper_20210511171430.png', 'Well known game', 'Play an emulation of the classic Windows game of Minesweeper. You can play at the Beginner, Intermediate, or Expert levels.', 'http://thebackshed.com/Minesweeper.zip', '3', 0, 1),
(84, 'Music', '1.0.2', '2021-05-11 17:45:20', 29, 'Music_20210511171621.png', 'Generative music', 'Plays 4-part music created by a generative algorithm and displays the notes on a musical staff.', 'http://thebackshed.com/Music.zip', '4', 1, 1),
(85, 'Amazin', '1.0.0', '2021-05-11 17:45:33', 29, 'Amazin_20210511171820.png', 'Create and solve maze', 'Creates a random maze, runs it, and then shows the solved path with excursions into blind alleys removed. Uses a depth-first recursive algorithm for both maze creation and solving.', 'https://www.thebackshed.com/forum/uploads/William%20Leue/2020-08-26_055719_Amazin.zip', '2,6,7', 3, 1),
(86, 'SlashMaze', '1.0.0', '2021-05-12 14:48:07', 29, 'SlashMaze_20210512164528.png', 'Commodore like RND maze', 'An emulation of the famous Commodore Pet &quot;10PRINT&quot; one-line BASIC maze generator. On the Pet, the characters were made on an 8x8 pixel grid, and the forward and backward slash characters filled that grid from corner to corner, which made the one-line program possible.\nThis program for CMM2 produces the same result, but alas, with more lines of BASIC.', 'http://thebackshed.com/SlashMaze', '2,6', 0, 1),
(87, 'Hextiles', '1.0.0', '2021-05-12 14:48:20', 29, 'Hextiles_20210512164737.png', 'Hexagon demo', 'Another Demo program: fills the screen with a grid of hexagons that change color and size over a cycle of several minutes. I wrote this years ago in C for the Mac &quot;After Dark&quot; screen saver environment.', 'http://thebackshed.com/Hextiles.zip', '2,6', 0, 1),
(88, 'Truchet Tiles', '1.0.0', '2021-05-12 14:48:31', 29, '', 'Tile demo', 'A random, infinitely scrolling maze made of Truchet Tiles. The colors gradually change over a time period of a few minutes.', 'https://www.thebackshed.com/forum/ViewTopic.php?FID=16&TID=13639', '2,6', 0, 1),
(89, 'Towers of Hanoi', '1.0.0', '2021-05-12 14:48:39', 29, 'Towers_of_Hanoi_20210512150313.png', 'Classic game', 'The classic Towers of Hanoi puzzle. Move a stack of discs from one tower to another, moving one disc at a time and never allowing a larger disc to lie on top of a smaller disc. You can solve the puzzle yourself, or watch the computer solve it. There are a user-selectable number of discs, up to 12. (12 discs take 4095 moves in the optimal solution!)', 'https://www.thebackshed.com/forum/uploads/William%20Leue/2020-08-21_025603_Hanoi.zip', '3', 1, 1),
(90, 'Hunt the Wumpus', '1.0.0', '2021-05-12 14:48:53', 29, 'Hunt_the_Wumpus_20210512150021.png', 'Extended text game', 'A version of the classic Hunt the Wumpus game from the early days of personal computers. The original game was strictly text-based. This version preserves all the original text, but also adds a dynamic map.', 'https://www.thebackshed.com/forum/uploads/William%20Leue/2020-08-21_015255_Wumpus.zip', '3', 1, 1),
(91, 'Color Wheels', '1.0.0', '2021-05-12 14:49:03', 29, 'Color_Wheels_20210512145821.png', 'Color demo', 'Color wheels showing all possible colors in 8, 12, or 16-bit color modes.', 'https://www.thebackshed.com/forum/ViewTopic.php?TID=12631&PID=153464#153464#153464', '2,6', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(200) NOT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `author_4` (`author`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `author` (`author`),
  KEY `author_2` (`author`),
  KEY `author_3` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author`, `contact`, `items`) VALUES
(1, '???', NULL, 0),
(2, 'JirSoft', 'https://github.com/jirsoft', 4),
(3, 'John "Jay" Crutti (frnno967)', 'https://github.com/frnno967', 1),
(4, 'Mauro Xavier Neto', 'https://github.com/mauroxavierneto', 5),
(5, 'Vegipete', 'https://multimite.strongedge.net', 10),
(6, 'Tom Williams "thwill"', 'https://sockpuppetstudios.com', 1),
(7, 'Epsilon', 'https://github.com/epsilon537', 7),
(8, 'Nautilus', 'https://github.com/NautilusDE', 1),
(9, 'jeff510', NULL, 1),
(10, 'PeteCotton', NULL, 2),
(11, 'Multiple contributors', '', 1),
(12, 'Schlowski', 'mailto:bjoerg@stojalowski.de', 1),
(13, 'Geoff Graham', 'https://geoffg.net/', 2),
(14, 'Jim Hiley', 'https://www.c-com.com.au/', 2),
(15, 'Doug Pankhurst (panky)', '', 1),
(16, 'Martin Scragg (realmnm)', NULL, 1),
(17, 'Gary Shannon (fiziwig)', NULL, 1),
(18, 'Caspian (capsikin)', NULL, 1),
(19, 'Ray (TweakerRay)', 'http://tweakerray.bandcamp.com/', 2),
(20, 'John DiFelici (johnd)', 'https://github.com/yignoth', 1),
(21, 'Jonathan Wright (Neino)', '', 1),
(22, 'Lance Benson (lizby)', '', 1),
(23, 'Tim Dorrington (TimD)', '', 1),
(24, 'Boris (realbobele)', '', 1),
(25, 'Mick (Mixtel90)', 'https://nascom.wordpress.com/about/', 1),
(26, 'Harm (Volhout)', '', 1),
(27, 'yock1960', '', 3),
(28, 'bar1010', 'https://github.com/bar1010', 13),
(29, 'William M Leue', 'mailto:wleue1@nycap.rr.com', 23),
(30, 'Geoff Camp (Goksteroo)', NULL, 1);

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
(8, 'education'),
(11, 'electro'),
(3, 'game'),
(1, 'general'),
(6, 'graphics'),
(14, 'hardware'),
(13, 'mac-pc'),
(4, 'music'),
(7, 'science'),
(5, 'tool');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(10) NOT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src` varchar(2000) NOT NULL,
  `dest` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event`, `changed`, `src`, `dest`) VALUES
(79, 'R+', '2021-05-15 19:30:36', '68', ''),
(80, 'R+', '2021-05-15 21:54:37', '16', ''),
(81, 'R+', '2021-05-15 22:30:11', '17', ''),
(82, 'R+', '2021-05-16 01:53:19', '14', ''),
(83, 'US', '2021-05-16 11:43:49', '22', 'A Windows editor for the Maximite and MicroMite'),
(84, 'UV', '2021-05-16 11:43:49', '22', '4.1.4'),
(85, 'UD', '2021-05-16 11:43:50', '22', 'MMEdit was created to simplify writing applications for the Maximite computer.\r<br>The first versions of MM Basic required line numbers, something that I was happy to leave behind when working on my PC!\r<br>Since MM Basic version 3.0, line numbers are no longer required and it has a full screen editor, so the original reason for creating MM Edit has diminished.\r<br>\r<br>Being able to write code on your PC and easily transfer the files between the PC and Maximite is still a good reason for using MM Edit.\r<br>\r<br>Since version 3.5.17, MMEdit can use TeraTerm as the VT100 terminal. TeraTerm is a far superior VT100 terminal than MMEdit&#039;s built-in version.\r<br>\r<br>Version 3.6.0 added support for the Micromite Plus.\r<br>Version 3.7.0 added support for the Micromite eXtreme.\r<br>Version 4.0 added support for the new Colour Maximite 2.\r<br>'),
(86, 'UL', '2021-05-16 11:43:50', '22', 'https://www.c-com.com.au/MMedit.htm'),
(88, 'NT', '2021-05-16 14:10:00', '92', 'Test with link'),
(89, 'NV', '2021-05-16 14:10:00', '92', '0.00'),
(90, 'NS', '2021-05-16 14:10:00', '92', 'Linktest'),
(91, 'NA', '2021-05-16 14:10:00', '92', '2'),
(92, 'NSS', '2021-05-16 14:10:00', '92', ''),
(93, 'ND', '2021-05-16 14:10:00', '92', 'This is simple description with [URL=https://cmm2.fun/index.php]some link[/URL].'),
(94, 'NL', '2021-05-16 14:10:00', '92', 'http://'),
(95, 'NC', '2021-05-16 14:10:00', '92', '1'),
(96, 'US', '2021-05-16 15:17:38', '41', 'Action game'),
(97, 'UV', '2021-05-16 15:17:38', '41', '(One-screen version)'),
(98, 'UD', '2021-05-16 15:17:38', '41', 'This game won the 1st place in CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\r<br>\r<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=984]HERE[/URL].\r<br>\r<br>\r<br>\r<br>You are a testing prototype nanomachine called HOPE ROBOT, which is the last hope of humanity to extinguish virus plague that spread to all the world.\r<br>\r<br>Navigate inside human bodies and save patients in this nano adventure for your Colour Maximite 2.\r<br>\r<br>More can be seen in [URL=https://www.youtube.com/watch?v=epJiRJwBbX8&amp;t=142s]Mauro&#039;s video on YT[/URL].'),
(99, 'UL', '2021-05-16 15:17:38', '41', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/mauro-xavier'),
(100, 'R+', '2021-05-16 15:18:20', '25', '207.46.13.68'),
(101, 'US', '2021-05-16 15:19:16', '41', 'Action game'),
(102, 'UV', '2021-05-16 15:19:16', '41', '(One-screen version)'),
(103, 'UD', '2021-05-16 15:19:16', '41', 'This game won the 1st place in CMM1&amp;2 BASIC Programming Challenge 2021 (one screen programs max. 48 rows by 100 columns)\r<br>Video on YT about this program is [URL=https://youtu.be/09I0LDv7SiM?t=984]HERE[/URL].\r<br>\r<br>You are a testing prototype nanomachine called HOPE ROBOT, which is the last hope of humanity to extinguish virus plague that spread to all the world.\r<br>Navigate inside human bodies and save patients in this nano adventure for your Colour Maximite 2.\r<br>More can be seen in [URL=https://www.youtube.com/watch?v=epJiRJwBbX8&amp;t=142s]Mauro&#039;s video on YT[/URL].'),
(104, 'UL', '2021-05-16 15:19:16', '41', 'https://github.com/thwill1000/cmm2-basic-challenge/tree/main/2021/mauro-xavier'),
(105, 'R+', '2021-05-16 15:19:48', '33', '157.55.39.33');

-- --------------------------------------------------------

--
-- Table structure for table `shadow`
--

CREATE TABLE IF NOT EXISTS `shadow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(1) COLLATE utf8_czech_ci NOT NULL DEFAULT 'N',
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=190 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
