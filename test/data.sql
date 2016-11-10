insert into users (name, family_name, email) values ('Leeroy', 'Jenkins', 'lj1337@columbia.edu');
insert into users (name, family_name, email) values ('Matt', 'Mallett', 'mm4673@columbia.edu');

/* student 1, uid = 3 */
insert into users (name, family_name, email) values ('Dave', 'Student', 'ds9876@columbia.edu');
insert into students (sid, uni) values (3, 'ds9876');

/* teacher 1, uid = 4 */
insert into users (name, family_name, email) values ('Douglas', 'Teacher', 'dougs@cs.columbia.edu');
insert into teachers (tid) values (4);

/* student 2, uid = 5 */
insert into users (name, family_name, email) values ('Grommash', 'Hellscream', 'gh1234@columbia.edu');
insert into students (sid, uni) values (5, 'gh1234');

/* student 3, uid = 6 */
insert into users (name, family_name, email) values ('Jaina', 'Proudmoore', 'jp9122@columbia.edu');
insert into students (sid, uni) values (6, 'jp9122');


/* insert courses here */
insert into courses (name, active) values ('Running', 0); /* cid=1 */
insert into courses (name, active) values ('Writing', 0); /* cid=2 */
insert into courses (name, active) values ('German 3', 0); /* cid=3 */
insert into courses (name, active) values ('Art History', 0); /* cid=4 */

/* Dave and Grommash enrolled in Art History */
insert into enrolled_in (sid, cid) values (3, 4);
insert into enrolled_in (sid, cid) values (5, 4);

/* add session for art history */
insert into sessions (cid, secret, expires, day) values (4, '7878', '23:59:59', '2016-11-01'); /* seid = 1 */
insert into sessions (cid, secret, expires, day) values (4, '0000', '23:59:59', '2020-01-01'); /* seid = 2 */

/* add attendance records */
/* add Dave into old and new sessions */
insert into attendance_records (sid, seid) values (3, 1);
insert into attendance_records (sid, seid) values (3, 2);
