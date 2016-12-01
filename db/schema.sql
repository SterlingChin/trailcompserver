DROP TABLE IF EXISTS pinsTable, hiketable, users;

CREATE TABLE users(
 UserId SERIAL PRIMARY KEY,
 first_name varchar(40),
 last_name varchar(40),
 address varchar(75),
 city varchar(75),
 state varchar(50),
 zip varchar(10),
 phone varchar(15),
 username varchar(75)
 );
 INSERT INTO users (first_name, last_name, address, city, state, zip, phone, username) values
 ('Sterling', 'Chin', '123 Test St.', 'Pleasant Grove', 'UT', 84062, 8019211359, 'sterlingchin'),
 ('Jon', 'Smith', '321 Post St.', 'Provo', 'UT', 84604, 8013214567, 'jonsmith'),
 ('Max', 'Rodewald', '1357 Christie Dr.', 'Princeton', 'NJ', 08540, 8019998888, 'maxrodewald');

CREATE TABLE hiketable
(
hikeId SERIAL PRIMARY KEY,
userId INTEGER,
hike_name varchar(150)
)
;

CREATE TABLE pinsTable
(
pinId SERIAL PRIMARY KEY,
lat INTEGER,
long INTEGER,
date_time TIMESTAMP with TIME ZONE,
hikeId INTEGER,
start_point BOOLEAN,
end_point BOOLEAN
);
