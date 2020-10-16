CREATE TABLE users(
id int NOT NULL AUTO_INCREMENT,
username varchar(255),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);


CREATE TABLE authors(
id int NOT NULL AUTO_INCREMENT,
first_name varchar(255),
last_name varchar(255),
created at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated at DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);


CREATE TABLE favourites(
id int NOT NULL AUTO_INCREMENT,
user_id int NOT NULL,
book_id int NOT NULL,
created at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated at DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (book_id) REFERENCES books(id)
);


CREATE TABLE books(
id int NOT NULL AUTO_INCREMENT,
title varchar(255),
author_id int not null,
publishing_year varchar(255),
genre varchar(255),
created at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated at DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id)
FOREIGN KEY (author_id) REFERENCES authors(id)
);
