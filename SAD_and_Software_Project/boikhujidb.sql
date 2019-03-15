-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: den1.mysql4.gear.host
-- Generation Time: Sep 18, 2018 at 05:47 PM
-- Server version: 5.7.19-log
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boikhujidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AccessLevel` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AccessLevel`, `Name`, `Email`, `Password`) VALUES
(1, 'Samon', 'samon@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_ID` int(11) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Publisher` varchar(100) NOT NULL,
  `Publication_Date` varchar(20) NOT NULL,
  `Language` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Uploader` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Upload_Date` date DEFAULT NULL,
  `genre` varchar(200) DEFAULT NULL,
  `Location` varchar(100) NOT NULL,
  `Img_code` varchar(200) DEFAULT NULL,
  `Description` text,
  `Quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_ID`, `ISBN`, `Title`, `Author`, `Publisher`, `Publication_Date`, `Language`, `Status`, `Uploader`, `Price`, `Upload_Date`, `genre`, `Location`, `Img_code`, `Description`, `Quantity`) VALUES
(1, '9781615890088', 'The Time Machine', 'H. G. Wells', 'Atlantic Publisher', '2002-08-01', 'English', 'New', 'Admin', '1238.00', '2018-08-01', 'Science Fiction', 'Dhaka', 'thetimemachine.jpg', 'The Time Machine is a science fiction novella by H. G. Wells, ... ', 0),
(2, '9781501174476', 'Ohio', 'Stephen Markley ', 'Simon Schuster', '2018-08-21', 'English', 'New', 'Admin', '1593.00', '2018-09-02', 'Mystery', 'Dhaka', 'ohio.jpg', 'The debut of a major talent; a lyrical and emotional novel set in an archetypal small town in northeastern Ohio—a region ravaged by the Great Recession, an opioid crisis, and the wars in Iraq and Afghanistan—depicting one feverish, fateful summer night in 2013 when four former classmates converge on their hometown, each with a mission, all haunted by the ghosts of their shared histories.', 6),
(3, ' 9780743264730', 'Einstein: His Life and Universe', 'Walter Isaacson', 'Simon Schuster', '2007-04-10', 'English', 'New', 'Admin', '1078.00', '2018-07-05', 'Biography ', 'Dhaka', 'einstein.jpg', 'Einstein: His Life And Universe takes a close look at the life of Albert Einstein, beginning in how his childhood shaped him, what his biggest discoveries and personal struggles were and how his focus changed in later years, without his genius ever fading until his very last moment.', 2),
(4, '9789352645060', 'The White Tiger', 'Aravind Adiga', 'Harpercollins publishers', '2017-01-01', 'English', 'New', 'Admin', '630.00', '2018-09-15', 'Fiction', 'Dhaka', 'white.jpg', 'The White Tiger is framed as a narrative letter written over seven nights to the Chinese Premier Wen Jiabao; it is a tale of servitude, economic prosperity, and murder. The novel employs a first-person narrator, Balram Halwai, whose unique, sarcastic voice carries the reader through his life in “new India.', 2),
(5, '9780838581100 ', 'The Principles and Practice of Medicine ', 'John D Stobo , Thomas A Traill ', 'Tata McGraw-Hill', '1996-01-01', 'English', 'New', 'Admin', '9140.00', '2018-07-05', 'Medical', 'Khulna', 'The Principles and Practice of Medicine.jpg', 'The Principles and Practice of Medicine: Designed for the Use of Practitioners and Students of Medicine is a medical textbook by Sir William Osler. It was first published in 1892 while Osler was Professor of Medicine at Johns Hopkins University.', 4),
(6, '9789332901384', 'Database System Concepts', 'Abraham Silberschatz ', 'Tata McGraw-Hill ', '2013-01-10', 'English', 'New', 'Admin', '1550.00', '2018-07-25', 'Computer Science & Engineering', 'Khulna', 'Database System Concepts.jpg', 'Database System Concepts, by Abraham Silberschatz and Hank Korth, is a classic textbook on database systems. It is often called the sailboat book, because its first edition had on its cover a number of sailboats, labelled with the names of various database models.', 1),
(7, '9780262033848', 'Introduction to Algorithms ', 'Thomas H. Cormen ', 'The MIT Press  ', '2009-02-10', 'English', 'New', 'Admin', '7200.00', '2018-07-25', 'Computer Science & Engineering', 'Dhaka', 'Introduction to Algorithms.jpg', 'Introduction to Algorithms is a book by Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein. The book has been widely used as the textbook for algorithms courses at many universities[1] and is commonly cited as a reference for algorithms in published papers, with over 10,000 citations documented on CiteSeerX. The book sold half a million copies during its first 20 years. Its fame has led to the common use of the abbreviation \"CLRS\" (Cormen, Leiserson, Rivest, Stein), or, in the first edition, \"CLR\" (Cormen, Leiserson, Rivest).\r\n\r\nIn the preface, the authors write about how the book was written to be comprehensive and useful in both teaching and professional environments. Each chapter focuses on an algorithm, and discusses its design techniques and areas of application. Instead of using a specific programming language, the algorithms are written in Pseudocode. The descriptions focus on the aspects of the algorithm itself, its mathematical properties, and emphasize efficiency.', 3),
(8, '9780061351419', 'The Art of War : The New Translation', 'Sun Tzu ', 'Harper Perennial ', '2008-01-01', 'English', 'New', 'Admin', '898.00', '2018-07-25', 'History and Tradition ', 'Rajshahi', 'The Art of War The New Translation.jpg', 'The Art of War is an ancient Chinese military treatise dating from the Spring and Autumn Period (roughly 771 to 476 BC). The work, which is attributed to the ancient Chinese military strategist Sun Tzu (\"Master Sun\", also spelled Sunzi), is composed of 13 chapters. Each one is devoted to a distinct aspect of warfare and how that applies to military strategy and tactics. For almost 1,500 years it was the lead text in an anthology that would be formalised as the Seven Military Classics by Emperor Shenzong of Song in 1080. The Art of War remains the most influential strategy text in East Asian warfare.[1] It has a profound influence on both Eastern and Western military thinking, business tactics, legal strategy and beyond.', 4),
(9, '9781847940681', 'Execution', 'Ram Charan , Bossidy Larry ', 'Random House ', '2011-01-01', 'English', 'New', 'Admin', '1435.00', '2018-09-03', ' Non-Fiction', 'Chittagong', 'Execution.jpg', 'Execution is a 1958 war novel by Canadian novelist and Second World War veteran Colin McDougall (1917–1984). Although it won McDougall the 1958 Governor Generals Award for Englishlanguage fiction, it was his only novel, and after publishing it to wide acclaim he retreated into a quiet life as Registrar of McGill University in Montreal.', 4),
(10, '9780994054401', 'The Deal', 'Elle Kennedy', 'Author', '2015-02-24', 'English', 'New', 'Admin', '1086.68', '2018-09-02', 'Sports', 'Chittagong', 'The Deal.jpg', 'The Deal is a novel by Canadian author, Elle Kennedy. The novel is the first book in the authors New Adult series, Off Campus. The novel follows the relationshipbetween Hannah Wells, a college senior, who Garret Graham, the overly confident ice hockey captain.', 5),
(11, '9781615890088', 'The Time Machine', 'H. G. Wells', 'Atlantic Publisher', '2002-08-01', 'English', 'Old', 'samsun_nahar@gmail.com', '700.00', '2018-08-01', 'Science Fiction', 'Rajshahi', 'thetimemachine.jpg', 'The Time Machine is a science fiction novella by H. G. Wells, ... ', 1),
(12, '9781501174476', 'Ohio', 'Stephen Markley', 'Simon Schuster', '2018-08-21', 'English', 'Old', 'shaira@gmail.com', '700.00', '2018-09-02', 'Mystery', 'Rajshahi', 'ohio.jpg', 'The debut of a major talent; a lyrical and emotional novel set in an archetypal small town in northeastern Ohio—a region ravaged by the Great Recession, an opioid crisis, and the wars in Iraq and Afghanistan—depicting one feverish, fateful summer night in 2013 when four former classmates converge on their hometown, each with a mission, all haunted by the ghosts of their shared histories.', 1),
(13, '9780743264730', 'Einstein: His Life and Universe', 'Walter Isaacson', 'Simon Schuster', '2007-04-10', 'English', 'Old', 'oliver@gmail.com', '750.00', '2018-07-05', 'Biography', 'Chittagong', 'einstein.jpg', 'Einstein: His Life And Universe takes a close look at the life of Albert Einstein, beginning in how his childhood shaped him, what his biggest discoveries and personal struggles were and how his focus changed in later years, without his genius ever fading until his very last moment.', 1),
(14, ' 9780525949695', 'This Is Your Brain on Music: The Science of a Human Obsession ', 'Daniel J. Levitin', 'Dutton Adult', '2006-08-03', 'English', 'New', 'Admin', '3907.50', '2018-07-01', 'Music', 'Dhaka', 'music.jpg', 'Neuroscientist and professional musician Levitin presents a fascinating exploration of the relationship between music and the mind--and the role of melodies in shaping our lives. Photos throughout', 6),
(15, '9780099570332', 'The Sense of An Ending', 'Julian Barnes', 'Vintage Books', '2012-01-01', 'English', 'New', 'Admin', '630.00', '2018-09-15', 'Fiction', 'Dhaka', 'sense.jpg', 'A business owner (Jim Broadbent) reunites with his first love (Charlotte Rampling) after a letter and a diary force him to confront the past.', 3),
(16, '9780439708180', 'Harry Potter and the Sorcerers Stone', 'J.K. Rowling,\r\nMary GrandPré', 'Scholastic Inc', '1997-06-26', 'English', 'New', 'Admin', '5912.87', '2018-07-01', 'Fantasy', 'Chittagong', 'Harry1.jpg', 'Harry Potter\'s life is miserable. His parents are dead and he\'s stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he\'s a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.\r\n\r\nAfter a lifetime of bottling up his magical powers, Harry finally feels like a normal kid. But even within the Wizarding community, he is special. He is the boy who lived: the only person to have ever survived a killing curse inflicted by the evil Lord Voldemort, who launched a brutal takeover of the Wizarding world, only to vanish after failing to kill Harry.\r\n\r\nThough Harry\'s first year at Hogwarts is the best of his life, not everything is perfect. There is a dangerous secret object hidden within the castle walls, and Harry believes it\'s his responsibility to prevent it from falling into evil hands. But doing so will bring him into contact with forces more terrifying than he ever could have imagined.\r\n\r\nFull of sympathetic characters, wildly imaginative situations, and countless exciting details, the first installment in the series assembles an unforgettable magical world and sets the stage for many high-stakes adventures to come.', 4),
(17, '9780553588484', 'A Game of Thrones ', 'George R.R. Martin', 'Bantam', '1996-08-06', 'English', 'New', 'Admin', '3826.08', '2018-08-04', 'Fantasy', 'Chittagong', 'got.jpg', '\r\nHere is the first volume in George R. R. Martin’s magnificent cycle of novels that includes A Clash of Kings and A Storm of Swords. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.\r\n\r\nA GAME OF THRONES\r\n\r\nLong ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.\r\n\r\nHere an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his throne; and a determined woman undertakes the most treacherous of journeys. Amid plots and counterplots, tragedy and betrayal, victory and terror, the fate of the Starks, their allies, and their enemies hangs perilously in the balance, as each endeavors to win that deadliest of conflicts: the game of thrones.\r\n', 2),
(18, '9780553588484', 'A Game of Thrones ', 'George R.R. Martin', 'Bantam', '1996-08-06', 'English', 'Old', 'shaira@gmail.com', '83.10', '2018-08-14', 'Fantasy', 'Rajshahi', 'got.jpg', '\r\nHere is the first volume in George R. R. Martin’s magnificent cycle of novels that includes A Clash of Kings and A Storm of Swords. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin’s stunning series is destined to stand as one of the great achievements of imaginative fiction.\r\n\r\nA GAME OF THRONES\r\n\r\nLong ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.\r\n\r\nHere an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his throne; and a determined woman undertakes the most treacherous of journeys. Amid plots and counterplots, tragedy and betrayal, victory and terror, the fate of the Starks, their allies, and their enemies hangs perilously in the balance, as each endeavors to win that deadliest of conflicts: the game of thrones.\r\n', 1),
(19, '9788177562781', 'বসুধারা ', 'তিলোত্তমা মজুমদার', 'আনন্দ পাবলিশার্স', '2002-01-01', 'Bangla', 'Old', 'clay@gmail.com', '280.00', '2018-09-15', 'Nobel', 'Dhaka', 'basundhara.jpg', 'আগে বলা হত জনপদ। এখন পাড়া। এর নানা স্তর। ধোঁয়া যেমন, নানা বায়ুস্তর ঘুরে পাক খায় এবং নিজেই বায়ু হয়ে ওঠে একসময়। আর আগেকার বায়ুর অভিব্যক্তিতে ঘটিয়ে দেয় রকমফের – সেই প্রক্রিয়ায় আবহমাঙ্কালের জীবনধারা পাক খেতে থাকে জনপদের নানা স্তর ছুঁয়ে, ভেদ করে। সময়ের সঙ্গে সঙ্গে জীবনের বাইরেকার রং পালটায়। বদলে যায় চাকচিক্য। কিন্তু আসলে কিছুই কি বদলায়?', 2),
(20, '9780099433620', 'Youth', 'J M Coetzee', 'Vintage Books', '2003-01-01', 'English', 'Newe', 'Admin', '718.00', '2018-09-15', 'Fiction', 'Chittagong', 'youth.jpg', 'The second installment of J. M. Coetzee\'s fictionalized \"memoir\" explores a young man\'s struggle to experience life to its full intensity and transform it into art. The narrator of Youth has long been plotting an escape-from the stifling love of his overbearing mother, a father whose failures haunt him, and what he is sure is impending revolution in his native country of South Africa. Arriving at last in London in the 1960s, however, he finds neither poetry nor romance and instead begins a dark pilgrimage into adulthood. ', 2),
(21, ' 9780450040184', 'The Shining ', 'Stephen King  ', 'New English Library ', '1980-07-01', 'English', 'New', 'Admin', '3491.15', '2018-08-23', 'Horror', 'Rajshahi', 'shining.jpg', '\r\nJack Torrance\'s new job at the Overlook Hotel is the perfect chance for a fresh start. As the off-season caretaker at the atmospheric old hotel, he\'ll have plenty of time to spend reconnecting with his family and working on his writing. But as the harsh winter weather sets in, the idyllic location feels ever more remote...and more sinister. And the only one to notice the strange and terrible forces gathering around the Overlook is Danny Torrance, a uniquely gifted five-year-old.\r\n\r\n', 3),
(22, ' 9780450040184', 'The Shining ', 'Stephen King  ', 'New English Library ', '1980-07-01', 'English', 'Old', 'oliver@gmail.com', '150.26', '2018-08-30', 'Horror', 'Chittagong', 'shining.jpg', '\r\nJack Torrance\'s new job at the Overlook Hotel is the perfect chance for a fresh start. As the off-season caretaker at the atmospheric old hotel, he\'ll have plenty of time to spend reconnecting with his family and working on his writing. But as the harsh winter weather sets in, the idyllic location feels ever more remote...and more sinister. And the only one to notice the strange and terrible forces gathering around the Overlook is Danny Torrance, a uniquely gifted five-year-old.\r\n\r\n', 1),
(23, '9780143038412', 'Eat, Pray, Love', 'Elizabeth Gilbert', 'Riverhead Books', '2007-02-01', 'English', 'New', 'Admin', '586.75', '2018-08-23', 'Travel', 'Chittagong', 'eat.jpg', '\r\nA celebrated writer\'s irresistible, candid, and eloquent account of her pursuit of worldly pleasure, spiritual devotion, and what she really wanted out of life.\r\n\r\nAround the time Elizabeth Gilbert turned thirty, she went through an early-onslaught midlife crisis. She had everything an educated, ambitious American woman was supposed to want—a husband, a house, a successful career. But instead of feeling happy and fulfilled, she was consumed with panic, grief, and confusion. She went through a divorce, a crushing depression, another failed love, and the eradication of everything she ever thought she was supposed to be.\r\n\r\nTo recover from all this, Gilbert took a radical step. In order to give herself the time and space to find out who she really was and what she really wanted, she got rid of her belongings, quit her job, and undertook a yearlong journey around the world—all alone. Eat, Pray, Love is the absorbing chronicle of that year. Her aim was to visit three places where she could examine one aspect of her own nature set against the backdrop of a culture that has traditionally done that one thing very well. In Rome, she studied the art of pleasure, learning to speak Italian and gaining the twenty-three happiest pounds of her life. India was for the art of devotion, and with the help of a native guru and a surprisingly wise cowboy from Texas, she embarked on four uninterrupted months of spiritual exploration. In Bali, she studied the art of balance between worldly enjoyment and divine transcendence. She became the pupil of an elderly medicine man and also fell in love the best way—unexpectedly.\r\n\r\nAn intensely articulate and moving memoir of self-discovery, Eat, Pray, Love is about what can happen when you claim responsibility for your own contentment and stop trying to live in imitation of society’s ideals. It is certain to touch anyone who has ever woken up to the unrelenting need for change.\r\n', 7),
(25, '9789848484434', 'দুর্গেশনন্দিনী', 'বঙ্কিমচন্দ্র চট্টোপাধ্যায় ', ' তিশা বুক্‌স ট্রেড ', '2007-02-01', 'Bangla', 'New', 'Admin', '150.00', '2018-08-25', 'Nobel', 'Dhaka', 'durgeshnondini.jpg', '\r\nদিল্লীশ্বরের প্রধান সেনাপতি অম্বররাজ মানসিংহের পুত্র কুমার জগৎসিংহ বিষ্ণুপুর থেকে মান্দারণ যাত্রাকালে ঝড়ের কবলে পড়ে শৈলেশ্বর মহাদেবের মন্দিরে আশ্রয় নেন। সেখানে ঘটনাচক্রে মান্দারণ দুর্গাধিপতি জয়ধর সিংহের একমাত্র পুত্র মহারাজ বীরেন্দ্র সিংহের স্ত্রী বিমলা ও তাঁর কন্যা দুর্গেশনন্দিনী তিলোত্তমার সঙ্গে তাঁর সাক্ষাৎ হয়।\r\n', 3),
(26, '9789847602387', 'শ্রেষ্ঠ উপন্যাস ', 'রবীন্দ্রনাথ ঠাকুর  ', '  	শিকড় ', '2007-01-01', 'Bangla', 'New', 'Admin', '800.00', '2018-08-25', 'Nobel', 'Dhaka', 'ses.png', '\r\nরবীন্দ্রনাথের উপন্যাসগুলি বাঙালি পাঠকসমাজে জনপ্রিয়তা পেলেও বহির্বঙ্গে এগুলি খুব একটা পরিচিতি পায়নি। পরবর্তীকালে সত্যজিৎ রায় ঘরে বাইরে চলচ্চিত্রায়ণের মাধ্যমে উপন্যাসটিকে পাশ্চাত্য বিদ্বজ্জন সমাজে তুলে ধরেন। রবীন্দ্র-উপন্যাসের আরও দুটি বহু-প্রশংসিত চলচ্চিত্রায়ণ হল ঋতুপর্ণ ঘোষ পরিচালিত চোখের বালি ও সুমন মুখোপাধ্যায় পরিচালিত চতুরঙ্গ।                     \r\n', 3),
(27, '9789848812761', 'প্রজেক্ট নেবুলা', 'মুহম্মদ জাফর ইকবাল ', 'জ্ঞানকোষ প্রকাশনী ', '2015-07-01', 'Bangla', 'New', 'Admin', '150.00', '2018-07-25', 'Science Fiction ', 'Dhaka', 'projectnebula.jpg', 'জাফর ইকবাল বিশ্ববিদ্যালয় জীবন থেকেই লেখালেখি করেন। তার প্রথম বৈজ্ঞানিক কল্পকাহিনীমূলক গল্প কপোট্রনিক ভালোবাসা সাপ্তাহিক বিচিত্রায় প্রকাশিত হয়েছিল। গল্পটি পড়ে একজন পাঠক দাবি করেন সেটি বিদেশি গল্প থেকে চুরি করা। এর উত্তর হিসেবে তিনি একই ধরণের বেশ কয়েকটি বিচিত্রার পরপর কয়েকটি সংখ্যায় লিখে পাঠান। তার মার্কিন যুক্তরাষ্ট্রে অবস্থানকালে এই গল্পগুলো নিয়ে কপোট্রনিক সুখ-দুঃখ নামে একটি বই প্রকাশিত হয়। এই বইটি পড়ে শহীদ-জননী জাহানারা ইমাম খুবই প্রশংসা করেন এবং এই ঘটনায় তিনি এ ধরণের আরও বই লিখতে উৎসাহিত হন। তার প্রথম দিকের বিজ্ঞান কল্পকাহিনীগুলো পাঠকমহলে সমাদৃত হয়। সুদূর আমেরিকাতে বসে তিনি বেশ কয়েকটি বৈজ্ঞানিক কল্পকাহিনী রচনা করেন।', 2),
(28, '9844584736', 'দীপু নাম্বার টু ', 'মুহম্মদ জাফর ইকবাল ', 'সময় প্রকাশন ', '2014-01-15', 'Bangla', 'New', 'Admin', '150.00', '2018-07-05', 'Thriller & adventure ', 'Dhaka', 'dipu.jpg', 'জাফর ইকবাল বিশ্ববিদ্যালয় জীবন থেকেই লেখালেখি করেন। তার প্রথম বৈজ্ঞানিক কল্পকাহিনীমূলক গল্প কপোট্রনিক ভালোবাসা সাপ্তাহিক বিচিত্রায় প্রকাশিত হয়েছিল। গল্পটি পড়ে একজন পাঠক দাবি করেন সেটি বিদেশি গল্প থেকে চুরি করা। এর উত্তর হিসেবে তিনি একই ধরণের বেশ কয়েকটি বিচিত্রার পরপর কয়েকটি সংখ্যায় লিখে পাঠান। তার মার্কিন যুক্তরাষ্ট্রে অবস্থানকালে এই গল্পগুলো নিয়ে কপোট্রনিক সুখ-দুঃখ নামে একটি বই প্রকাশিত হয়। এই বইটি পড়ে শহীদ-জননী জাহানারা ইমাম খুবই প্রশংসা করেন এবং এই ঘটনায় তিনি এ ধরণের আরও বই লিখতে উৎসাহিত হন। তার প্রথম দিকের বিজ্ঞান কল্পকাহিনীগুলো পাঠকমহলে সমাদৃত হয়। সুদূর আমেরিকাতে বসে তিনি বেশ কয়েকটি বৈজ্ঞানিক কল্পকাহিনী রচনা করেন।', 2),
(29, '9780385537858', 'Inferno', 'Dan Brown ', ' Doubleday ', '2013-01-14', 'English', 'New', 'Admin', '718.00', '2018-07-15', 'Fiction  ', 'Dhaka', 'inferno.jpg', 'Harvard professor of symbology Robert Langdon awakens in an Italian hospital, disoriented and with no recollection of the past thirty-six hours, including the origin of the macabre object hidden in his belongings. With a relentless female assassin trailing them through Florence, he and his resourceful doctor, Sienna Brooks, are forced to flee. Embarking on a harrowing journey, they must unravel a series of codes, which are the work of a brilliant scientist whose obsession with the end of the world is matched only by his passion for one of the most influential masterpieces ever written, Dante Alighieri\'s The Inferno.\r\n\r\nDan Brown has raised the bar yet again, combining classical Italian art, history, and literature with cutting-edge science in this sumptuously entertaining thriller.', 3),
(30, '9780385537858', 'Inferno', 'Dan Brown ', ' Doubleday ', '2013-01-14', 'English', 'Old', 'clay@gmail.com', '83.10', '2018-07-15', 'Fiction  ', 'Dhaka', 'inferno.jpg', 'Harvard professor of symbology Robert Langdon awakens in an Italian hospital, disoriented and with no recollection of the past thirty-six hours, including the origin of the macabre object hidden in his belongings. With a relentless female assassin trailing them through Florence, he and his resourceful doctor, Sienna Brooks, are forced to flee. Embarking on a harrowing journey, they must unravel a series of codes, which are the work of a brilliant scientist whose obsession with the end of the world is matched only by his passion for one of the most influential masterpieces ever written, Dante Alighieri\'s The Inferno.\r\n\r\nDan Brown has raised the bar yet again, combining classical Italian art, history, and literature with cutting-edge science in this sumptuously entertaining thriller.', 1),
(31, '9780593078754', 'Origin', 'Dan Brown ', ' 	Penguin Random House ', '2018-06-17', 'English', 'New', 'Admin', '1438.00', '2018-07-17', 'Mystery, Detective, Horror, Thriller & Adventure  ', 'Khulna', 'origin.jpg', 'Robert Langdon, Harvard professor of symbology and religious iconology, arrives at the ultramodern Guggenheim Museum in Bilbao to attend a major announcement—the unveiling of a discovery that “will change the face of science forever.” The evening’s host is Edmond Kirsch, a forty-year-old billionaire and futurist whose dazzling high-tech inventions and audacious predictions have made him a renowned global figure. Kirsch, who was one of Langdon’s first students at Harvard two decades earlier, is about to reveal an astonishing breakthrough . . . one that will answer two of the fundamental questions of human existence.', 3),
(32, '9780593078754', 'Origin', 'Dan Brown ', ' 	Penguin Random House ', '2018-06-17', 'English', 'Old', 'akash_acs10@yahoo.com', '123.61', '2018-08-18', 'Mystery, Detective, Horror, Thriller & Adventure  ', 'Dhaka', 'origin.jpg', 'Robert Langdon, Harvard professor of symbology and religious iconology, arrives at the ultramodern Guggenheim Museum in Bilbao to attend a major announcement—the unveiling of a discovery that “will change the face of science forever.” The evening’s host is Edmond Kirsch, a forty-year-old billionaire and futurist whose dazzling high-tech inventions and audacious predictions have made him a renowned global figure. Kirsch, who was one of Langdon’s first students at Harvard two decades earlier, is about to reveal an astonishing breakthrough . . . one that will answer two of the fundamental questions of human existence.', 1),
(33, '9788175157811', 'Barron\'s GRE ', 'Galgotia ', 'Galgotia ', '2018-01-01', 'English', 'New', 'Admin', '1438.00', '2018-06-01', 'GRE ', 'Dhaka', 'gre.jpg', 'This 17th edition of Barron\'s GRE manual reflects recent Graduate Record Exams and presents six full-length model exams with all questions answered and explained. Tests are similar to recent actual GREs in length, question types, and degree of difficulty. The manual also reviews all GRE test topics: antonym, analogy, and sentence-completion questions, reading comprehension, analytical writing, quantitative comparison questions, data interpretation, and math', 4),
(34, '9780143038412', 'Eat, Pray, Love', 'Elizabeth Gilbert', 'Riverhead Books', '2007-02-01', 'English', 'Rent', 'samsun_nahar@gmail.com', '300.00', '2018-08-23', 'Travel', 'Dhaka', 'eat.jpg', '\r\nA celebrated writer\'s irresistible, candid, and eloquent account of her pursuit of worldly pleasure, spiritual devotion, and what she really wanted out of life.\r\n\r\nAround the time Elizabeth Gilbert turned thirty, she went through an early-onslaught midlife crisis. She had everything an educated, ambitious American woman was supposed to want—a husband, a house, a successful career. But instead of feeling happy and fulfilled, she was consumed with panic, grief, and confusion. She went through a divorce, a crushing depression, another failed love, and the eradication of everything she ever thought she was supposed to be.\r\n\r\nTo recover from all this, Gilbert took a radical step. In order to give herself the time and space to find out who she really was and what she really wanted, she got rid of her belongings, quit her job, and undertook a yearlong journey around the world—all alone. Eat, Pray, Love is the absorbing chronicle of that year. Her aim was to visit three places where she could examine one aspect of her own nature set against the backdrop of a culture that has traditionally done that one thing very well. In Rome, she studied the art of pleasure, learning to speak Italian and gaining the twenty-three happiest pounds of her life. India was for the art of devotion, and with the help of a native guru and a surprisingly wise cowboy from Texas, she embarked on four uninterrupted months of spiritual exploration. In Bali, she studied the art of balance between worldly enjoyment and divine transcendence. She became the pupil of an elderly medicine man and also fell in love the best way—unexpectedly.\r\n\r\nAn intensely articulate and moving memoir of self-discovery, Eat, Pray, Love is about what can happen when you claim responsibility for your own contentment and stop trying to live in imitation of society’s ideals. It is certain to touch anyone who has ever woken up to the unrelenting need for change.\r\n', 1),
(35, '9788131776513', 'Cloud Computing', 'A. Srinivasan , J. Suresh', 'Pearson', '2014-01-01', 'English', 'Rent', 'samsun_nahar@gmail.com', '200.00', '2018-07-24', 'Computer Science & Engineering', 'Khulna', 'cloud.jpg', 'This book lays a good foundation to the core concepts and principles of cloud computing, walking the reader through the fundamental ideas with expert ease. The book advances on the topics in a step-by-step manner and reinforces theory with a full-fledged pedagogy designed to enhance students understanding and offer them a practical insight into the subject. ', 1),
(36, '9788131776513', 'Cloud Computing', 'A. Srinivasan , J. Suresh', 'Pearson', '2014-01-01', 'English', 'New', 'Admin', '755.00', '2018-06-24', 'Computer Science & Engineering', 'Khulna', 'cloud.jpg', 'This book lays a good foundation to the core concepts and principles of cloud computing, walking the reader through the fundamental ideas with expert ease. The book advances on the topics in a step-by-step manner and reinforces theory with a full-fledged pedagogy designed to enhance students understanding and offer them a practical insight into the subject. ', 1),
(37, ' 	9789332582736', 'PHP and MySQL Web Development', 'Laura Thomson ,Luke Weling', 'Pearson Education ', '2016-05-01', 'English', 'Rent', 'akash_acs10@yahoo.com', '350.00', '2018-06-25', 'Computer Science & Engineering ', 'Chittagong', 'php.jpg', 'Includes material and code on MySQL 5, PHP 5 and on PHPs object model and validation. This book helps you develop websites by integrating and implementing the PHP scripting language and the MySQL database system. It contains real-world examples and working sample projects that give you a foundation to start building your own websites.', 1),
(38, '9780143028574', 'The God of Small Things ', 'Arundhati roy ', 'Penguin group ', '2001-01-01', 'English', 'Rent', 'clay@gmail.com', '205.50', '2018-06-25', 'Fiction', 'Rajshahi', 'god.jpg', 'The God of Small Things tells the story of one family in the town of Ayemenem in Kerala, India. Its epigraph is a quotation from contemporary writer John Berger: \"Never again will a single story be told as though it\'s the only one.\" She uses this idea to establish her nonlinear, multi-perspective way of storytelling, which gives value to points of view as \"Big\" as a human being\'s and as \"Small\" as a cabbage-green butterfly\'s. In Roy\'s world, there is no definitive story, only many different stories that fuse to form a kaleidoscopic impression of events.', 1),
(39, '9789350404690', 'নূরজাহান (অখণ্ড)', 'ইমদাদুল হক মিলন ', 'আনন্দ পাবলিশার্স (ভারত) ', '2015-01-01', 'Bangla', 'Rent', 'oliver@gmail.com', '450.00', '2018-06-26', 'Nobel', 'Rajshahi', 'nur.jpg', 'নূরজাহানের বড় হয়ে ওঠা, বিয়ে, দুর্ভাগ্য, ভন্ড ফতোয়াবাজদের হাতে অপমানিত হওয়া এবং শেষমেশ আত্মহত্যার করুণ কাহিনীর পাশে লেখক এক গ্রামীণ জনপদের মানুষের নিখুঁত জীবনচিত্র এঁকেছেন। অসামান্য ‘নূরজাহান’ উপন্যাসে নির্যাতীতা মেয়েটির আত্মহত্যা প্রতিটি হৃদয়ে যে-আগুন জ্বালে, সমাজের শুদ্ধিকরণে সে-আগুন চিরজাগরূক।', 1),
(40, '978476746586', 'All the light we cannot see', 'Anthony Doerr', 'Scribner ', '2014-01-01', 'English', 'Old', 'akash_acs10@yahoo.com', '500', '2018-09-14', 'Historical', 'Dhaka', 'All_the_Light_We_Cannot_See_(Doerr_novel).jpg', 'A stunningly ambitious and beautiful novel about a blind French girl and a German boy whose paths collide in occupied France as both try to survive the devastation of World War II. Winner of the 2014 BookBrowse Award for Fiction.', 1),
(41, '9788172344504', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '2000-01-01', 'English', 'Old', 'samsun_nahar@gmail.com', '350', '2018-09-14', 'Classic Regency novel', 'Dhaka', 'index.jpg', 'Pride and Prejudice is a humorous story of love and life among English gentility during the Georgian era. Mr Bennet is an English gentleman living in Hartfordshire with his overbearing wife. The Bennets 5 daughters; the beautiful Jane, the clever Elizabeth, the bookish Mary, the immature Kitty and the wild Lydia.', 1),
(42, '9789332518698', 'Artificial Intelligence: A Modern Approach', 'Peter Norvig ,  Stuart J Russell', 'Pearson', '2014-01-01', 'English', 'New', 'samsun_nahar@gmail.com', '1438.00', '2018-09-16', 'Computer Science & Engineering', 'Dhaka', 'artificial.jpg', 'Artificial Intelligence: A Modern Approach\r\nAima 3rd editon cover.jpg\r\nThe third edition\r\nAuthor	Stuart J. Russell and Peter Norvig\r\nLanguage	English\r\nGenre	Computer science\r\nPublisher	Prentice Hall\r\nPublication date\r\n2009 (3rd Ed.)\r\nPages	1152 (3rd Ed.)\r\nISBN	0-13-604259-7\r\nOCLC	359890490\r\nDewey Decimal\r\n006.3 20\r\nLC Class	Q335 .R86 1995\r\nArtificial Intelligence: A Modern Approach (AIMA) is a university textbook on artificial intelligence, written by Stuart J. Russell and Peter Norvig. It was first published in 1995 and the third edition of the book was released 11 December 2009. It is used in over 1350 universities worldwide and has been called \"the most popular artificial intelligence textbook in the world\". It is considered the standard text in the field of artificial intelligence.', 3),
(43, '9789332518698', 'Artificial Intelligence: A Modern Approach', 'Peter Norvig ,  Stuart J Russell', 'Pearson', '2014-01-01', 'English', 'Old', '	\r\noliver@gmail.com', '500.00', '2018-09-15', 'Computer Science & Engineering', 'Dhaka', 'artificial.jpg', 'Artificial Intelligence: A Modern Approach\r\nAima 3rd editon cover.jpg\r\nThe third edition\r\nAuthor	Stuart J. Russell and Peter Norvig\r\nLanguage	English\r\nGenre	Computer science\r\nPublisher	Prentice Hall\r\nPublication date\r\n2009 (3rd Ed.)\r\nPages	1152 (3rd Ed.)\r\nISBN	0-13-604259-7\r\nOCLC	359890490\r\nDewey Decimal\r\n006.3 20\r\nLC Class	Q335 .R86 1995\r\nArtificial Intelligence: A Modern Approach (AIMA) is a university textbook on artificial intelligence, written by Stuart J. Russell and Peter Norvig. It was first published in 1995 and the third edition of the book was released 11 December 2009. It is used in over 1350 universities worldwide and has been called \"the most popular artificial intelligence textbook in the world\". It is considered the standard text in the field of artificial intelligence.', 1),
(44, '9789332518698', 'Artificial Intelligence: A Modern Approach', 'Peter Norvig ,  Stuart J Russell', 'Pearson', '2014-01-01', 'English', 'Rent', 'akash_acs10@yahoo.com', '300.00', '2018-09-15', 'Computer Science & Engineering', 'Khulna', 'artificial.jpg', 'Artificial Intelligence: A Modern Approach\r\nAima 3rd editon cover.jpg\r\nThe third edition\r\nAuthor	Stuart J. Russell and Peter Norvig\r\nLanguage	English\r\nGenre	Computer science\r\nPublisher	Prentice Hall\r\nPublication date\r\n2009 (3rd Ed.)\r\nPages	1152 (3rd Ed.)\r\nISBN	0-13-604259-7\r\nOCLC	359890490\r\nDewey Decimal\r\n006.3 20\r\nLC Class	Q335 .R86 1995\r\nArtificial Intelligence: A Modern Approach (AIMA) is a university textbook on artificial intelligence, written by Stuart J. Russell and Peter Norvig. It was first published in 1995 and the third edition of the book was released 11 December 2009. It is used in over 1350 universities worldwide and has been called \"the most popular artificial intelligence textbook in the world\". It is considered the standard text in the field of artificial intelligence.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `User_Email` varchar(100) DEFAULT NULL,
  `Book_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`User_Email`, `Book_ID`) VALUES
('samon0025@gmail.com', 25),
('samon0025@gmail.com', 2),
('samon0025@gmail.com', 3),
('emon@gmail.com', 2),
('samon@gmail.com', 2),
('clay@gmail.com', 6),
('samon@gmail.com', 2),
('samon@gmail.com', 2),
('samon@gmail.com', 42),
('samon@gmail.com', 42),
('samon@gmail.com', 42),
('akash_acs10@yahoo.com', 5),
('akash_acs10@yahoo.com', 5),
('akash_acs10@yahoo.com', 5),
('akash_acs10@yahoo.com', 5),
('mittahad@gmail.com', 25),
('mittahad@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(20) NOT NULL,
  `User_ID` varchar(255) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `User_ID`, `Book_ID`, `Quantity`, `Price`, `Status`) VALUES
(3800, 'shaira.sheba@gmail.com', 5, 2, 18280, 'pending'),
(3800, 'shaira.sheba@gmail.com', 6, 3, 1550, 'pending'),
(7467, 'shaira.sheba@gmail.com', 1, 2, 1238, 'confirmed'),
(7467, 'shaira.sheba@gmail.com', 2, 1, 1593, 'confirmed'),
(7611, 'akash_acs10@yahoo.com', 1, 2, 1238, 'confirmed'),
(7611, 'akash_acs10@yahoo.com', 2, 1, 1593, 'confirmed'),
(9268, 'akash_acs10@yahoo.com', 2, 4, 1593, 'pending'),
(9268, 'akash_acs10@yahoo.com', 6, 1, 1550, 'pending'),
(9861, 'akash_acs10@yahoo.com', 2, 2, 1050, 'pending'),
(6917, 'akash_acs10@yahoo.com', 5, 5, 9140, 'confirmed'),
(4841, 'shaira.sheba@gmail.com', 6, 3, 4650, 'confirmed'),
(2720, 'shaira.sheba@gmail.com', 5, 7, 9140, 'confirmed'),
(9170, 'shaira.sheba@gmail.com', 2, 8, 1593, 'pending'),
(9170, 'shaira.sheba@gmail.com', 3, 1, 1078, 'pending'),
(4940, 'shaira.sheba@gmail.com', 1, 1, 1238, 'pending'),
(4940, 'shaira.sheba@gmail.com', 2, 1, 1593, 'confirmed'),
(4940, 'shaira.sheba@gmail.com', 5, 1, 9140, 'pending'),
(3809, 'akash_acs10@yahoo.com', 1, 1, 1238, 'pending'),
(3809, 'akash_acs10@yahoo.com', 5, 1, 9140, 'pending'),
(3809, 'akash_acs10@yahoo.com', 6, 1, 1550, 'pending'),
(72916, 'akash_acs10@yahoo.com', 2, 3, 4779, 'pending'),
(72916, 'akash_acs10@yahoo.com', 3, 1, 1078, 'confirmed'),
(61354, 'akash_acs10@yahoo.com', 2, 1, 1593, 'confirmed'),
(61354, 'akash_acs10@yahoo.com', 3, 5, 5390, 'pending'),
(61354, 'akash_acs10@yahoo.com', 5, 1, 9140, 'pending'),
(61354, 'akash_acs10@yahoo.com', 6, 1, 1550, 'pending'),
(70833, 'akash_acs10@yahoo.com', 1, 3, 3714, 'pending'),
(70833, 'akash_acs10@yahoo.com', 2, 1, 1593, 'pending'),
(74305, 'akash_acs10@yahoo.com', 1, 2, 2476, 'confirmed'),
(74305, 'akash_acs10@yahoo.com', 5, 1, 9140, 'confirmed'),
(74305, 'akash_acs10@yahoo.com', 6, 1, 1550, 'pending'),
(74305, 'akash_acs10@yahoo.com', 10, 1, 1086.68, 'pending'),
(12492, 'shaira.sheba@gmail.com', 1, 1, 1238, 'pending'),
(12492, 'shaira.sheba@gmail.com', 2, 1, 1593, 'pending'),
(1929, 'shaira.sheba@gmail.com', 1, 1, 1238, 'pending'),
(97544, 'shaira.sheba@gmail.com', 2, 1, 1593, 'pending'),
(97544, 'shaira.sheba@gmail.com', 3, 3, 3234, 'pending'),
(97544, 'shaira.sheba@gmail.com', 6, 3, 4650, 'pending'),
(68120, 'shaira.sheba@gmail.com', 7, 2, 14400, 'pending'),
(68120, 'shaira.sheba@gmail.com', 8, 1, 898, 'pending'),
(68120, 'shaira.sheba@gmail.com', 9, 1, 1435, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `pendingbook`
--

CREATE TABLE `pendingbook` (
  `Pending_ID` int(11) NOT NULL,
  `User_ID` varchar(50) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Purpose` varchar(10) DEFAULT NULL,
  `Img_code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pendingbook`
--

INSERT INTO `pendingbook` (`Pending_ID`, `User_ID`, `Title`, `Author`, `Price`, `Purpose`, `Img_code`) VALUES
(9, 'akash_acs10@yahoo.com  ', 'Execution', 'Ram Charan , Bossidy Larry', '1435.00', 'Sell', 'Execution.jpg'),
(40, 'samsun_nahar@gmail.com', 'All the light we cannot see', 'Anthony Doerr', '500.00', 'Rent', 'All_the_Light_We_Cannot_See_(Doerr_novel).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rented_list`
--

CREATE TABLE `rented_list` (
  `Rented_Book_ID` int(11) DEFAULT NULL,
  `Owner_ID` varchar(255) NOT NULL,
  `Borrower_ID` varchar(255) NOT NULL,
  `Rent_Date` date NOT NULL,
  `Seen` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rented_list`
--

INSERT INTO `rented_list` (`Rented_Book_ID`, `Owner_ID`, `Borrower_ID`, `Rent_Date`, `Seen`) VALUES
(34, 'samon@gmail.com', 'shaira.tabassum@gmail.com', '2018-09-16', 1),
(34, 'samon@gmail.com', 'ashikur.r.dipto@gmail.com', '2018-09-26', 1),
(34, 'samon@gmail.com', 'ashikur.r.dipto@gmail.com', '2018-09-29', 1),
(38, 'clay@gmail.com', 'samon@gmail.com', '2018-09-30', 1),
(38, 'clay@gmail.com', 'akash_acs10@yahoo.com', '2018-09-13', 1),
(38, 'clay@gmail.com', 'akash_acs10@yahoo.com', '2018-09-13', 1),
(38, 'clay@gmail.com', 'samon@gmail.com', '2018-09-13', 1),
(38, 'clay@gmail.com', 'emon@gmail.com', '2018-09-13', 1),
(38, 'clay@gmail.com', 'samon@gmail.com', '2018-09-13', 1),
(38, 'clay@gmail.com', 'samon@gmail.com', '2018-09-13', 1),
(38, 'clay@gmail.com', 'emon@gmail.com', '2018-09-13', 1),
(37, 'akash_acs10@yahoo.com', 'akash_acs10@yahoo.com', '2018-09-14', 1),
(34, 'samon@gmail.com', 'shaira.sheba@gmail.com', '2018-09-14', 1),
(37, 'akash_acs10@yahoo.com', 'samon@gmail.com', '2018-09-14', 1),
(37, 'akash_acs10@yahoo.com', 'samon@gmail.com', '2018-09-14', 1),
(44, 'akash_acs10@yahoo.com', 'samon@gmail.com', '2018-09-17', 1),
(44, 'akash_acs10@yahoo.com', 'samon@gmail.com', '2018-09-17', 1),
(37, 'akash_acs10@yahoo.com', 'mittahad@gmail.com', '2018-09-17', 1),
(34, 'samsun_nahar@gmail.com', 'shaira.sheba@gmail.com', '2018-09-18', 1),
(35, 'samsun_nahar@gmail.com', 'shaira.sheba@gmail.com', '2018-09-18', 1),
(37, 'akash_acs10@yahoo.com', 'shaira.sheba@gmail.com', '2018-09-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Review_No` int(255) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Rating` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `User_Email` varchar(100) NOT NULL,
  `Comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Review_No`, `ISBN`, `Rating`, `date`, `User_Email`, `Comment`) VALUES
(1, '9781615890088', 5, '2018-09-09 13:55:35', 'akash_acs10@yahoo.com', 'I have yet to see any decent movie adaptation of this science fiction classic, let alone a good one. The only reason I give a plot synopsis of this otherwise well-known story is that I am afraid some people would judge it by a (very lame) movie.'),
(6, '9780994054401', 3, '2018-09-09 14:29:15', 'akash_acs10@yahoo.com', 'What an enjoyable read that seriously didn’t bring anything crazy original to this genre but somewhere between the fantastic characters, the banter and the delivery, this story was a huge winner for me. '),
(7, '9780994054401', 4, '2018-09-09 14:29:45', 'samsun_nahar@gmail.com', '“The Deal” was not my first book by Elle Kennedy, but for sure was the one that I loved the most. It was such an enjoyable read and from the start I couldn’t put it down. It was sweet, sexy and funny and even a little emotional at times and it just made me smile. '),
(8, '9780994054401', 5, '2018-09-09 14:31:57', 'shaira.sheba@gmail.com', 'I loved, LOVED Garret. He was sweet, and sexy and completely honest. He had no problem in saying what he needed and making his intentions clear. A great hero. '),
(9, '9781501174476', 4, '2018-09-10 05:24:13', 'shaira.sheba@gmail.com', 'I picked this up because someone compared it to The Big Chill, one of my favorite movies of all time. The book starts with a prelude, a stream of consciousness narrative during a parade in memory of Rick, who was killed Iraq. The book then jumps 6 years to 2013. '),
(11, '9781501174476', 4, '2018-09-10 05:24:13', 'shaira.sheba@gmail.com', 'I picked this up because someone compared it to The Big Chill, one of my favorite movies of all time. The book starts with a prelude, a stream of consciousness narrative during a parade in memory of Rick, who was killed Iraq. The book then jumps 6 years to 2013. '),
(12, '9781501174476', 4, '2018-09-10 05:32:22', 'samsun_nahar@gmail.com', 'He is my icon its really great to read the book'),
(13, '9781501174476', 4, '2018-09-10 05:34:52', 'samon0025@gmail.com', 'I picked this up because someone compared it to The Big Chill, one of my favorite movies of all time. The book starts with a prelude, a stream of consciousness narrative during a parade in memory of Rick, who was killed Iraq. The book then jumps 6 years to 2013. \n\nThen it divides into four parts, each told from the perspective of a different character returning home for their own reasons. But each was a school mate of the others and have a history from those days. '),
(14, '9781501174476', 4, '2018-09-10 05:35:36', 'samsun_nahar@gmail.com', '“Ohio” is fiction that probes issues that have received a lot of news attention the past two years - marginalization, loss of hope, disillusionment, economic decline, and drug addiction in middle America. '),
(15, '9781501174476', 4, '2018-09-10 05:55:59', 'akash_acs10@yahoo.com', 'Slow starting but over all it is nice to read'),
(16, '9781501174476', 2, '2018-09-10 16:07:55', 'akash_acs10@yahoo.com', 'Awesome book really happy to read a book like thistest'),
(28, '9789332518698', 0, '2018-09-17 15:28:51', 'samon@gmail.com', 'Test'),
(29, '9789332518698', 0, '2018-09-17 15:30:36', 'samon@gmail.com', 'Test 2');

-- --------------------------------------------------------

--
-- Table structure for table `soldbook`
--

CREATE TABLE `soldbook` (
  `ISBN` varchar(50) NOT NULL,
  `Customer_Email` varchar(100) NOT NULL,
  `Upload_Email` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soldbook`
--

INSERT INTO `soldbook` (`ISBN`, `Customer_Email`, `Upload_Email`, `Quantity`) VALUES
('9781615890088', 'shaira.sheba@gmail.com', 'samsun_nahar@gmail.com', 2),
('9781501174476', 'shaira.sheba@gmail.com', 'samsun_nahar@gmail.com', 1),
('9780743264730', 'akash_acs10@yahoo.com', 'samon@gmail.com', 1),
('9781615890088', 'akash_acs10@yahoo.com', 'samsun_nahar@gmail.com', 2),
('9781501174476', 'akash_acs10@yahoo.com', 'samsun_nahar@gmail.com', 1),
('97819280258024', 'shaira.sheba@gmail.com', 'samon@gmail.com', 1),
('9781615890088', 'akash_acs10@yahoo.com', 'samsun_nahar@gmail.com', 2),
('9781501174476', 'akash_acs10@yahoo.com', 'samsun_nahar@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(100) NOT NULL,
  `Contact_No` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Contact_No`, `Email`, `Address`, `password`) VALUES
('Ashikur Rahaman Dipto', '01759359294', 'abuebaten@gmail.com', 'Vatara,NotunBazar', '827ccb0eea8a706c4c34a16891f84e7b'),
('Md Ittahad uz zaman', '01721070717', 'akash_acs10@yahoo.com', 'Gulshan, Niketon', '827ccb0eea8a706c4c34a16891f84e7b'),
('Ashikur Rahaman', '1203456789', 'ashik@gmail.com', 'Natunbazar, Dhaka', 'e10adc3949ba59abbe56e057f20f883e'),
('SM:Ashiqur Rahaman', '01759359294', 'ashikur.r.dipto@gmail.com', 'Vatara,NotunBazar', '16404841483f086e8a44b11ed81ed32e'),
('Clay', '09182735654', 'clay@gmail.com', 'Wari, Rankin street', 'e10adc3949ba59abbe56e057f20f883e'),
('HB Emon', '019384387765', 'emon@gmail.com', 'Siddique bazar, dhaka', 'e10adc3949ba59abbe56e057f20f883e'),
('Sabbir', '01754067119', 'md.sabbir.ullah@gmail.com', 'Bashundhara', 'e10adc3949ba59abbe56e057f20f883e'),
('Ittahaduzzaman', '01721070717', 'mittahad@gmail.com', 'Gulshan, Niketon', '827ccb0eea8a706c4c34a16891f84e7b'),
('Oliver Queen', '0129378665', 'oliver@gmail.com', 'Dhaka, Bangladesh', 'e10adc3949ba59abbe56e057f20f883e'),
('Md Sabbir Ullah', '1230456789', 'sabbir@gmail.com', 'Bashundhara, Dhaka', 'e10adc3949ba59abbe56e057f20f883e'),
('Samon', '01917031210', 'samon0025@gmail.com', '163/5 siddique bazar, dhaka', 'e10adc3949ba59abbe56e057f20f883e'),
('Samsun Nahar', '01917031210', 'samon@gmail.com', 'Gulistan , Dhaka', 'e10adc3949ba59abbe56e057f20f883e'),
('Samsun Nahar Samon', '0192938655', 'samsun_nahar@gmail.com', 'Wari, Rankin street', 'e10adc3949ba59abbe56e057f20f883e'),
('Shaira Tabassum', '01758675321', 'shaira.sheba@gmail.com', 'Baridhara J Block, Badda', 'e10adc3949ba59abbe56e057f20f883e'),
('Shaira Sheba', '01758675321', 'shaira.tabassum@gmail.com', 'Sikder Medical, Dhaka', 'e10adc3949ba59abbe56e057f20f883e'),
('Shaira Tabbasum', '1234567890', 'shaira@gmail.com', 'Natunbazar, Dhaka', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `Book_ID` int(11) NOT NULL,
  `User_Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`Book_ID`, `User_Email`) VALUES
(14, 'samon@gmail.com'),
(5, 'akash_acs10@yahoo.com'),
(8, 'shaira.sheba@gmail.com'),
(2, 'akash_acs10@yahoo.com'),
(1, 'md.sabbir.ullah@gmail.com'),
(10, 'akash_acs10@yahoo.com'),
(3, 'ashikur.r.dipto@gmail.com'),
(2, 'samon0025@gmail.com'),
(3, 'samon0025@gmail.com'),
(2, 'emon@gmail.com'),
(1, 'ashikur.r.dipto@gmail.com'),
(4, 'shaira.sheba@gmail.com'),
(6, 'shaira.sheba@gmail.com'),
(3, 'mittahad@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `Book_ID` (`Book_ID`),
  ADD KEY `User_Email` (`User_Email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `pendingbook`
--
ALTER TABLE `pendingbook`
  ADD PRIMARY KEY (`Pending_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `rented_list`
--
ALTER TABLE `rented_list`
  ADD KEY `Rented_Book_ID` (`Rented_Book_ID`),
  ADD KEY `Borrower_ID` (`Borrower_ID`),
  ADD KEY `Owner_ID` (`Owner_ID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Review_No`),
  ADD KEY `User_Email` (`User_Email`);

--
-- Indexes for table `soldbook`
--
ALTER TABLE `soldbook`
  ADD KEY `Customer_Email` (`Customer_Email`),
  ADD KEY `Upload_Email` (`Upload_Email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `Book_ID` (`Book_ID`),
  ADD KEY `User_Email` (`User_Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `pendingbook`
--
ALTER TABLE `pendingbook`
  MODIFY `Pending_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `Review_No` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `book` (`Book_ID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`User_Email`) REFERENCES `user` (`Email`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`Email`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Book_ID`) REFERENCES `book` (`Book_ID`);

--
-- Constraints for table `pendingbook`
--
ALTER TABLE `pendingbook`
  ADD CONSTRAINT `pendingbook_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`Email`),
  ADD CONSTRAINT `pendingbook_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`Email`);

--
-- Constraints for table `rented_list`
--
ALTER TABLE `rented_list`
  ADD CONSTRAINT `rented_list_ibfk_1` FOREIGN KEY (`Rented_Book_ID`) REFERENCES `book` (`Book_ID`),
  ADD CONSTRAINT `rented_list_ibfk_2` FOREIGN KEY (`Borrower_ID`) REFERENCES `user` (`Email`),
  ADD CONSTRAINT `rented_list_ibfk_3` FOREIGN KEY (`Owner_ID`) REFERENCES `user` (`Email`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`User_Email`) REFERENCES `user` (`Email`);

--
-- Constraints for table `soldbook`
--
ALTER TABLE `soldbook`
  ADD CONSTRAINT `soldbook_ibfk_1` FOREIGN KEY (`Customer_Email`) REFERENCES `user` (`Email`),
  ADD CONSTRAINT `soldbook_ibfk_2` FOREIGN KEY (`Upload_Email`) REFERENCES `user` (`Email`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`Book_ID`) REFERENCES `book` (`Book_ID`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`User_Email`) REFERENCES `user` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
