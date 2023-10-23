use codeup_test_db;

drop table if exists albums;
CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT not null ,
    artist VARCHAR (50) not null,
    name VARCHAR(50) not null ,
    release_date int(4)not null ,
    sales decimal(3,1) unsigned not null ,
    genre varchar(255) not null ,
    primary key (id)
);

