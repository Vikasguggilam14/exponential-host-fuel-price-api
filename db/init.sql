create database if not exists fuel_prices default character set `utf8mb4`;

use fuel_prices;

CREATE TABLE `state_wise_prices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'india',
  `fuel` varchar(255) NOT NULL DEFAULT 'petrol',
  `date` date NOT NULL DEFAULT current_date(),
  `last_updated` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
);

CREATE TABLE `city_wise_prices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'india',
  `fuel` varchar(255) NOT NULL DEFAULT 'petrol',
  `date` date NOT NULL DEFAULT current_date(),
  `last_updated` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
);


