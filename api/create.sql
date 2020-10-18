create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
create table facilities (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table guests (id bigint not null auto_increment, state varchar(255), reservation_id bigint not null, guest_id bigint not null, primary key (id)) engine=InnoDB
create table reservations (id bigint not null auto_increment, begin_hour integer, date datetime(6), end_hour integer, room_id bigint not null, user_id bigint not null, primary key (id)) engine=InnoDB
create table roles (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table room_facility (room_id bigint not null, facility_id bigint not null) engine=InnoDB
create table rooms (id bigint not null auto_increment, capacity integer, name varchar(255), primary key (id)) engine=InnoDB
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB
create table users (id bigint not null auto_increment, birth_date varchar(255), email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations (id)
alter table guests add constraint FK1mhl5dk32sjg1e6o7n8d93tx6 foreign key (guest_id) references users (id)
alter table reservations add constraint FKljt6q1tp205b0h26eiegc5mx6 foreign key (room_id) references rooms (id)
alter table reservations add constraint FKb5g9io5h54iwl2inkno50ppln foreign key (user_id) references users (id)
alter table room_facility add constraint FK2752lvfqw6woja7xbvg2wsfof foreign key (facility_id) references facilities (id)
alter table room_facility add constraint FKbaa1ldm4blxedeu9lrcjtqsrl foreign key (room_id) references rooms (id)
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id)
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id)
