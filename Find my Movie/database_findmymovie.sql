CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
   `year` int(4) NOT NULL,
   `decade` varchar(20) NOT NULL,
  `genre` varchar(80) NOT NULL,
  `actors` varchar(80) NOT NULL,
  `duration` varchar(12) NOT NULL,
  `director` varchar(80)  NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `shortsummary` varchar(1000) NOT NULL,
  `imdbRating` double NOT NULL,
  `findMyMovieRating` double NOT NULL,
  `imageurl` varchar(100) NOT NULL,
  KEY (`id`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

CREATE TABLE `user` (
	  `uid` int(11) AUTO_INCREMENT,
      `name` varchar(45) NOT NULL,
	   `surname` varchar(45) NOT NULL,
	   `email` varchar(255) NOT NULL,
	  `username` varchar(45) NOT NULL,
	  `password` varchar(45) NOT NULL,
	  `user_image`varchar(100) DEFAULT 'images/findmymovie/despoina.jpg',
      KEY (`username`),
	  PRIMARY KEY (`uid`,`username`)
)ENGINE=InnoDB DEFAULT CHARSET=greek;

CREATE TABLE `comment` (
  `id` int(11) AUTO_INCREMENT,
  `content` text(2000) NOT NULL,
   `date` varchar(100) NOT NULL,
   `username` varchar(45) NOT NULL,
   `movieId` int(11) NOT NULL,
   `uid` int(11) NOT NULL,
   PRIMARY KEY (`id`),
   CONSTRAINT FOREIGN KEY (movieId) REFERENCES movies(id),
   CONSTRAINT FOREIGN KEY (uid) REFERENCES user(uid)
)ENGINE=InnoDB DEFAULT CHARSET=greek;


CREATE TABLE `favorites` (
  `id` int(11) AUTO_INCREMENT,
   `movieId` int(11) NOT NULL,
   `uid` int(11) NOT NULL,
   PRIMARY KEY (`id`),
   CONSTRAINT FOREIGN KEY (movieId) REFERENCES movies(id),
   CONSTRAINT FOREIGN KEY (uid) REFERENCES user(uid)
)ENGINE=InnoDB DEFAULT CHARSET=greek;


CREATE TABLE `wantToWatch` (
  `id` int(11) AUTO_INCREMENT,
   `movieId` int(11) NOT NULL,
   `uid` int(11) NOT NULL,
   PRIMARY KEY (`id`),
   CONSTRAINT FOREIGN KEY (movieId) REFERENCES movies(id),
   CONSTRAINT FOREIGN KEY (uid) REFERENCES user(uid)
)ENGINE=InnoDB DEFAULT CHARSET=greek;