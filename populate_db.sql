insert into worker (name, birthday, salary, level) values ('Artem', '1995-01-01',800,'Trainee');
insert into worker (name, birthday, salary, level) values ('Arteq', '1995-01-02',8000,'Senior');
insert into worker (name, birthday, salary, level) values ('Artew', '1995-01-03',1200,'Junior');
insert into worker (name, birthday, salary, level) values ('Artee', '1995-01-04',2300,'Trainee');
insert into worker (name, birthday, salary, level) values ('Arter', '1995-01-05',3300,'Middle');
insert into worker (name, birthday, salary, level) values ('Artet', '1995-01-06',1900,'Middle');
insert into worker (name, birthday, salary, level) values ('Artey', '1995-01-07',1800,'Trainee');
insert into worker (name, birthday, salary, level) values ('Arteu', '1995-01-08',1890,'Middle');
insert into worker (name, birthday, salary, level) values ('Artei', '1995-01-09',1240,'Trainee');
insert into worker (name, birthday, salary, level) values ('Arteo', '1995-01-20',3459,'Senior');

insert into client (name) values ('Meta');
insert into client (name) values ('Tesla');
insert into client (name) values ('Alibaba');
insert into client (name) values ('BMW');
insert into client (name) values ('Glovo');

insert into project (start_date, finish_date, client_id) values ('2024-11-11', '2025-10-11',(select id as client_id from client where name = 'Alibaba'));
insert into project (start_date, finish_date, client_id) values ('2024-11-10', '2025-10-10',(select id as client_id from client where name = 'Alibaba'));
insert into project (start_date, finish_date, client_id) values ('2024-11-12', '2025-10-12',(select id as client_id from client where name = 'Meta'));
insert into project (start_date, finish_date, client_id) values ('2024-11-13', '2025-10-13',(select id as client_id from client where name = 'Tesla'));
insert into project (start_date, finish_date, client_id) values ('2024-11-14', '2025-10-14',(select id as client_id from client where name = 'Tesla'));
insert into project (start_date, finish_date, client_id) values ('2024-11-15', '2025-10-15',(select id as client_id from client where name = 'Meta'));
insert into project (start_date, finish_date, client_id) values ('2024-11-16', '2025-10-16',(select id as client_id from client where name = 'Meta'));
insert into project (start_date, finish_date, client_id) values ('2024-11-17', '2025-10-17',(select id as client_id from client where name = 'BMW'));
insert into project (start_date, finish_date, client_id) values ('2024-11-18', '2025-10-18',(select id as client_id from client where name = 'Glovo'));
insert into project (start_date, finish_date, client_id) values ('2024-11-19', '2025-10-19',(select id as client_id from client where name = 'Glovo'));

insert into project_worker (project_id, worker_id) values (1, 1);
insert into project_worker (project_id, worker_id) values (1, 2);
insert into project_worker (project_id, worker_id) values (2, 3);
insert into project_worker (project_id, worker_id) values (2, 4);
insert into project_worker (project_id, worker_id) values (2, 5);
insert into project_worker (project_id, worker_id) values (3, 9);
insert into project_worker (project_id, worker_id) values (3, 8);
insert into project_worker (project_id, worker_id) values (3, 7);
insert into project_worker (project_id, worker_id) values (3, 6);
insert into project_worker (project_id, worker_id) values (4, 4);
insert into project_worker (project_id, worker_id) values (4, 3);
insert into project_worker (project_id, worker_id) values (4, 2);
insert into project_worker (project_id, worker_id) values (4, 1);
insert into project_worker (project_id, worker_id) values (4, 10);
insert into project_worker (project_id, worker_id) values (5, 8);
insert into project_worker (project_id, worker_id) values (6, 9);
insert into project_worker (project_id, worker_id) values (6, 10);
insert into project_worker (project_id, worker_id) values (7, 3);
insert into project_worker (project_id, worker_id) values (7, 4);
insert into project_worker (project_id, worker_id) values (7, 5);
insert into project_worker (project_id, worker_id) values (8, 7);
insert into project_worker (project_id, worker_id) values (9, 9);
insert into project_worker (project_id, worker_id) values (9, 10);
insert into project_worker (project_id, worker_id) values (10, 6);
