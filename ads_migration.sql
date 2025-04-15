use adlister_db;

# drop table if exists albums;
CREATE TABLE ads(
                      id INT UNSIGNED AUTO_INCREMENT not null ,
                      user_id INT unsigned not null,
                      title VARCHAR(100) not null ,
                      description VARCHAR(255) not null,
                      primary key (id),
                      foreign key (user_id) REFERENCES users(id)
);

SELECT * from ads join users on ads.user_id = users.id;