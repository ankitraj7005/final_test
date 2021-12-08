-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 08:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `walkover_assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'What is the full form of SQL? ', 'Structured Query List\r\n ', 'Structured Query Language', 'Simple Query Language', 'None of these', 'Structured Query Language\r\n \r\n '),
(2, 'Which is the subset of SQL commands used to manipulate Oracle Database structures, including tables? ', 'Data Definition Language(DDL)', 'Data Manipulation Language(DML)', 'Both of above', 'None', 'Data Definition Language(DDL)\r\n \r\n   '),
(3, 'Which of the following is not a valid SQL type?', 'FLOAT', 'NUMERIC', 'DECIMAL', 'CHARACTER', 'DECIMAL'),
(4, 'Which of the following is not a DDL command?', 'TRUNCATE\r\n   ', 'ALTER\r\n    ', 'CREATE\r\n    \r\n', 'UPDATE', 'UPDATE'),
(5, 'Which of the following are TCL commands?', 'COMMIT and ROLLBACK\r\n    ', 'UPDATE and TRUNCATE\r\n    \r\n', 'SELECT and INSERT\r\n    ', 'GRANT and REVOKE', 'COMMIT and ROLLBACK'),
(6, 'Which statement is used to delete all rows in a table without having the action logged?', 'DELETE\r\n    \r\n', 'REMOVE\r\n    ', 'DROP\r\n    ', 'TRUNCATE', 'TRUNCATE'),
(7, 'HTML stands for -', 'HighText Machine Language\r\n    \r\n', 'HyperText and links Markup Language\r\n    ', 'HyperText Markup Language\r\n    ', 'None of these', 'HyperText Markup Language'),
(8, 'The correct sequence of HTML tags for starting a webpage is - ', 'Head, Title, HTML, body\r\n    ', 'HTML, Body, Title, Head\r\n    \r\n', 'HTML, Head, Title, Body\r\n    ', 'Body, HTML, Head, Title', 'HTML, Head, Title, Body'),
(9, 'Which of the following element is responsible for making the text bold in HTML?', '<pre>\r\n    ', '<a>\r\n    \r\n', '<b>\r\n    ', '<br>', '<b>'),
(10, 'Which of the following tag is used for inserting the largest heading in HTML?', '<h3>\r\n    \r\n', '<h1>\r\n   ', '<h5>\r\n   ', '<h6>', '<h1>'),
(11, 'CSS stands for -', 'Cascade style sheets\r\n    \r\n', 'Color and style sheets\r\n    ', 'Cascading style sheets\r\n    ', 'None of the above', 'Cascading style sheets'),
(12, 'The HTML attribute used to define the internal stylesheet is -', '<style>\r\n    \r\n', 'style\r\n    ', '<link>\r\n    ', '<script>', '<script>'),
(13, 'Which character is used to represent the closing of a tag in HTML?', '\\\r\n    ', '!\r\n    ', '/\r\n    ', '.\r\n', '/'),
(14, 'How to create an ordered list (a list with the list items in numbers) in HTML?', '<ul>\r\n    ', '<ol>\r\n    ', '<li>\r\n    \r\n', '<i>', '<ol>'),
(15, 'Which of the following element is responsible for making the text italic in HTML?', '<i>\r\n   ', '<italic>\r\n    ', '<it>\r\n    \r\n', '<pre>', '<i>'),
(16, 'Which of the following tag is used to make the underlined text?', '<i>\r\n   ', '<ul>\r\n    ', '<u>\r\n    \r\n', '<pre>', '<u>'),
(17, 'Which of the following tag is used to define options in a drop-down selection list?', '<select>\r\n    ', '<list>\r\n   ', '<dropdown>\r\n   \r\n', '<option>', '<option>'),
(18, 'The <hr> tag in HTML is used for -', 'new line\r\n    \r\n', 'vertical ruler\r\n    ', 'new paragraph\r\n    ', 'horizontal ruler', 'horizontal ruler'),
(19, 'Which of the following HTML tag is used to display the text with scrolling effect?', '<marquee>\r\n    ', '<scroll>\r\n    \r\n', '<div>\r\n    ', 'None of the above', '<marquee>'),
(20, 'Which of the following is the container for <tr>, <th>, and <td> ?', '<data>\r\n    \r\n', '<table>\r\n    ', '<group>\r\n   ', 'All of the above', '<table>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `marks` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `marks`, `date`) VALUES
(1, 'Ankit Raj', 'ankit@gmail.com', 4, '2021-12-07 13:43:37'),
(2, 'wads', 'asdasd@dfs.com', 1, '2021-12-07 15:08:58'),
(3, 'sfaada', 'asdasd@adsadd.com', 0, '2021-12-07 15:11:08'),
(4, 'sdfsdf', 'dsfs@assfdf.com', 0, '2021-12-07 15:13:50'),
(5, 'sdfsdf', 'dsfs@assfdf.com', 5, '2021-12-07 15:15:19'),
(46, 'Nitish Kumar', 'nitish123@gmail.com', 2, '2021-12-08 12:47:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
