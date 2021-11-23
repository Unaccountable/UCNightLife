-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 12:26 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpnightlife`
--

-- --------------------------------------------------------

--
-- Table structure for table `locationdata`
--

CREATE TABLE `locationdata` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `lat` int(30) NOT NULL,
  `lng` int(30) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `hours` varchar(1000) NOT NULL,
  `descrip` varchar(200) NOT NULL,
  `intLinks` varchar(200) NOT NULL,
  `extLinks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locationdata`
--

INSERT INTO `locationdata` (`id`, `name`, `addr`, `lat`, `lng`, `tags`, `hours`, `descrip`, `intLinks`, `extLinks`) VALUES
(6, 'Fairview Park', '501 W McMillan St, Cincinnati, OH 45219\r\n', 39, -85, 'park,field,walk,exercise,near campus', '24/7', 'A narrow winding road through the park surrounds the slopes of Fairview Heights and offers a fantastic view of the Cincinnati skyline, Union Terminal, and the Ohio River in the distance.', '<a href=\"locations/fairview.php\">', 'https://www.cincinnatiparks.com/central/fairview-park/\r\n'),
(7, 'Bellvue Park', 'Park Dr, Cincinnati, OH 45219', 39, -85, 'park,field,walk,exercise,near campus', '24/7', 'Beautifyl overlook of the city with a nice pavillion located at the top', '<a href=\"locations/bellvue.php\">', 'https://www.cincinnatiparks.com/central/bellevue-park/'),
(8, 'Bogarts \r\n', '2621 Vine St, Cincinnati, OH 45219', 39, -85, 'music,entertainment,live music,drinks', 'N/A', 'Live music hall that hosts a vast variety of acts and performances.', '<a href=\"bogarts.php\">', 'https://www.bogarts.com/'),
(9, 'Mio\'s', '2634 Vine St, Cincinnati, OH 45219', 39, -85, 'food,pizza,drinks,bar,sports', '11am-10pm', 'Local sports bar near campus', '<a href=\"locations/mios.php\">', 'https://www.miospizza.com/'),
(10, 'Dive Bar', '2608 Short Vine St, Cincinnati, OH 45219', 39, -85, 'drinks,bar,late night,cheap', '11am-2:30am', 'Local bar on Vine st. with cheap drinks and activities such as pool and darts.', '<a href=\"locations/dive.php\">', 'https://www.facebook.com/DiveBarCIncinnati/'),
(11, 'Ladder', '2701 Vine St, Cincinnati, OH 45219', 39, -85, 'drinks,bar,late night,cheap', '11am-2:30am', 'Brunch location that turns into a college bar during the night.', '<a href=\"locations/ladder.php\">', 'https://ladder19.com/'),
(12, 'Woodies', '339 Calhoun, Cincinnati, OH 45219', 39, -85, 'drinks,bar,late night,cheap,college bar', 'Sunday	 Closed\r\nMonday	 8PM–2AM\r\nTuesday	 8PM–2AM\r\nWednesday	 5PM–2AM\r\nThursday	 8PM–2AM\r\nFriday	   ', 'Clifton bar usually consisting of a younger crowd with good deals and daily specials', '<a href=\"locations/woodies.php\">', 'https://www.facebook.com/UncleWoodys/'),
(13, 'Adriatico\'s\r\n', '113 W McMillan St, Cincinnati, OH 45219', 39, -85, 'pizza,food,bar,late night,cheap,restarunt', 'Sunday	11AM–10PM\r\nMonday	11AM–11PM\r\nTuesday	11AM–11PM\r\nWednesday	11AM–11PM\r\nThursday	11AM–12AM\r\nFrid', 'Pizza place famously known for their massive \"Bearcat Pizza\"', '<a href=\"locations/adriaticos.php\">', 'https://adriaticosuc.com/'),
(14, 'Topcats', '2820 Vine St, Cincinnati, OH 45219', 39, -85, 'music,entertainment,live music,drinks', 'Sunday	11AM–2AM\r\nMonday	4PM–2AM\r\nTuesday	4PM–2AM\r\nWednesday	4PM–2AM\r\nThursday	4PM–2AM\r\nFriday	11AM–2', 'Cincinnati venue for night life and live music. Event schedule can be found on their website', '<a href=\"locations/topcats.php\">', 'https://www.topcatscincy.com/'),
(15, 'Cock and Bull', '2801 Short Vine St, Cincinnati, OH 45219', 39, -85, 'drinks,bar,late night,cheap,college bar', '11am-2am', 'Upscale bar near Vine St serving a variety of food and drinks, with live entertainment sometimes and typical bar activities', '<a href=\"locations/cockandbull.php\">', 'https://www.cockandbullcincinnati.com/'),
(16, 'Mac\'s', '205 W McMillan St, Cincinnati, OH 45219', 39, -85, 'drinks,bar,late night,cheap,restarurant,food', '11am-1:30am', 'Premier spot for pizza and a beer, with a combined resturant and bar.', '<a href=\"locations/macs.php\">', 'http://www.macsonmcmillan.com/'),
(17, 'Clifton Heights Tavern', '239 W McMillan St, Cincinnati, OH 45219', 39, -85, 'drinks,bar,late night,cheap,college bar', '4pm-2:30am', 'Bar on McMillan St, fairly standard activities and atmosphere.', '<a href=\"locations/tavern.php\">', 'https://cliftonheights.org/business-directory/1449/239westmcmillan/'),
(18, 'Taste of Belguim', '2845 Short Vine St, Cincinnati, OH 45219', 39, -85, 'Breakfast,waffles,food,coffee', '8am-8pm', 'Breakfast location on Vine St - Primarily Belgian waffles', '<a href=\"tasteofbelguim.php\">', 'https://authenticwaffle.com/'),
(19, 'Los Potrillos', '316 Ludlow Ave, Cincinnati, OH 45220', 39, -85, 'Mexican,food,cheap', '11am-10pm', 'Local mexican cuisine, great bang for your buck around campus.', '<a href=\"locations/lospotrillos.php\">', 'http://www.los-potrillos.wix.com/home'),
(20, 'Hangover Easy', '13 W Charlton St, Cincinnati, OH 45219', 39, -85, 'Breakfast,food,restarunt,bar', '7am-3pm', 'Local breakfast and brunch near Vine St with bar and patio seating', '<a href=\"locations/hangover.php\">', 'https://www.hangovereasy.com/cincinnati'),
(21, 'TQL Stadium', '1501 Central Pkwy, Cincinnati, OH 45214', 39, -85, 'sports,soccer,FC Cincinnati,fun,entertainment,drin', 'N/A', 'Home of the FC Cincinnati Soccer Team', '<a href=\"locations/tql.php\">', 'https://tqlstadium.com/'),
(22, 'Paul Brown Stadium', '1 Paul Brown Stadium, Cincinnati, OH 45202', 39, -85, 'sports,football,Bengals,drinks,entertainment,fun', 'N/A', 'Stadium of the Cincinnati Bengals', '<a href=\"locations/paulbrown.php\">', 'http://www.bengals.com/stadium/index.html'),
(23, 'Great American Ball Park', '100 Joe Nuxhall Way, Cincinnati, OH 45202', 39, -85, 'sports,baseball,Reds,drinks,entertainment,fun', 'N/A', 'Stadium of the Cincinnati Reds', '<a href=\"locations/greatamerican.php\">', 'http://cincinnati.reds.mlb.com/cin/ballpark/index.jsp'),
(24, 'The Eagle', '1342 Vine St, Cincinnati, OH 45202', 39, -85, 'Food,chicken,vine,drinks', 'Weekdays 4-11pm, Weekends 11am-12am', 'OTR upscale chicken joint with wide variety of on tap drinks.', '<a href=\"locations/theeagle.php\">', 'http://eaglerestaurant.com/menu/'),
(25, '5/3 Arena', '2700 O\'Varsity Way, Cincinnati, OH 45221\r\n', 39, -85, 'Sports,Campus,Basketball,drinks,entertainment', 'N/A', 'Stadium of the University of Cincinnati Basketball Team', '<a href=\"locations/53.php\">', 'https://gobearcats.com/facilities/fifth-third-arena/1003'),
(27, 'American Sign Museum', '1330 Monmouth Ave, Cincinnati, OH 45225', 39, -85, 'Museum,entertainment,art,history', '10am-4pm', 'Largest public sign museum in the United States', '<a href=\"locations/americansignmuseum.php\">', 'http://www.americansignmuseum.org/'),
(28, 'Underground Railround Museum', '50 E Freedom Way, Cincinnati, OH 45202', 39, -85, 'Museum,entertainment,art,history', '10am-5pm', 'Museum opened in 2004 dedicated to the education and preservation of the values of the underground railroad', '<a href=\"locations/undergroundrailroundmuseum.php\">', 'https://freedomcenter.org/'),
(29, 'Cinci Art Museum', '953 Eden Park Dr, Cincinnati, OH 45202', 39, -84, 'Museum,entertainment,art,history', '11am-5pm', 'One of the oldest art museums in the US located in Eden Park', '<a href=\"locations/cinciartmuseum.php\">', 'http://www.cincinnatiartmuseum.org/'),
(30, 'Taft Museum of Art', '316 Pike St, Cincinnati, OH 45202', 39, -85, 'Museum,entertainment,art,history', '11am-5pm', 'Located in a historic house, the Taft Museum of Art has a collection of fine arts', '<a href=\"locations/taft.php\">', 'https://www.taftmuseum.org/'),
(31, 'Icon Music Center', '25 Race St, Cincinnati, OH 45202', 39, -85, 'music,entertainment,live music,drinks,festival', 'N/A', 'State of the art music center and venue located in downtown Cincinnati', '<a href=\"locations/iconmusiccenter.php\">', 'https://iconmusiccenter.com/'),
(32, 'Newport Aquarium', '1 Levee Way, Newport, KY 41071', 39, -84, 'Aquarium,entertainment,fun', '10am-5pm', 'Beautiful, well maintained aquarium located across the river in Kentucky.', '<a href=\"locations/newportaquarium.php\">', 'https://www.newportaquarium.com/'),
(33, 'Cincinnati Zoo', '3400 Vine St, Cincinnati, OH 45220', 39, -85, 'Zoo,entertainment,fun,animals,near campus', '10am-5pm', 'Amazing zoo with every type of animal you could want to see. Gloria the Hippo and our old friend Harambe are their primier sights', '<a href=\"locations/cincinnatizoo.php\">', 'http://cincinnatizoo.org/'),
(34, 'Riverfront Park', '166 W Mehring Way, Cincinnati, OH 45202', 39, -85, 'park,field,walk,exercise,downtown', '6am-11pm', 'Nice park located near the River in downtown Cincinnati', '<a href=\"locations/riverfront.php\">', 'http://www.cincinnatiparks.com/smale-riverfront-park/'),
(35, 'Ault Park', '5090 Observatory Ave, Cincinnati, OH 45208', 39, -84, 'park,field,walk,exercise', '6am-10pm', 'Park located in Mount Lookout and has an amazing view of the Little Miami River valley', '<a href=\"locations/ault.php\">', 'http://www.aultparkac.org/'),
(36, 'Cincinnati Observatory', '3489 Observatory Pl, Cincinnati, OH 45208', 39, -84, 'science,art,history,museum', 'Sunday - 12–3PM\r\nMonday - Closed\r\nTuesday - 12–3PM\r\nWednesday - Closed\r\nThursday - 12–3PM\r\nFriday - Closed\r\nSaturday - Closed', 'Located on Mount Lookout, the oldest professional observatory in the US still being used to discovery mysteries and other astronomical questions', '<a href=\"locations/observatory.php\">', 'https://www.cincinnatiobservatory.org/'),
(37, 'Riverbend', '6295 Kellogg Ave, Cincinnati, OH 45230', 39, -84, 'music,entertainment,live music,drinks,festival,dow', 'N/A', 'Outdoor music venue located downtown, typically holds major names and events in Cincinnati', '<a href=\"locations/riverbend.php\">', 'http://www.riverbend.org/'),
(38, 'Incline Public House', '2601 W 8th St, Cincinnati, OH 45204\r\n', 39, -85, 'drinks,bar,late night,downtown,restarurant,food', '11am-10pm', 'Gastropub with an outdoor seating area and skyline view. Serves typical american food', '<a href=\"locations/publichouse.php\">', 'http://www.inclinepublichouse.com/'),
(39, 'Cincinnati Music Hall', '1241 Elm St, Cincinnati, OH 45202', 39, -85, 'music,entertainment,live music,drinks,downtown', '10am-5pm', 'Long-time home of the Cincinnati Symphony Orchestra and other performing arts', '<a href=\"locations/cincinnatimusichall.php\">', 'https://www.cincinnatiarts.org/music-hall-home'),
(40, 'Washington Park', '1230 Elm St, Cincinnati, OH 45202', 39, -85, 'park,field,walk,exercise,downtown', '6am-11pm', 'Park in the middle of downtown, central hub for tons of activities. Much like Central Park in NYC', '<a href=\"locations/washington.php\">', 'http://washingtonpark.org/features-of-the-park/park-rules/'),
(41, 'Fountain Square\r\n', '520 Vine St, Cincinnati, OH 45202', 39, -85, 'events,walk,exercise,downtown', 'N/A', 'The heart of downtown Cincinnati, typically where events are centralized for the area', '<a href=\"locations/fountainsquare.php\">', 'http://www.myfountainsquare.com/'),
(42, 'Burnet Woods', '3251 Brookline Ave, Cincinnati, OH 45220', 39, -85, 'park,field,walk,exercise,near campus', 'N/A', 'Local park near campus, bridges the gap between Ludlow activities and campus', '<a href=\"locations/burnetwoods.php\">', 'https://www.cincinnatiparks.com/central/burnet-woods/'),
(43, 'Skyline Chili', '290 Ludlow Ave, Cincinnati, OH 45220', 39, -85, 'food,cheap,near campus', '10am-2am', 'Local cult dish consisting of noodles, special chili, and an agressive amount of cheese', '<a href=\"locations/skyline.php\">', 'https://www.skylinechili.com/'),
(44, 'Drunken Bento', '212 W McMillan St, Cincinnati, OH 45219', 39, -85, 'food,cheap,near campus,sushi', '11am-12am', 'Sit down sushi joint on McMillan st, half priced if you sit down inside and eat!', '<a href=\"locations/drunkenbento.php\">', 'http://facebook.com/Izens-Drunken-Bento-110387185709928/'),
(45, 'King\'s Island', '6300 Kings Island Dr, Mason, OH 45040', 39, -84, 'entertainment,amusement park,fun', 'N/A', 'Nearest amusement park, a more classic vibe compared to Great American or Cedar Point', '<a href=\"locations/kingsisland.php\">', 'https://www.visitkingsisland.com/'),
(46, 'Keystone', '249 Calhoun St, Cincinnati, OH 45219', 39, -85, 'food,cheap,near campus,bar', '11:30am-10pm weekdays, 11:30am-3am weekends', 'Premier spot for macoroni and cheese, with a combined resturant and bar', '<a href=\"locations/keystone.php\">', 'http://eatmacshack.com/'),
(47, 'Sheakley Lawn', 'SE Campus', 39, -85, 'on campus,field,walk,exercise,sports', 'N/A', 'Turf training field across the way from the tennis courts, and outside of the Lidner Center', '<a href=\"locations/sheakley.php\">', 'http://uc.edu/'),
(48, 'Nippert Stadium', '2700 Bearcat Way, Cincinnati, OH 45221', 39, -85, 'on campus,field,walk,exercise,sports,football', 'N/A', 'UC Football Stadium', '<a href=\"locations/nippert.php\">', 'http://uc.edu/'),
(49, 'Gettler Stadium', 'SE Campus', 39, -85, 'on campus,field,walk,exercise,sports,soccer', 'N/A', 'UC Soccer Stadium', '<a href=\"locations/gettler.php\">', 'http://uc.edu/'),
(50, 'UC Baseball Stadium', 'Jefferson Ave &, W Corry St, Cincinnati, OH 45219', 39, -85, 'on campus,field,walk,exercise,sports,baseball', 'N/A', 'UC Baseball Stadium southeast of campus', '<a href=\"locations/baseballstadium.php\">', 'http://uc.edu/');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`) VALUES
(41, 'Park'),
(42, 'Music'),
(43, 'Food'),
(44, 'Drinks'),
(45, 'Pizza'),
(46, 'Breakfast'),
(47, 'Mexican'),
(48, 'Sports'),
(49, 'Museum'),
(50, 'Aquarium'),
(51, 'Zoo'),
(52, 'Science'),
(53, 'Events'),
(54, 'Entertainment'),
(55, 'On Campus'),
(56, 'Field'),
(57, 'Bar'),
(58, 'Waffles'),
(59, 'Soccer'),
(60, 'Football'),
(61, 'Baseball'),
(62, 'Chicken'),
(63, 'Campus'),
(64, 'Art'),
(65, 'Walk'),
(66, 'Cheap'),
(67, 'Amusement Park'),
(68, 'Live Music'),
(69, 'Late Night'),
(70, 'FC Cincinnati'),
(71, 'Bengals'),
(72, 'Reds'),
(73, 'Vine'),
(74, 'Basketball'),
(75, 'Fun'),
(76, 'History'),
(77, 'Exercise'),
(78, 'Near Campus'),
(79, 'Coffee'),
(80, 'Animals'),
(81, 'Downtown'),
(82, 'Sushi'),
(83, 'College Bar'),
(84, 'Restarurant'),
(85, 'Festival');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locationdata`
--
ALTER TABLE `locationdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locationdata`
--
ALTER TABLE `locationdata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
