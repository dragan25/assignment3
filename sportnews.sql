-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 03, 2018 at 10:59 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_category`, `name`, `description`) VALUES
(1, 'NBA', 'National Basketball Association'),
(2, 'NFL', 'National Football League'),
(3, 'MLB', 'Major League Baseball'),
(4, 'NHL', 'National Hockey League'),
(5, 'MLS', 'Major League Soccer');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id_comment` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `id_news` int(11) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `fk_id_news` (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id_comment`, `date`, `username`, `message`, `id_news`) VALUES
(142, '2018-05-03 12:23:26', 'josipa', 'Josipin komentar... Doradjen Komentar.', 146),
(143, '2018-05-03 12:24:04', 'josipa', 'Josipin komentar...', 142),
(144, '2018-05-03 12:24:19', 'josipa', 'Josipin komentar...', 145),
(145, '2018-05-03 12:24:28', 'josipa', 'Josipin komentar...', 144),
(146, '2018-05-03 12:24:41', 'josipa', 'Josipin komentar...', 143),
(147, '2018-05-03 12:24:50', 'josipa', 'Josipin komentar...', 141),
(148, '2018-05-03 12:25:01', 'josipa', 'Josipin komentar...', 140),
(149, '2018-05-03 12:25:12', 'josipa', 'Josipin komentar...', 139),
(150, '2018-05-03 12:25:28', 'josipa', 'Josipin komentar...', 123),
(152, '2018-05-03 12:30:31', 'jeff', 'Jeffov komentar...', 142),
(153, '2018-05-03 12:30:39', 'jeff', 'Jeffov komentar...', 145),
(154, '2018-05-03 12:30:46', 'jeff', 'Jeffov komentar...', 144),
(155, '2018-05-03 12:30:56', 'jeff', 'Jeffov komentar...', 143),
(156, '2018-05-03 12:31:16', 'jeff', 'Jeffov komentar...', 141),
(157, '2018-05-03 12:31:30', 'jeff', 'Jeffov komentar...', 140),
(158, '2018-05-03 12:31:42', 'jeff', 'Jeffov komentar...', 139),
(159, '2018-05-03 12:31:51', 'jeff', 'Jeffov komentar...', 123),
(160, '2018-05-03 12:44:50', 'admin', 'Adminov Komentar.', 146),
(161, '2018-05-03 12:45:13', 'admin', 'Adminov Komentar.', 142),
(162, '2018-05-03 12:45:21', 'admin', 'Adminov Komentar.', 145),
(163, '2018-05-03 12:45:28', 'admin', 'Adminov Komentar.', 144),
(164, '2018-05-03 12:45:39', 'admin', 'Adminov Komentar.', 143),
(165, '2018-05-03 12:45:46', 'admin', 'Adminov Komentar.', 141),
(166, '2018-05-03 12:45:55', 'admin', 'Adminov Komentar.', 140),
(167, '2018-05-03 12:46:05', 'admin', 'Adminov Komentar.', 139),
(168, '2018-05-03 12:46:13', 'admin', 'Adminov Komentar.', 123),
(169, '2018-05-03 12:51:43', 'jeff', 'Jeff komentira opet...', 146);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id_image` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_image`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_image`, `title`, `image`, `author`) VALUES
(120, 'Joel Embiid', 'http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2018%2F0417%2Fr355665_2_1296x729_16%2D9.jpg&w=570', 'Bill Streicher-USA TODAY Sports'),
(141, 'David Villa', 'https://images.performgroup.com/di/library/GOAL/d4/98/david-villa-mls-nycfc-07192017_mqk99h50qxuq1fl2owk3bru0r.jpg?t=482708206&quality=90&w=1280', 'David Villa Brad Penner - USA TODAY Sports'),
(142, 'A.J. Green', 'http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2017%2F1213%2Fr302155_1296x729_16%2D9.jpg&w=570', 'A.J. Green had 75 receptions for 1,078 yards and eight touchdowns last season but called his stats '),
(143, 'Golden Knights', 'http://a.espncdn.com/combiner/i?img=%2Fphoto%2F2018%2F0418%2Fr358071_1296x729_16%2D9.jpg&w=570', 'A balanced scoring attack has been critical to the Golden Knights\' success. Juan Ocampo/NHLI via Getty Images'),
(144, 'Victor Oladipo', 'http://images.performgroup.com/di/library/omnisport/95/3e/oladipo-victor-getty-ftr_1an5i7dfxd5cz1azn43kovbo80.jpg?t=-887833790&w=960&quality=70', 'Getty Images'),
(145, 'Francisco Rodriguez', 'http://www.latimes.com/resizer/JepdYbBKYPxf7f34AWakFmyy_Ao=/1400x0/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/2I3POSOO3RHF3OLJUNQD3IPCEQ.jpg', 'Getty Images'),
(146, 'Byron Maxwell', 'https://cdn-s3.si.com/s3fs-public/styles/marquee_large_2x/public/2015/08/25/byron-maxwell-eric-rowe-mmqb-650-392.jpg?itok=WP2alMet', 'Getty Images'),
(147, 'Hart Trophy', 'https://nhl.bamcontent.com/images/photos/287516434/1024x576/cut.jpg', 'Getty Images'),
(148, 'Bastian Schweinsteiger', 'https://www.360nobs.com/wp-content/uploads/2017/04/eq44iARnQHi0vRWDDA95_GettyImages-663435828-740x431.jpg', 'Schweini action vs Toronto 180428 USA Today Images');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `headline` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(8192) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_image` int(11) NOT NULL,
  PRIMARY KEY (`id_news`),
  KEY `fk_id_category` (`id_category`),
  KEY `fk_id_image` (`id_image`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `date`, `headline`, `content`, `id_category`, `id_image`) VALUES
(123, '2018-04-20 12:42:07', 'Joel Embiid is the latest in a long line of masked NBA stars', 'Philadelphia 76ers All-Star center Joel Embiid has missed the last seven games after suffering an orbital bone fracture following an on-court collision with teammate Markelle Fultz on March 28.\r\n\r\nWhen he returns to the court -- likely in the first round of the Sixers\' playoff series against the Miami Heat -- Embiid will don a face mask, joining a handful of recent NBA stars who suffered facial injuries and were forced to wear protective gear.\r\n\r\nEmbiid showed off a dramatic black mask on the sideline at the Sixers\' home finale Wednesday night and leveraged the situation in his favor on social media -- as he has done in almost every scenario this season -- by posting a self-deprecating Instagram photo.\r\n\r\n\r\nJoel Embiid will likely have to switch to a clear mask once he returns, given the NBA\'s preference. Embiid said it is \"unlikely but still a chance\" that he plays in the Sixers\' first playoff game this weekend.', 1, 120),
(139, '2018-04-30 10:27:34', 'David Villa brace sends New York City FC past FC Dallas', 'David Villa scored two goals to help New York City FC beat FC Dallas 3-1 on Sunday night.\r\n\r\nVilla converted from the spot to give NYCFC a 2-1 lead in the 36th minute after Reto Ziegler was called -- after video review -- for a hand ball in the area.\r\n\r\nNew York City\'s Jesus Medina opened the scoring in the third, poking home a putback Jo Inge Berget\'s shot that was stopped by Jimmy Maurer. Villa stole it on the left side, beat a defender and dropped it to Anton Tinnerholm who first-timed it back to Villa near the goal line. Villa tapped it to Berget, whose one-timer was deflected by Maurer off the far post, but Medina was there for the side-net finish from point-blank range.\r\n\r\nSantiago Mosquera answered for FC Dallas in the 10th minute, rolling a feed from Maximiliano Urruti past goalkeeper Sean Johnson. Urruti stole it near midfield, cutback to evade a defender and then tapped it with the outside of his foot to Mosquera, who took a dribble before side-netting the finish from the top of the box.\r\n\r\nVilla, who missed three games in March due to a quadriceps injury, capped the scoring with his fourth goal of the season in the 69th minute.\r\n\r\nDallas came in without having conceded a goal in 208 minutes.', 5, 141),
(140, '2018-04-30 10:30:11', 'A.J. Green wants to wipe slate clean after \'crummy\' season', 'CINCINNATI -- Cincinnati Bengals wide receiver A.J. Green would prefer to leave 2017 behind.\r\n\r\nThe statistics of his season won\'t ever quite tell the story: 16 starts, 75 receptions, 1,078 receiving yards and 8 touchdowns. Many wide receivers might consider that a solid year, but Green thought it stunk.\r\n\r\n\"My stats were crummy,\" he said. \"I\'m never one to put my personal stats up front, I just go out there and play.\"\r\n\r\nGreen said he knows he can\'t let the frustration overcome him as it did at times last year. For a man who prefers actions over words, he probably talked more last year than he ever wished.\r\n\r\nThere was the time he told reporters the team was \"playing like s---\" after a Thursday night loss in Week 2. He clearly wasn\'t the only one who thought so, as the tension simmering in the locker room that night after a 13-9 loss to the Texans was palpable. Offensive coordinator Ken Zampese was fired the next morning.\r\n\r\nGreen also had to issue an embarrassed apology after he was ejected for fighting with Jaguars cornerback Jalen Ramsey later in the season.\r\n\r\n\"There will be years like that,\" Green said. \"Just got to, don\'t get as frustrated, stay true to who I am, and continue to play. ... It was a frustrating year for me personally, just not playing the way I need to play, or whatever it was. I wasn\'t focused last year like I was [in] previous years.\"\r\n\r\nGreen is normally the most reliable player the Bengals have on offense, but for whatever reason, things weren\'t clicking with him -- or anyone else -- last season. Passes he normally would have caught bounced off his fingers and into defenders\' arms. Deep passes from quarterback Andy Dalton just didn\'t connect.\r\n\r\n\"The deep ball definitely is one of the things we need to focus on,\" Green said. \"We left a lot of plays out there. ... It [was] a combination of everything. We just have to put everything together.\"\r\n\r\nAlong with a new system from offensive coordinator Bill Lazor, Green will also have a new wide receivers coach for the first time in his NFL career, something he thinks will give energy to the offense.\r\n\r\n\"I was blessed to have [James Urban] for my first seven years and really have no change to the offense,\" Green said. \"This is going to be a challenge. I\'m ready for that.\"', 2, 142),
(141, '2018-04-30 10:32:55', 'Learn the right lesson from Vegas', 'Somewhere in between the slack-jawed awe over the Vegas Golden Knights\' incredible regular and postseason runs (\"...but their PDO!!!\") and the constant yammering from critics about how rigged the expansion draft was in their favor (which ignores the incredible job GM George McPhee and AGM Kelly McCrimmon did in selecting players and leveraging opponents) lies the real lesson from this record-shattering inaugural season:\r\n\r\nPlay everyone.\r\n\r\nMy old Puck Daddy colleague Justin Bourne of The Athletic touched on it in a recent column (paywall): \"When you get healthy-scratched for weeks on end before finally dressing, the ideal situation isn\'t playing 10 minutes with no special teams alongside fourth liners. That\'s been the biggest difference for all those Vegas players who could barely crack a lineup -- suddenly they\'re getting the same opportunities as the league\'s best players, and boy howdy, don\'t your stats look better when you get time on the power play and log 17 minutes.\"\r\n\r\nTo use some old hockey clichÃ©s, everyone in that Vegas room feels like he\'s \"pullin\' the rope\" or \"rowin\' the boat\" or whatever. \"We roll four lines, we play all six defensemen, everyone is a big part of our group, you know?\" said coach Gerard Gallant. He said that after they smoked the San Jose Sharks 7-0, but it could have been from any game this season.\r\n\r\nSeven different Golden Knights scored goals in that game. Seven different Golden Knights scored goals in their first-round sweep of the Los Angeles Kings. I can\'t recall another team that sported as dominant a top line as the Jonathan Marchessault trio and yet wasn\'t over-reliant on it to bail them out with frequency. The Golden Knights are getting different heroes every night.\r\n\r\nPlay everyone. That\'s the lesson.', 4, 143),
(142, '2018-04-30 11:16:16', 'Oladipo\'s last-minute 3 doesn\'t win it for Pacers', 'Victor Oladipo\'s 3-pointer as time expired wasn\'t enough to be a game winner for the Indiana Pacers, but it was enough for those who bet the team to cover the spread.\r\n\r\nMost sportsbooks opened Game 7 with the Cavaliers as 6.5-point favorites and closed at either 5 or 5.5. Oladipo\'s 3 cut the Cavaliers\' margin of victory from seven points to four, 105-101.\r\n\r\n\"It was probably a swing of $3 million to $5 million in Nevada,\" said Johnny Avello, head of race and sportsbook for the Wynn in Las Vegas. \"These types of things happen five or more times a week in our industry, whether it\'s a two-run home run to cover the run line in the bottom of the ninth or an empty-net goal in the last minute of an NHL game.\"\r\n\r\nThe Oladipo shot got more attention on social media due to the larger audience watching the game.\r\n\r\n\"We need the Cavs,\" Westgate assistant manager Ed Salmons told ESPN shortly after tipoff. \"The smart money was on the Pacers.\"\r\n\r\nAt William Hill\'s Nevada sportsbooks, 70 percent of the money bet on the point spread on the game was on the Pacers.\r\n\r\nScott Shelton, sportsbook supervisor at the Mirage, told sports betting site Covers.com that the Pacers\' covering but losing was the worst outcome for the sportsbook. That\'s because the sportsbook had a five-figure liability on the Pacers for the game but a six-figure win in the offing if the Pacers took the series.', 1, 144),
(143, '2018-04-30 10:43:12', 'Francisco Rodriguez reaches deal with Long Island Ducks', 'Francisco Rodriguez will continue his baseball career with the independent Long Island Ducks.\r\n\r\n\"We have agreed to terms with Francisco Rodriguez,\" Ducks president and general manager Michael Pfaff told Newsday. \"The goal is to get him in here as soon as possible. We anticipate his arrival this week. As soon as he arrives, we\'ll issue an official press release once he signs his contract.\"\r\n\r\nRodriguez, 36, was released by the Philadelphia Phillies last month after posting a 5.40 ERA in eight spring training appearances.\r\n\r\nIn 28 games with the Detroit Tigers last season, Rodriguez was 2-5 with a 7.82 ERA, seven saves and six blown saves.\r\n\r\nThe right-hander, a six-time All-Star known as \"K-Rod,\" is a three-time league leader in saves (2005, 2006, 2008) and is fourth all-time in the category with 437 in 16 major league seasons.', 3, 145),
(144, '2018-04-30 10:47:40', 'Source: Seahawks reach one-year deal with Byron Maxwell', 'The Seattle Seahawks have agreed to a one-year deal with cornerback Byron Maxwell, a source tells ESPN\'s Adam Schefter.\r\n\r\nThe deal is worth up to $3 million.\r\n\r\nThe move fills what was arguably the Seahawks\' top roster need. It remained such when they opted to not address that position in the first round in favor of selecting San Diego State running back Rashaad Penny with the 27th pick.\r\n\r\nThe Seahawks are without a second-round pick as it stands now. That would lessen their chances of emerging from this draft with a cornerback capable of stepping in and playing immediately the way Maxwell could.\r\n\r\nThe 30-year-old Maxwell finished an up-and-down 2017 season for the Seattle Seahawks on a high note by performing well as a fill-in for Richard Sherman.\r\n\r\nSeattle cut Sherman and nickelback Jeremy Lane earlier this offseason while another former starter, DeShawn Shead, left in free agency. Before Maxwell, the only cornerback Seattle had added in free agency was former 49ers starter Dontae Johnson on a one-year deal.\r\n\r\nReleased by the Miami Dolphins in October after losing his starting job, Maxwell returned to the Seahawks in November after Sherman suffered a season-ending Achilles injury. He played the majority of his first game back after rookie right cornerback Shaquill Griffin suffered a concussion on the opening possession, and Maxwell remained in the starting lineup for the final six games, eventually replacing Jeremy Lane on the left side.\r\n\r\n\"I thought that Byron Maxwell did a great job to finish,\" Seahawks coach Pete Carroll said after the season. \"It was exactly what we would\'ve hoped would happen, that when we get him back in our system and we turn him back into the style that we play in, that he might recover the same kind of play. I think he did.\"\r\n\r\nHe had a hand in one of the bigger defensive plays of the season, when he forced a Dez Bryant fumble in a Christmas Eve game against the Dallas Cowboys, which Seattle won to keep its playoff hopes alive. He finished the season with 46 tackles, two forced fumbles and an interception.\r\n\r\nA sixth-round pick by Seattle in 2011, Maxwell started 17 games between the 2013 and 2014 seasons before signing a lucrative free-agent deal in 2015 with the Philadelphia Eagles, who then traded him to Miami after one season.', 2, 146),
(145, '2018-04-30 11:07:54', 'Hart Trophy finalists', 'New Jersey\'s Taylor Hall, Los Angeles\' Anze Kopitar and Colorado\'s Nathan MacKinnon are finalists for the 2018 Hart Trophy as the NHL\'s most valuable player.\r\n\r\nHall, 26, was sixth in the NHL in scoring with 93 points (39 goals, 54 points) in his second season with the Devils, who have had only one previous MVP finalist -- goalie Martin Brodeur -- but never a winner.\r\n\r\nThe 41-point differential between Hall and the next-highest-scoring Devil, Nico Hischier (52), was the biggest gap in the league since 2007-08 (Washington\'s Alex Ovechkin 112, Nicklas Backstrom 69).\r\n\r\nKopitar, a first-time nominee, set career highs in goals (35), assists (57) and points (92) while finishing tied for seventh in the league in scoring. Kopitar, 30, is also a finalist for this season\'s Selke Trophy as the league\'s best defensive forward.\r\n\r\nWayne Gretzky (1989) is the the only King to have won the Hart Trophy.\r\n\r\nMacKinnon\'s 97-point season helped lead the Avalanche to a 47-point improvement in the standings, the fourth-highest year-to-year gain in NHL history.\r\n\r\nMacKinnon, 22, previously won the Calder Trophy as the league\'s top rookie. He would be the third player in franchise history to win the Hart, along with Joe Sakic (2001) and Peter Forsberg (2003).\r\n\r\nThe winner, based on voting by the Pro Hockey Writers Association, will be announced June 20 at the NHL Awards event in Las Vegas.', 4, 147),
(146, '2018-04-30 11:27:31', 'Schweini\'s goal helps Chicago ', 'Alan Gordon scored an equalizer in second-half injury time as the Chicago Fire rallied for a 2-2 draw against Toronto FC on Saturday.\r\n\r\nBastian Schweinsteiger had the other goal for the Fire, while Jonathan Osorio and Victor Vazquez scored for Toronto.\r\n\r\nWith Chicago trailing 2-0, Schweinsteiger\'s header from a Diego Campos corner kick beat Alex Bono in the 69th minute.\r\n\r\nGordon put home the rebound off Schweinsteiger\'s shot to pull the Fire even in the dying seconds.\r\n\r\nThe Reds were playing with a depleted back end, with four defenders unavailable because of injuries. Forward Jozy Altidore was also out after he was injured in Wednesday\'s CONCACAF Champions League Final loss to Chivas in Guadalajara.\r\n\r\nToronto, who have just one win so far in MLS this season, avoided its third consecutive loss in league play.\r\n\r\nOsorio, who won the Golden Boot in the CCL, put Toronto on the board in the eighth minute by tapping in a cross from Sebastian Giovinco for his first goal of the season.\r\n\r\nThe Reds appeared to take a 2-0 lead in the 11th minute when Giovinco hit a first-time shot from a Nicolas Hasler pass by goalkeeper Richard Sanchez, but Hasler was ruled offside after a video review.\r\n\r\nVazquez doubled Toronto\'s lead in the 22nd minute as his chipped shot landed just inside the far post.', 5, 148);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `email`, `user_type`, `password`) VALUES
(1, 'admin', 'adm@in.com', 'admin', '12345'),
(24, 'josipa', 'jo@s.ipa', 'user', '111'),
(25, 'jeff', 'je@ff.com', 'user', '111');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_id_news` FOREIGN KEY (`id_news`) REFERENCES `news` (`id_news`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_id_category` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_image` FOREIGN KEY (`id_image`) REFERENCES `images` (`id_image`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
