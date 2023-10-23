use codeup_test_db;

drop table if exists albums;
CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR (50) not null,
    name VARCHAR(50),
    release_date DATE,
    sales decimal(11,2) unsigned,
    genre varchar(255),
    primary key (id)
);