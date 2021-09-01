--
-- Database: `amg`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `donations` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`donations`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `groupname` varchar(20) NOT NULL,
  `reg_date` datetime NOT NULL,
  `disabled` int(11) NOT NULL,
  `color` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--


--
-- Table structure for table `group_requests`
--

CREATE TABLE `group_requests` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `group` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `highscores`
--

CREATE TABLE `highscores` (
  `id` int(11) NOT NULL UNIQUE AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `money_earned` bigint(11) NOT NULL,
  `pickaxe` varchar(20) NOT NULL,
  `worker_opm` bigint(11) NOT NULL,
  `army_strength` bigint(11) NOT NULL,
  `scientists` int(11) NOT NULL,
  `achievements` text NOT NULL,
  `datetime` datetime NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `online_users` (
  `session` char(100) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `txn_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NULL UNIQUE AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `password` tinytext NOT NULL,
  `session` tinytext NOT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL,
  `save` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `disabled` int(11) NOT NULL DEFAULT '0',
  `forum_mute` int(11) NOT NULL DEFAULT '0',
  `forum_mute_length` int(11) NOT NULL DEFAULT '0',
  `forum_ban` int(1) NOT NULL DEFAULT '0',
  `rights` int(11) NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  `donations` decimal(10,2) NOT NULL DEFAULT '0.00',
  `avatar` varchar(10) NOT NULL DEFAULT '0',
  `showDonatorBenefits` int(11) NOT NULL DEFAULT '0',
  `salt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;