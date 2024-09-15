-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 06:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(3, 'Self love', 'ok ok'),
(5, 'uncategorised', 'category not non'),
(7, 'Productivity', 'Do it'),
(8, 'Travel', 'the act of traveling: passage.: a journey especially to a distant or unfamiliar place: tour, trip. often used in the plural. travels plural: an account of one&#039;s travels.'),
(10, 'BTS', 'bangtaon');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(21, 'A Summer Mood Board', '   Sunscreen is the smell of summer. And salty skin and salty hair. Ruled by long days and gradient skies. Linen sheets, pastels, and ditsy florals. Even the rain is sweet in the summertime. Long drives to the seaside and a sense of spontaneity that only can exist during summer. I never want you to end. \r\n\r\nWith the sun shining outside and the temperatures skyrocketing, it&rsquo;s time to enjoy the longer day hour. Unless you&rsquo;re in a dark gothic mood and can&rsquo;t wait for the darkness, Summer is the time to venture out and try different experiences. On that note, not all summers are built the same and despite the sunshine, there are one or a few summer aesthetics that will resonate more with your lifestyle. And it matters because it can help you plan your vacations and your budget and turn it into a much more fulfilling experience for your soul than just going with the flow. So, this is a visual post, with inspiring images of different summer aesthetics. My goal? That you feel naturally connected to the summer aesthetic that speaks to your soul.\r\n\r\n', '1675604472Summer-Moodboard.jpg', '2023-02-05 13:36:20', 3, 30, 0),
(22, '10 best study apps for students', '      Being a student isn&#039;t easy, and with distractions all around us, it isn&rsquo;t surprising that many of us find it challenging to organize our time or stay focused on our studies.\r\n\r\nAs a student, time management is an essential skill to find success in your academics, but it also allows you to make time for other passions and take care of yourself and your mental health.      \r\n|| Forest ||\r\n\r\niOS, Android, Chrome extension || Free for Android or available for purchase on iOS\r\n\r\nThis app takes on a creative approach to help you stay focused. Whenever you want to start a study session, you plant a tree in your in-app &ldquo;forest&rdquo;. As you work, the tree will begin to grow, but if you pick up your phone and leave the app, your tree dies! You can collect and add more trees to your forest the more you focus. The company even plants real trees in dozens of countries! It&rsquo;s a win-win situation for you and the Earth.   ||\r\n\r\n\r\n\r\n|| Tide ||\r\niOS, Android, Chrome extension || Free\r\n\r\nMy personal favourite focus app, Tide, is the perfect fusion of productivity, wellness, and beautiful design. The app allows you to set up personalized Pomodoro-focus sessions, with a wide variety of nature sounds, white noise, and calm music. If you leave the app, you&rsquo;ll &ldquo;fail&rdquo; the focus session! The app also features sleep, nap, meditation, and beautiful daily quotes to keep you motivated.\r\n    ||\r\n\r\n\r\n|| Motion ||\r\nChrome extension || Paid with free trial available\r\n\r\nAs a university student, you&rsquo;ll be using laptops A LOT, and if you&rsquo;re using the internet to work and take notes, well, I hate to break it to you, but distractions are aplenty in your browser as well.\r\n\r\nMotion&rsquo;s free plan will block distracting sites like Facebook and YouTube. You&rsquo;ll also receive a report on how much of your time online is productive or distracted. ||\r\n\r\n\r\n || Cold Turkey ||\r\nMacOS, Windows (Works on all web browsers) || Free for Basic Plan\r\n\r\nIf you still find yourself getting distracted, this one&rsquo;s for you. I&rsquo;ve used this app in my browser and let me tell you &ndash; it works. Cold Turkey will allow you to start a timer, during which distracting websites will be blocked entirely.\r\n\r\nUntil the timer stops, there&rsquo;s no way to unblock the sites and no turning back. You can even block the entire internet if you need to. Other apps have a way around website blocks, but not this one. Talk about tough love.\r\n\r\n \r\nManage your time\r\nYou&rsquo;ll be in charge of your own time in university, so it&rsquo;s important to stay on top of your schedule and things you need to do. If you never liked carrying a physical agenda around, give these apps a try. ||\r\n\r\n\r\n\r\n|| Google Calendar ||\r\nWeb application, iOS, Android || Free\r\n\r\nGoogle Calendar is classic, simple, practical, and by far the most used app by all my peers. It allows you to organize all your classes, events, extracurriculars, and assignment deadlines across your phone and computer.\r\n\r\nWith its clean interface, you can easily see commitments throughout your day, week, and month. Set up reminders before events or for to-dos so you&rsquo;ll never forget anything. Say goodbye to missed deadlines and forgotten meetings, and hello to an organized student life!\r\n\r\n&quot;Google Calendar is the way to go! Out of all the task management strategies and apps I&#039;ve tried, it&#039;s easily the best!&quot; - Kiko (she/her), third-year Biomedical Sciences student ||\r\n\r\n \r\n\r\n\r\n|| Microsoft To Do ||\r\nWeb application, iOS, Android, MacOS, Windows || Free\r\n\r\nAs a Waterloo student, you have access to all the Microsoft 365 apps at your fingertips, for free. Using Microsoft To Do, you can start each day with a clean outlook on the tasks you need to do, across all your devices.\r\n\r\nBeing a student involves balancing assignments, clubs, errands, and everyday tasks, so this app can help you get each task finished. If a task requires multiple steps, you can add subtasks under each one! When you&rsquo;re done, enjoy the satisfaction of checking it off.\r\n\r\n&quot;Love it and talk about it often when asked about how to improve time management.&quot; - Joyce (she/her), Master of Accounting student ||\r\n\r\n \r\n', '16756053916120e742b2f68885fa49cdaf42e0f38c.jpg', '2023-02-05 13:52:57', 3, 31, 1),
(23, 'How To Make a Digital Mood Board', ' This is a guide on how to make an aesthetic digital mood board. Mood boards help me to visually express my ideas or a concept. I use them to guide my personal projects, to express creativity and also as content for my audience. The process of creating a mood board isn&rsquo;t linear - it can be back and forth of curating and editing. This process really helps to bring clarity to the concept you&rsquo;re trying to express. \r\nA mood board is a collage of visual ideas, ranging from photography, advertisements, logo designs, text, color guides, and other sources of information. Think of it as an inspiration board.\r\n\r\nWhat is a mood board made for?\r\n\r\nCollectively, mood boards define the style and tone of your project. They help team members and clients to understand your ideas in a visual way so that everyone can agree on certain elements from the very beginning.\r\n\r\nMood boards are used across a wide range of creative disciplines, but they are especially utilized in graphic and interior design, fashion, and advertising. Or you can just make them for fun!\r\n\r\nLet&rsquo;s dive a little deeper into the advantages of a mood board:\r\n\r\n🌈 Inspiration: Sometimes it&rsquo;s hard to come up with new ideas. You might have been tasked with a project that&rsquo;s out of your comfort zone, or maybe you&rsquo;re just having an off-day. Either way, making a mood board will get those creative juices flowing, and soon enough, you&rsquo;ll have tons of ideas to present to your client!\r\n\r\n☁️ A solid vision: It&rsquo;s not uncommon that you and a client verbally agree on a design concept, but you both visualize something completely different. Mood boards are a great representation of your design direction; to keep you, your team, and your client on the same wavelength.\r\n\r\n💬 Communication: It&rsquo;s important that you and your client are on the same page, and mood boards help you do that. Mood boards help represent your ideas in material form to a client, like a little glimpse into your design thoughts! Clients can give you constructive criticism from the get-go so that you don&rsquo;t waste time working on something that your client ends up turning down.', '1675606897eg-bright-moodyjpg.jpg', '2023-02-05 14:21:37', 3, 33, 0),
(26, '5 Cottagecore Aesthetic Movies', '  Moonrise Kingdom (2012),The Secret Garden (1993),Anne Of Green Gables (1985) - Two Part Series,The Secret World Of Arrietty (2010),\r\nPride And Prejudice (2005)', '1675855455little-women.jpg', '2023-02-08 11:24:15', 3, 6, 0),
(31, 'Dreamy Bedroom Makeover: Creating a Cozy Sanctuary for Self-Care', ' In the hustle and bustle of modern life, finding solace and relaxation is crucial for mental and emotional well-being. Your bedroom can be your personal sanctuary, a space to unwind and rejuvenate. In this blog post, we&#039;ll explore how to transform your bedroom into a haven for self-care.\r\n\r\n1. Plan and Refresh\r\n\r\nBegin your journey by planning wisely and setting a budget. Declutter your space to create a clean canvas for transformation. A clutter-free environment can have a significant impact on your mental clarity and sense of calm.\r\n\r\n2. Calming Color Palette\r\n\r\nChoose a color palette that promotes tranquility. Soft, soothing colors like pastels, muted tones, or earthy hues work wonders in creating a serene atmosphere. Your bedroom&#039;s color scheme should resonate with your personal sense of peace.\r\n\r\n3. Bedding and Lighting\r\n\r\nInvest in high-quality bedding and linens for a plush and inviting bed. Layering with comfortable sheets, plump pillows, and warm blankets can make your bed the ultimate retreat. Lighting is equally important; opt for soft, warm lighting like bedside lamps or fairy lights to set the mood.\r\n\r\n4. Personalized Decor*\r\n\r\nPersonal touches make your space uniquely yours. Add custom art, decorative items, and meaningful memorabilia that reflect your personality and style. These touches not only enhance aesthetics but also create a deeper connection to your space.\r\n\r\n5. Organize Efficiently\r\n\r\nAn organized and clutter-free bedroom is essential for maintaining a peaceful environment. Explore practical tips for organizing your clothes, accessories, and personal items efficiently. Incorporate storage solutions that balance functionality with aesthetics.\r\n\r\n6. Relaxation Nook\r\n\r\nConsider dedicating a corner of your bedroom to relaxation. Whether it&#039;s a cozy reading nook or a meditation space, having a designated area for self-care activities can enhance your daily routine and provide a peaceful escape.\r\n\r\nConclusion\r\n\r\nIn the end, a dreamy bedroom makeover is about nurturing your well-being. It&#039;s not just about aesthetics but creating an environment that supports self-care and inner peace. Transform your bedroom into a cozy retreat and discover the positive impact it can have on your life.\r\n\r\n', '1695462125my new vanity _3.jpg', '2023-09-23 09:42:05', 3, 34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(6, 'Shwetha', 'S K', 'shwe1144', 'shwee@gmail.com', '$2y$10$ZjkXlZCmY0BedcQzzocRWOUPFnhqHoz9tAr3DyHdOh.2sk5f3cagS', '1673959752⚘Kyoko Hori.jpg', 1),
(29, 'shruthi sk', 's', 'jin11', 'shruthi@gmail.com', '$2y$10$BkP9AtHriTazZMIRr2zXwOzX.UD/ie8eDvtp6N7.pIN/08nWcMHLO', '1675155025⚘Kyoko Hori.jpg', 0),
(30, 'Jihyo', 'park', 'Jihyoyaaa', 'jihyo@gmail.com', '$2y$10$B8zRN2xm6a3CYepiFZzw4.JJAeax2Ozzh3IUHA4ElQ9pezw3QqNgi', '167560310617a10c682994411f0b083e7608ca10ce.jpg', 0),
(31, 'Im', 'Nayeon', 'Nayeon', 'nay@gmail.com', '$2y$10$FVTUC4MgXtepHOASynyCL.Q9CKDCgVM06HHBQS5RNZs38vrW73S1W', '16756047394d5d695124525c62479638f6fcd294de.jpg', 0),
(33, 'Soobin', 'choi', 'Soobin', 'soobin@gmail.com', '$2y$10$qqvvGkxV.UGXqGgtSKutGekslAJiSeSDAzthTXJGBeBtPwCjgaQYG', '167560656414eb809191fda1c0494d137f75548d69.jpg', 0),
(34, 'Aadya', 'S', 'Aadya', 'shruthiisk11s4@gmail.com', '$2y$10$focu6duXnkCfRBMYu4wA0eoN7Vu6qXCrNfXZjW2wy0OHrBEgyvzdS', '169546182117a10c682994411f0b083e7608ca10ce.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
