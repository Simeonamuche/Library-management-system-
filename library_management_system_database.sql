-

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `books_tb` (
  `book_id` int(224) NOT NULL,
  `book_title` varchar(200) NOT NULL,
  `book_brief` text NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_genre` varchar(50) NOT NULL,
  `book_isbn` int(100) NOT NULL,
  `book_quantity` int(100) NOT NULL,
  `published_date` varchar(100) NOT NULL,
  `cover_image` varchar(100) NOT NULL,
  `book_status` varchar(50) NOT NULL DEFAULT 'Available',
  `uploaded_by` varchar(100) NOT NULL,
  `book_file` varchar(200) NOT NULL,
  `ipaddress` varchar(100) NOT NULL,
  `recycle` varchar(10) NOT NULL DEFAULT 'False'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `borrowed_books` (
  `request_id` int(224) NOT NULL,
  `book_id` varchar(224) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `date_borrowed` varchar(50) NOT NULL,
  `returning_date` varchar(100) NOT NULL,
  `date_returned` varchar(50) NOT NULL,
  `borrowed_by_id` varchar(100) NOT NULL,
  `borrowed_by_name` varchar(200) NOT NULL,
  `borrow_status` varchar(40) NOT NULL DEFAULT 'Borrowed',
  `ipaddress` varchar(50) NOT NULL,
  `recycle` varchar(10) NOT NULL DEFAULT 'False'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;





CREATE TABLE `users` (
  `user_id` int(224) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `account_category` varchar(13) NOT NULL,
  `password` varchar(225) NOT NULL,
  `date_registered` varchar(100) NOT NULL,
  `ipaddress` varchar(50) NOT NULL,
  `recycle` varchar(10) NOT NULL DEFAULT 'False'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `books_tb`
  ADD PRIMARY KEY (`book_id`)
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`request_id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `books_tb`
  MODIFY `book_id` int(224) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `borrowed_books`
  MODIFY `request_id` int(224) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `users`
  MODIFY `user_id` int(224) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
