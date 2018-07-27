-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2018 at 06:47 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_master`
--

CREATE TABLE `department_master` (
  `dept_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `dept_name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department_master`
--

INSERT INTO `department_master` (`dept_id`, `dept_name`) VALUES
('cse', 'Computer Science and Engineering'),
('ece', 'Electronics and Communication Engineering'),
('ee', 'Electrical Engineering'),
('it', 'Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `questions_master`
--

CREATE TABLE `questions_master` (
  `ques_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `q_text` text COLLATE utf8_unicode_ci NOT NULL,
  `opt1` text COLLATE utf8_unicode_ci NOT NULL,
  `opt2` text COLLATE utf8_unicode_ci NOT NULL,
  `opt3` text COLLATE utf8_unicode_ci NOT NULL,
  `opt4` text COLLATE utf8_unicode_ci NOT NULL,
  `ans` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions_master`
--

INSERT INTO `questions_master` (`ques_id`, `subject_id`, `q_text`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 2, ' The Correct electron affinity order is', 'F&lt;Cl&lt;O&lt;N', 'Cl&lt;F&lt;O&lt;N', 'Cl&lt;F&lt;N&lt;O', 'N&lt;O&lt;F&lt;Cl', 'N&lt;O&lt;F&lt;Cl'),
(2, 2, 'The correct IP order is', 'C&lt;N&lt;O&lt;F', 'C&lt;O&lt;N&lt;F', 'C&lt;O&lt;F&lt;N', 'N&lt;C&lt;O&lt;F', 'C&lt;O&lt;N&lt;F'),
(3, 2, 'The correct E&period;C of Cr &lpar;ground state&rpar; is', '&lbrack;Ar&rsqb; 3d54s1', '&lbrack;Ar&rsqb; 3d44s2', '&lbrack;Ar&rsqb; 3d34s2', '&lbrack;Ar&rsqb; 3d44s2', '&lbrack;Ar&rsqb; 3d54s1'),
(4, 2, 'The correct E&period;C of Fe3&plus;   is', ' &lbrack;Ar&rsqb; 3d34s2', ' &lbrack;Ar&rsqb; 3d54s0', ' &lbrack;Ar&rsqb; 3d34s1', ' &lbrack;Ar&rsqb; 3d44s1', ' &lbrack;Ar&rsqb; 3d54s0'),
(5, 2, 'No&period; of unpaired electrons of Fe2&plus; is', '5', '4', '2', '3', '4'),
(6, 2, 'The correct order of acidic strength is ', 'CH3COOH&lt;CH3OH&lt;C6H5OH&lt;CH2FCOOH', 'CH3OH&lt;C6H5OH&lt;CH3COOH&lt;CH2FCOOH', 'C6H5OH&lt;CH3OH&lt;CH3COOH&lt;CH2FCOOH', 'C6H5OH&lt;CH3OH&lt;CH2FCOOH&lt;CH3COOH', 'CH3OH&lt;C6H5OH&lt;CH3COOH&lt;CH2FCOOH'),
(7, 2, 'The correct Boiling point  order is ', 'H2O&gt;H2Te&gt;H2Se&gt;H2S', 'H2O&gt;H2S&gt;H2Se&gt;H2Te', 'H2O&gt;H2S&gt;H2Se&gt;H2Te', 'H2O&gt;H2Se&gt;H2S&gt;H2Te', 'H2O&gt;H2Te&gt;H2Se&gt;H2S'),
(8, 2, 'The correct order of acidic strength is ', 'HF&gt;HCl&gt;HBr&gt;HI', 'HI&gt;HCl&gt;HBr&gt;HF', 'HI&gt;HBR&gt;HCl&gt;HF', 'HCl&gt;HF&gt;HBr&gt;HI', 'HI&gt;HBR&gt;HCl&gt;HF'),
(9, 2, 'Hydrogen bonding involves', '10 kJ&sol;mol', '45 kJ&sol;mol', '7 kJ&sol;mol', '50 kJ&sol;mol', '10 kJ&sol;mol'),
(10, 2, 'For a spontaneous process &delta;G is ', '&delta;G&gt;0   ', '&delta;G&equals; 0  ', '&delta;G &#x2264;0', '&delta;G&lt;0     ', '&delta;G&lt;0     '),
(11, 2, '4 types of bonding present in', 'NH4Cl ', 'K4&lbrack;Fe&lpar;CN&rpar;6&rsqb; ', 'Na2CO3&period;10H2O', 'CUSO4&period;5H2O', 'CUSO4&period;5H2O'),
(12, 2, 'O&period;N change of KMnO4 in acid and basic medium respectively  is ', '6 &comma; 3', '5 &comma; 3', '5 &comma; 1', '3 &comma; 5', '5 &comma; 1'),
(13, 2, 'For a spontaneous cell reaction&comma;  E0 is ', 'E0 &equals; 0', ' E0 &gt; 0', ' E0 &lt; 0', '&delta; E &#x2265; 0', ' E0 &gt; 0'),
(14, 2, 'The following compound has a chiral carbon', 'Propan- 1-ol', 'Butan-2-ol', 'Butan-1-ol', 'Propan-2-ol', 'Butan-2-ol'),
(16, 3, 'What is the Cartesian product of A &equals; &lbrace;1&comma; 2&rcub; and B &equals; &lbrace;a&comma; b&rcub;&quest;', '&lbrace;&lpar;1&comma; a&rpar;&comma; &lpar;1&comma; b&rpar;&comma; &lpar;2&comma; a&rpar;&comma; &lpar;b&comma; b&rpar;&rcub;', '&lbrace;&lpar;1&comma; 1&rpar;&comma; &lpar;2&comma; 2&rpar;&comma; &lpar;a&comma; a&rpar;&comma; &lpar;b&comma; b&rpar;&rcub;', '&lbrace;&lpar;1&comma; a&rpar;&comma; &lpar;2&comma; a&rpar;&comma; &lpar;1&comma; b&rpar;&comma; &lpar;2&comma; b&rpar;&rcub;', '&lbrace;&lpar;1&comma; 1&rpar;&comma; &lpar;a&comma; a&rpar;&comma; &lpar;2&comma; a&rpar;&comma; &lpar;1&comma; b&rpar;&rcub;', '&lbrace;&lpar;1&comma; a&rpar;&comma; &lpar;2&comma; a&rpar;&comma; &lpar;1&comma; b&rpar;&comma; &lpar;2&comma; b&rpar;&rcub;'),
(17, 3, 'What is the Cardinality of the Power set of the set &lbrace;0&comma; 1&comma; 2&rcub;&period;', '8', '6', '7', '9', '8'),
(18, 3, 'The difference of &lbrace;1&comma; 2&comma; 3&rcub; and &lbrace;1&comma; 2&comma; 5&rcub; is', '&lbrace;1&rcub;', '&lbrace;5&rcub;', '&lbrace;3&rcub;', '&lbrace;2&rcub;', '&lbrace;3&rcub;'),
(19, 3, 'If n&lpar;A&rpar;&equals;10 &comma; n&lpar;B&rpar;&equals;30&comma;n&lpar;C&rpar;&equals;50 and if set A&comma;B&comma;C are pairwise  disjoint then which of the following is correct&quest; ', 'n&lpar;A U B&rpar;&equals;0', 'n&lpar; B U C&rpar;&equals;0', 'n&lpar; A U B U C&rpar;&equals;90', 'All of the mentioned', 'n&lpar; A U B U C&rpar;&equals;90'),
(20, 3, 'If set A has 4 elements and B has 3 elements then set n&lpar;A X B&rpar; is', '12', '14', '24', '7', '12'),
(21, 3, 'What is domain of function f&lpar;x&rpar;&equals; &#8730;x&quest;', '&lpar;2&comma; &#8734;&rpar;', '&lpar;-&#8734;&comma; 1&rpar;', '&lbrack;0&comma; &#8734;&rpar;', 'None', '&lbrack;0&comma; &#8734;&rpar;'),
(22, 3, '&nbsp;An injection is a function which is &colon;', 'many-one', 'one-one', 'onto', 'none&nbsp;', 'one-one'),
(23, 3, 'Which of the following gives the right inequality for AM&comma; GM&comma; HM&quest;', 'AM&gt;&equals;HM&gt;&equals;GM', 'GM&gt;&equals;AM&gt;&equals;HM', 'AM&gt;&equals;GM&gt;&equals;HM', 'GM&gt;&equals;HM&gt;&equals;AM', 'AM&gt;&equals;GM&gt;&equals;HM'),
(24, 3, 'The trace of the matrix is defined as&colon;', 'Sum of all the elements of the matrix ', 'Sum of all the elements of leading diagonal of matrix ', 'Sum of all non-zero elements of matrix', 'None', 'Sum of all the elements of  leading diagonal of matrix'),
(25, 3, '&nbsp;All the diagonal elements of a skew-symmetric matrix is&colon;', '0', '1', 'Any Integer', 'None', '0'),
(26, 3, 'Find the distance between A &lpar;4&comma; -3&rpar; and B &lpar;-2&comma; 5&rpar;&period;', '11', '9', '10', '8', '10'),
(27, 3, 'The line segment connecting &lpar;x&comma; 6&rpar; and &lpar;9&comma; y&rpar; is bisected by the point &lpar;7&comma; 3&rpar;&period; Find the values of x and y&period;', '14&comma; 6', '33&comma; 12', '5&comma; 0', '14&comma; 8', '5&comma;0'),
(28, 3, 'Find the slope of the line defined by y &ndash; x &equals; 5&period;', '1', '-1', '5', '-5', '1'),
(29, 3, 'Given 3 vertices of a triangle whose coordinates are A &lpar;1&comma; 1&rpar;&comma; B &lpar;3&comma; -3&rpar; and &lpar;5&comma; -3&rpar;&period; Find the area of the triangle&period;', '4', '5', '8', 'None', '8'),
(30, 3, 'sin &lpar;x&rpar; &plus; sin&lpar;x - &#960;&rpar; &plus; sin&lpar;x &plus; &#960;&rpar; &equals;', '-sin&lpar;x&rpar;&nbsp;', 'sin &lpar;x&rpar;&nbsp;', 'sec &lpar;x&rpar;&nbsp;', 'cos &lpar;x&rpar;', ' -sin&lpar;x&rpar;&nbsp;'),
(31, 3, 'If cos 55&deg; and sin 55&deg; &equals; 0&period;8 each then the answer of 3 cos 125&deg; &plus; 5 sin 125&deg; is', '1&period;6', '2&period;5', '2&period;3', '0&period;6', '1&period;6'),
(32, 3, '&lpar;sec&#952;-tan&#952;&rpar;&sup2; &equals;', '1 &plus; sin&#952;&sol;1 - sin&#952;', '&lpar;1 - sin&#952;&rpar;&sol;&lpar;1 &plus; sin&#952;&rpar;', '&lpar;1 - cos&#952;&rpar;&sol;&lpar;1&plus;cos&#952;&rpar;', 'csc&#952;', '&lpar;1 - sin&#952;&rpar;&sol;&lpar;1 &plus; sin&#952;&rpar;'),
(33, 3, 'What is probability of drawing two clubs from a well shuffled pack of 52 cards&quest;&nbsp;', '13&sol;51', '&nbsp;1&sol;17', 'Jan-26', '13&sol;17', '&nbsp;1&sol;17'),
(34, 3, 'Polar form of a complex number is', 'r &lpar; tan&#952; &plus; &iota;cot&#952; &rpar;', 'r&lpar;sec&#952; &plus; &iota;cosec&#952; &rpar;', 'r&lpar;cos&#952; &plus; &iota;sin&#952; &rpar;', 'r &lpar;sin&#952; &plus; &iota;cos&#952;&rpar;', 'r&lpar;cos&#952; &plus; &iota;sin&#952; &rpar;'),
(35, 3, '&vert;z1&nbsp;&plus; z2&nbsp;&vert; &equals;', '&gt; &vert;Z1&vert; &plus; &vert;Z2&vert;', '&leq;&vert;Z1&vert; &plus; &vert;Z2&vert;', '&leq; Z1&nbsp;&plus; Z2', '&gt; Z1&nbsp;&plus; Z2', ' &leq;&vert;Z1&vert; &plus; &vert;Z2&vert;'),
(37, 2, 'Van&apos;t Hoff factor i  is maximum for', '0.1 M sugar soln', '0.1 M NaCl soln', '0.1 M urea soln', '0.1 M CaCl2soln', '0.1 M CaCl2soln'),
(38, 4, 'Read the passage and answer the questions that follows&colon;&NewLine;&NewLine;The worst days of any summer are the rainy ones&period; We spend all year looking forward to nice weather and long&comma; hot days&period; All of winter&comma; with its dreary gray days and bitter cold&comma; we dream of those endless days at the beach&comma; laying on the sand and soaking in the bright and burning sun&period; And then&comma; summer comes&comma; and it rains&period; As a child&comma; I would wake up to rainy summer days and come close to crying&period; It wasn&rsquo;t fair&period; We suffered through months of school and miserable weather for those scant ten weeks of freedom and balmy weather&period; Any day that I could not spend at the beach or playing ball with my friends seemed like a punishment for something I didn&rsquo;t even do&period; On those rainy summer days&comma; I had nothing fun to do and could only sit inside&comma; staring out at the rain like a Dickensian orphan&period; I was an only child&comma; so there was no one else to play with&period; My father worked from home&comma; so I was not truly alone&comma; but he could not actively play with me since he was technically at work&period; It was those days that I would resign myself to whatever was on television or any books that I could find lying around&period; I&rsquo;d crawl through the day and pray each night that the rain would not be there the next day&period; As an adult&comma; though&comma; my opinion of summer rain has changed&period; When you have to work every day&comma; summer is not as eagerly anticipated&period; Mostly&comma; the days run together&comma; bleeding into each other so that they no longer seem like separate entities and instead feel like continuations of the same long day&period; Everything seems monotonous and dull&comma; and an ennui or listlessness kicks in&period; Such a mindset makes you cheer for anything new or different&period; I spend the winter dreaming of summer and the summer dreaming of winter&period; When summer comes&comma; I complain about how hot it is&period; And then I look forward to the rain&comma; because the rain brings with it a cold front&comma; which offers a reprieve&mdash;admittedly one that is all too short&mdash;from the torture of 100&deg; and humid days&period; Rainy days are still the worst days of the summer&comma; but summer rain today means positively beautiful&mdash;and considerably cooler&mdash;weather tomorrow&period;&NewLine;&NewLine;1&rpar; The passage makes use of language that is', ' metaphorical', 'rhetorical', 'formal', 'ambiguous', ' metaphorical'),
(39, 4, 'The worst days of any summer are the rainy ones&period; We spend all year looking forward to nice weather and long&comma; hot days&period; All of winter&comma; with its dreary gray days and bitter cold&comma; we dream of those endless days at the beach&comma; laying on the sand and soaking in the bright and burning sun&period; And then&comma; summer comes&comma; and it rains&period; As a child&comma; I would wake up to rainy summer days and come close to crying&period; It wasn&rsquo;t fair&period; We suffered through months of school and miserable weather for those scant ten weeks of freedom and balmy weather&period; Any day that I could not spend at the beach or playing ball with my friends seemed like a punishment for something I didn&rsquo;t even do&period; On those rainy summer days&comma; I had nothing fun to do and could only sit inside&comma; staring out at the rain like a Dickensian orphan&period; I was an only child&comma; so there was no one else to play with&period; My father worked from home&comma; so I was not truly alone&comma; but he could not actively play with me since he was technically at work&period; It was those days that I would resign myself to whatever was on television or any books that I could find lying around&period; I&rsquo;d crawl through the day and pray each night that the rain would not be there the next day&period; As an adult&comma; though&comma; my opinion of summer rain has changed&period; When you have to work every day&comma; summer is not as eagerly anticipated&period; Mostly&comma; the days run together&comma; bleeding into each other so that they no longer seem like separate entities and instead feel like continuations of the same long day&period; Everything seems monotonous and dull&comma; and an ennui or listlessness kicks in&period; Such a mindset makes you cheer for anything new or different&period; I spend the winter dreaming of summer and the summer dreaming of winter&period; When summer comes&comma; I complain about how hot it is&period; And then I look forward to the rain&comma; because the rain brings with it a cold front&comma; which offers a reprieve&mdash;admittedly one that is all too short&mdash;from the torture of 100&deg; and humid days&period; Rainy days are still the worst days of the summer&comma; but summer rain today means positively beautiful&mdash;and considerably cooler&mdash;weather tomorrow&period;&NewLine;&NewLine;2&rpar; According to the passage&comma; summer is different for adults because ', 'rain brings with it cold temperatures for the following days', ' the weather is much warmer than it is for children', ' they do not get a long time off from work for the season', 'they better know how to occupy their downtime ', 'they do not get a long time off from work for the season'),
(40, 4, 'The worst days of any summer are the rainy ones&period; We spend all year looking forward to nice weather and long&comma; hot days&period; All of winter&comma; with its dreary gray days and bitter cold&comma; we dream of those endless days at the beach&comma; laying on the sand and soaking in the bright and burning sun&period; And then&comma; summer comes&comma; and it rains&period; As a child&comma; I would wake up to rainy summer days and come close to crying&period; It wasn&rsquo;t fair&period; We suffered through months of school and miserable weather for those scant ten weeks of freedom and balmy weather&period; Any day that I could not spend at the beach or playing ball with my friends seemed like a punishment for something I didn&rsquo;t even do&period; On those rainy summer days&comma; I had nothing fun to do and could only sit inside&comma; staring out at the rain like a Dickensian orphan&period; I was an only child&comma; so there was no one else to play with&period; My father worked from home&comma; so I was not truly alone&comma; but he could not actively play with me since he was technically at work&period; It was those days that I would resign myself to whatever was on television or any books that I could find lying around&period; I&rsquo;d crawl through the day and pray each night that the rain would not be there the next day&period; As an adult&comma; though&comma; my opinion of summer rain has changed&period; When you have to work every day&comma; summer is not as eagerly anticipated&period; Mostly&comma; the days run together&comma; bleeding into each other so that they no longer seem like separate entities and instead feel like continuations of the same long day&period; Everything seems monotonous and dull&comma; and an ennui or listlessness kicks in&period; Such a mindset makes you cheer for anything new or different&period; I spend the winter dreaming of summer and the summer dreaming of winter&period; When summer comes&comma; I complain about how hot it is&period; And then I look forward to the rain&comma; because the rain brings with it a cold front&comma; which offers a reprieve&mdash;admittedly one that is all too short&mdash;from the torture of 100&deg; and humid days&period; Rainy days are still the worst days of the summer&comma; but summer rain today means positively beautiful&mdash;and considerably cooler&mdash;weather tomorrow&period;&NewLine;&NewLine;3&rpar;According to the passage&comma; which of the following is a true statement about the narrator as a child&quest;', 'He or she was often bored on summer days&period;', 'He or she preferred cooler weather&period;', 'He or she liked staying indoors&period;', ' He or she had no siblings&period;', 'He or she had no siblings&period;'),
(41, 4, 'The worst days of any summer are the rainy ones&period; We spend all year looking forward to nice weather and long&comma; hot days&period; All of winter&comma; with its dreary gray days and bitter cold&comma; we dream of those endless days at the beach&comma; laying on the sand and soaking in the bright and burning sun&period; And then&comma; summer comes&comma; and it rains&period; As a child&comma; I would wake up to rainy summer days and come close to crying&period; It wasn&rsquo;t fair&period; We suffered through months of school and miserable weather for those scant ten weeks of freedom and balmy weather&period; Any day that I could not spend at the beach or playing ball with my friends seemed like a punishment for something I didn&rsquo;t even do&period; On those rainy summer days&comma; I had nothing fun to do and could only sit inside&comma; staring out at the rain like a Dickensian orphan&period; I was an only child&comma; so there was no one else to play with&period; My father worked from home&comma; so I was not truly alone&comma; but he could not actively play with me since he was technically at work&period; It was those days that I would resign myself to whatever was on television or any books that I could find lying around&period; I&rsquo;d crawl through the day and pray each night that the rain would not be there the next day&period; As an adult&comma; though&comma; my opinion of summer rain has changed&period; When you have to work every day&comma; summer is not as eagerly anticipated&period; Mostly&comma; the days run together&comma; bleeding into each other so that they no longer seem like separate entities and instead feel like continuations of the same long day&period; Everything seems monotonous and dull&comma; and an ennui or listlessness kicks in&period; Such a mindset makes you cheer for anything new or different&period; I spend the winter dreaming of summer and the summer dreaming of winter&period; When summer comes&comma; I complain about how hot it is&period; And then I look forward to the rain&comma; because the rain brings with it a cold front&comma; which offers a reprieve&mdash;admittedly one that is all too short&mdash;from the torture of 100&deg; and humid days&period; Rainy days are still the worst days of the summer&comma; but summer rain today means positively beautiful&mdash;and considerably cooler&mdash;weather tomorrow&period;&NewLine;&NewLine;4&rpar; Compared to how he or she was as a child&comma; the narrator as an adult is', ' more realistic', 'less excitable', 'more idealistic', 'less calm', ' less excitable'),
(42, 4, 'The worst days of any summer are the rainy ones&period; We spend all year looking forward to nice weather and long&comma; hot days&period; All of winter&comma; with its dreary gray days and bitter cold&comma; we dream of those endless days at the beach&comma; laying on the sand and soaking in the bright and burning sun&period; And then&comma; summer comes&comma; and it rains&period; As a child&comma; I would wake up to rainy summer days and come close to crying&period; It wasn&rsquo;t fair&period; We suffered through months of school and miserable weather for those scant ten weeks of freedom and balmy weather&period; Any day that I could not spend at the beach or playing ball with my friends seemed like a punishment for something I didn&rsquo;t even do&period; On those rainy summer days&comma; I had nothing fun to do and could only sit inside&comma; staring out at the rain like a Dickensian orphan&period; I was an only child&comma; so there was no one else to play with&period; My father worked from home&comma; so I was not truly alone&comma; but he could not actively play with me since he was technically at work&period; It was those days that I would resign myself to whatever was on television or any books that I could find lying around&period; I&rsquo;d crawl through the day and pray each night that the rain would not be there the next day&period; As an adult&comma; though&comma; my opinion of summer rain has changed&period; When you have to work every day&comma; summer is not as eagerly anticipated&period; Mostly&comma; the days run together&comma; bleeding into each other so that they no longer seem like separate entities and instead feel like continuations of the same long day&period; Everything seems monotonous and dull&comma; and an ennui or listlessness kicks in&period; Such a mindset makes you cheer for anything new or different&period; I spend the winter dreaming of summer and the summer dreaming of winter&period; When summer comes&comma; I complain about how hot it is&period; And then I look forward to the rain&comma; because the rain brings with it a cold front&comma; which offers a reprieve&mdash;admittedly one that is all too short&mdash;from the torture of 100&deg; and humid days&period; Rainy days are still the worst days of the summer&comma; but summer rain today means positively beautiful&mdash;and considerably cooler&mdash;weather tomorrow&period;&NewLine;&NewLine;5&rpar; As used in the final paragraph&comma; the word reprieve most nearly means', ' a permanent conclusion', 'a short continuation', ' a higher level of pain', 'a temporary break', 'a temporary break'),
(43, 4, 'Complete the sentence using the word or set of words for each blank that best fits the meaning of the sentence as a whole&period;&NewLine;&NewLine;1&period; This spinach omelet makes for &lowbar;&lowbar;&lowbar;&lowbar;&lowbar;&lowbar; breakfast&semi; it has the vegetables and protein needed for a healthy diet&period;', 'a delicious', ' a filling', 'an edible', 'a nutritious', 'a nutritious'),
(44, 4, 'Complete the sentence using the word or set of words for each blank that best fits the meaning of the sentence as a whole&period;&NewLine;&NewLine;2&period; Jerry&rsquo;s grandfather&rsquo;s house is full of &lowbar;&lowbar;&lowbar;&lowbar;&lowbar;&lowbar; technology such as rotary-dial phones and other devices that are no longer in use&period; ', 'prehistoric', ' obsolete', 'current', 'broken', 'obsolete'),
(45, 4, 'Complete the sentence using the word or set of words for each blank that best fits the meaning of the sentence as a whole&period;&NewLine;&NewLine;3&period; Montero was &lowbar;&lowbar;&lowbar;&lowbar;&lowbar;&lowbar; about the upcoming investigation&comma; and he was only made more &lowbar;&lowbar;&lowbar;&lowbar;&lowbar;&lowbar; by the newspaper accounts of it&period;', 'upset &hellip; easygoing', ' angry &hellip; frightened', 'relaxed &hellip; stressed', 'anxious &hellip; nervous', 'anxious &hellip; nervous'),
(46, 4, 'Complete the sentence using the word or set of words for each blank that best fits the meaning of the sentence as a whole&period;&NewLine;&NewLine;5&period; The teacher only has one copy of the worksheet right now&comma; so she is going to &lowbar;&lowbar;&lowbar;&lowbar;&lowbar;&lowbar; it and give the new copy to her student&period;', 'translate', 'multiply', 'duplicate', 'plagiarize ', 'duplicate'),
(47, 4, 'Choose the word that is most nearly opposite in meaning to the word in capital letters&NewLine;&NewLine;1&period;&nbsp;SOLITARY', 'friendly', 'lonely', 'together', 'isolated', 'together'),
(48, 4, 'Choose the word that is most nearly opposite in meaning to the word in capital letters&NewLine;&NewLine;2&period; EXCAVATE', 'scrape', 'hollow', 'bury', 'mask', 'bury'),
(49, 4, 'Choose the word that is most nearly opposite in meaning to the word in capital letters&NewLine;&NewLine;3&period; PROSPER', 'blossom', 'fizzle', 'dishonor', ' flourish', 'fizzle'),
(50, 4, 'Choose the word that is most nearly opposite in meaning to the word in capital letters&NewLine;&NewLine;4&period; PROPEL', 'cede', 'hasten', 'reduce', 'retreat', 'retreat'),
(51, 4, 'Choose the word that is most nearly opposite in meaning to the word in capital letters&NewLine;&NewLine;5&period; CONSENT', 'discard', 'surrender', 'oppose', 'approve', 'oppose'),
(52, 4, 'Choose the best synonym for the following words <br>1&rpar; Decline', 'mountain', 'discipline', 'hill', ' descent', 'descent'),
(53, 4, 'Choose the best synonym for the following words<br>2&rpar; Watch', 'ensue', 'Follow', ' chase', 'view', 'iew'),
(54, 4, 'Choose the best synonym for the following words<br>3&rpar; Proceed', 'begin', 'end', 'engage', ' continue', 'continue'),
(55, 4, 'Choose the best synonym for the following words<br>4&rpar; Contemplate', ' learn', ' appeal', 'ponder', 'forget', 'ponder'),
(56, 4, 'Choose the best synonym for the following words <br> 5&rpar; Realize', 'take', 'affirm', 'encourage', 'grasp', 'grasp'),
(58, 4, 'Complete the sentence using the word or set of words for each blank that best fits the meaning of the sentence as a whole. <br>4. The attorney suggested that the witness&apos;s testimony was ______ because the witness was a known liar', 'sincere', 'amazing', 'insane', 'unreliable', 'unreliable'),
(80, 1, 'When three identical bulbs of 60 watt&comma; 200 volt rating are connected in a series to a 200 volt supply the power drawn by them will be&period;', '60 watt ', '180 watt', '20 watt ', '10 watt', '20 watt'),
(81, 1, 'A convex lens is dipped in a liquid whose refractive index is equal to the refractive index of the lens&period; then its focal length will', 'Becomes zero', 'Becomes infinite ', 'Becomes small but non zero', 'Remains unchanged', 'Becomes infinite '),
(82, 1, 'The electric motor converts', 'Electrical energy into mechanical energy', 'Mechanical energy into electrical energy', 'Electrical energy into light energy', 'None of these', 'Electrical energy into mechanical energy'),
(83, 1, 'Bolometer is used to measure', 'Frequency', 'Temperature', 'Velocity', 'Wavelength', 'Velocity'),
(84, 1, 'A particle of mass m is subjected to an x-directed force is given by  Fx &equals; &lpar;3&period;0&plus;0&period;50x&rpar;N&period; Find  the work done by the force as the particle moves from x&equals;0 m to x&equals;4&period;0m&period;', '0J', '10J', '16J', '32J', '16J'),
(85, 1, 'A particle has an initial velocity of 3i &plus; 4j and an acceleration of 0&period;4i &plus; 0&period;3j units&period; Its speed after 10 s is', '10 units', '7 units', '7&Sqrt;2 units', ' 8&period;5 units', '7&Sqrt;2 units'),
(86, 1, 'A particle of mass m1 makes an elastic&comma; one-dimensional collision with a stationary particle of mass m2&period; What fraction of the kinetic energy of m1 is carried away by m2&quest;', 'm1&sol;m2', 'm2&sol;m1', '&lpar;2&lpar; m1 m2 &rpar;&rpar;&sol;&lpar;&lpar;m1&plus;m2&rpar;&Hat;2&rpar;', '&lpar;4&lpar;m1 m2&rpar;&rpar;&sol;&lpar;&lpar;m1 &plus; m2&rpar; &Hat;2&rpar;', '&lpar;4&lpar;m1 m2&rpar;&rpar;&sol;&lpar;&lpar;m1 &plus; m2&rpar; &Hat;2&rpar;'),
(87, 1, 'A ball falls from rest from a height h onto a floor&comma; and rebounds to a height h&sol;4&period; The coefficient of restitution between the ball and the floor is', '1&sol;&Sqrt;2', '1&sol;2', ' 1&sol;4', '3&sol;4', '1&sol;2'),
(88, 1, 'A bus is moving with a velocity of 5 m&sol;s towards a huge wall&period; The driver sounds a horn of frequency 165 Hz&period; If the speed of sound in air is 335 m&sol;s&comma; the number of beats heard per second by a passenger on the bus will be', '3', '4', '5', '6', '5'),
(89, 1, ' A wave represented by the equation y &equals; a cos&lpar;kx-&omega;t&rpar; is superposed with another wave to form a stationary wave such that the point x&equals;0 is a node&period; The equation of the other wave is', 'a sin&lpar;kx&plus;&omega;t&rpar;', '&ndash;a cos&lpar;kx&plus;&omega;t&rpar;', '&ndash;a cos&lpar;kx-&omega;t&rpar;', '&ndash;a sin&lpar;kx-&omega;t&rpar;', '&ndash;a cos&lpar;kx&plus;&omega;t&rpar;'),
(90, 1, 'A system undergoes a cyclic process in which it absorbs Q1 heat and gives out Q2 heat&period; The efficiency of the process is &eta; and the work done is W&period; Which statement is false&quest;', 'W&equals;Q1-Q2', '&eta;&equals;W&sol;Q1', '&eta;&equals;Q2&sol;Q1', '&eta;&equals;1-&lpar;Q2&sol;Q1&rpar;', '&eta;&equals;Q2&sol;Q1'),
(91, 1, 'A flywheel rotates with a uniform angular acceleration&period; Its angular velocity increases from 20&pi; rad&sol;s to 40&pi; rad&sol;s in 10 s&period; How many rotations did it make in this period&quest;', '80', '100', '120', '150', '150'),
(92, 1, 'At what height above the earth&rsquo;s surface does the acceleration due to gravity falls to 1 &percnt; of its value at the earth&rsquo;s surface &lpar;R&equals;radius of earth&rpar;&quest;', '9R', '10R', '99R', '101R', '9R'),
(93, 1, 'If a metal wire is stretched a little beyond its elastic limit and released&comma; it will', 'lose its elastic property completely', '&nbsp; not contract', '&nbsp;contract&comma; but the final length is greater than the initial length', 'contract only up to its length at the elastic limit', ' contract&comma; but the final length is greater than the initial length'),
(94, 1, '&nbsp; Bernoulli&rsquo;s principle is a consequence of', 'Conservation of energy only', 'Conservation of momentum only', 'Conservation of angular momentum only', 'More than one of the above', 'Conservation of energy only'),
(95, 1, ' A beaker containing a liquid of density &rho; moves up with an acceleration a&period; The pressure due to the liquid at a depth h below the free surface of the liquid is', 'h&rho;g', 'h&rho;&lpar;g&plus;a&rpar;', 'h&rho;&lpar;g-a&rpar;', '2h&rho;g &lpar; &lpar;g-a&rpar;&sol;&lpar;g&plus;a&rpar;&rpar;', 'h&rho;&lpar;g&plus;a&rpar;'),
(96, 1, 'What is the power dissipated in a 4 ohm light bulb connected to a 12V battery&quest;', '72W', '36W', '30W', 'None', '36W'),
(97, 1, 'What is the atomic weight of an electron&quest;', '5&period;48X10-4kg&sol;kmol ', '5&period;48X10-8 kJ&sol;kmol', '3&period;5X10-6kJ&sol;kmol ', 'None of these', '5&period;48X10-8 kJ&sol;kmol'),
(98, 1, 'A uniform rectangular marble slab is 3&period;4m long and 2&period;0m wide&period; It has a mass of 180kg&period; If it is originally lying on the flat ground &comma; how much work is needed to stand it on end&quest;             ', '2&period;5kJ', '2&period;0kJ', '6&period;0kJ', '3&period;0kJ', '3&period;0kJ'),
(100, 1, 'Stars twinkle because', 'the intensity of light emitted by them changes with time', 'the distance of the stars from the earth changes with time', 'the refractive index of the different layers of the earth\'s atmosphere changes continuously, consequently the position of the image of a star changes with time', 'the light from the star is scattered by the dust particles and air molecules in the earth\'s atmosphere', 'the refractive index of the different layers of the earth\'s atmosphere changes continuously, consequently the position of the image of a star changes with time');

-- --------------------------------------------------------

--
-- Table structure for table `results_master`
--

CREATE TABLE `results_master` (
  `student_id` int(11) NOT NULL,
  `physics` int(11) NOT NULL,
  `chemistry` int(11) NOT NULL,
  `maths` int(11) NOT NULL,
  `english` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

CREATE TABLE `student_master` (
  `student_id` int(11) NOT NULL,
  `reg_no` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` bigint(10) NOT NULL,
  `dept_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE `subject_master` (
  `subject_id` int(11) NOT NULL,
  `subject_name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`subject_id`, `subject_name`) VALUES
(1, 'Physics'),
(2, 'Chemistry'),
(3, 'Mathematics'),
(4, 'English');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_master`
--
ALTER TABLE `department_master`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `questions_master`
--
ALTER TABLE `questions_master`
  ADD PRIMARY KEY (`ques_id`),
  ADD KEY `subjects` (`subject_id`);

--
-- Indexes for table `results_master`
--
ALTER TABLE `results_master`
  ADD KEY `studentresult` (`student_id`);

--
-- Indexes for table `student_master`
--
ALTER TABLE `student_master`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `department` (`dept_id`);

--
-- Indexes for table `subject_master`
--
ALTER TABLE `subject_master`
  ADD PRIMARY KEY (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions_master`
--
ALTER TABLE `questions_master`
  MODIFY `ques_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `student_master`
--
ALTER TABLE `student_master`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_master`
--
ALTER TABLE `subject_master`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions_master`
--
ALTER TABLE `questions_master`
  ADD CONSTRAINT `subjects` FOREIGN KEY (`subject_id`) REFERENCES `subject_master` (`subject_id`);

--
-- Constraints for table `results_master`
--
ALTER TABLE `results_master`
  ADD CONSTRAINT `studentresult` FOREIGN KEY (`student_id`) REFERENCES `student_master` (`student_id`);

--
-- Constraints for table `student_master`
--
ALTER TABLE `student_master`
  ADD CONSTRAINT `department` FOREIGN KEY (`dept_id`) REFERENCES `department_master` (`dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
