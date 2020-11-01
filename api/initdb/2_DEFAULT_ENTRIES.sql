INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
INSERT INTO facilities(name) VALUES('vidéoprojecteur');
INSERT INTO facilities(name) VALUES('écran tactile');
INSERT INTO facilities(name) VALUES('microphone');
INSERT INTO facilities(name) VALUES('controlleur tactile');
INSERT INTO facilities(name) VALUES('sans équipements');
INSERT INTO rooms(capacity, name) VALUES ('30', 'Stade de France');
INSERT INTO rooms(capacity, name) VALUES ('15', 'rafale');
INSERT INTO rooms(capacity, name) VALUES ('20', '2L');
INSERT INTO rooms(capacity, name) VALUES ('50', 'Arena');
INSERT INTO room_facility(room_id, facility_id) VALUES (1,1);
INSERT INTO room_facility(room_id, facility_id) VALUES (1,2);
INSERT INTO room_facility(room_id, facility_id) VALUES (2,1);
INSERT INTO room_facility(room_id, facility_id) VALUES (3,3);
INSERT INTO room_facility(room_id, facility_id) VALUES (3,4);
INSERT INTO room_facility(room_id, facility_id) VALUES (4,5);
INSERT INTO users(birth_date, email, password, username) VALUES ('12/02/1992','leon.pofire@epfedu.fr','leopof25','leopof');
INSERT INTO user_roles(user_id, role_id) VALUES (1,2);
INSERT INTO users(birth_date, email, password, username) VALUES ('25/05/1992','marc.ofes@epfedu.fr','macofe84!','marc ofes');
INSERT INTO reservations(begin_hour, date, end_hour, room_id, user_id) VALUES (1535,12/11/2020,1630,1,2);
INSERT INTO reservations(begin_hour, date, end_hour, room_id, user_id) VALUES (1545,14/11/2020,1645,2,1);
INSERT INTO reservations(begin_hour, date, end_hour, room_id, user_id) VALUES (1430,13/11/2020,1530,4,2);
INSERT INTO user_guest(user_id, reservation_id) VALUES (1,1);
INSERT INTO user_guest(user_id, reservation_id) VALUES (1,3);
