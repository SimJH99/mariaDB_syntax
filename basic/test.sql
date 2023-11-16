drop database if exists board;
show databases;


-- CREATE TABLE `post` (
--    `id` int(11) NOT NULL,
--    `title` varchar(255) DEFAULT NULL,
--    `contents` varchar(3000) DEFAULT NULL,
--    `author_id` int(11) DEFAULT NULL,
--    PRIMARY KEY (`id`),
--    KEY `author_id` (`author_id`),
--    CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci



-- CREATE TABLE `author` (
--    `id` int(11) NOT NULL,
--    `name` varchar(100) NOT NULL,
--    `email` varchar(255) DEFAULT NULL,
--    `password` varchar(255) DEFAULT NULL,
--    `role` varchar(50) DEFAULT NULL,
--    `address` varchar(255) DEFAULT NULL,
--    PRIMARY KEY (`id`)
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

