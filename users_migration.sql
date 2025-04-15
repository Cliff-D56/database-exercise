use adlister_db;

# drop table if exists albums;
CREATE TABLE users(
                       id INT UNSIGNED AUTO_INCREMENT not null ,
                       username VARCHAR(150) not null ,
                       email VARCHAR(150) not null ,
                       password VARCHAR(50) not null,
                       primary key (id)
);