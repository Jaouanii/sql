DROP DATABASE IF EXISTS tv ;

CREATE DATABASE tv;

CREATE TABLE tv.theme(
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL

);


CREATE TABLE tv.tvshow(
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL

);

-- table de jointure:

CREATE TABLE tv.tvshow_theme(
    theme_id TINYINT UNSIGNED,
    tvshow_id TINYINT UNSIGNED,
    PRIMARY KEY (tvshow_id, theme_id),
    FOREIGN KEY (theme_id) REFERENCES theme(id),
    FOREIGN KEY (tvshow_id) REFERENCES tvshow(id)
);

CREATE TABLE tv.season(
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    number TINYINT(2) NOT NULL,
    tvshow_id TINYINT UNSIGNED,
    FOREIGN KEY (tvshow_id) REFERENCES tvshow(id)
);

CREATE TABLE tv.episode(
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    number TINYINT(3) UNSIGNED NOT NULL,
    duration INT NOT NULL,
    season_id TINYINT UNSIGNED,
    FOREIGN KEY (season_id) REFERENCES season(id)
);







