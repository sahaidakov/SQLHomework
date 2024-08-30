create type level_type as enum ('Trainee', 'Junior', 'Middle', 'Senior');
create table worker (
  id serial primary key,
  name varchar(1000) not null,
  birthday date not null,
  level level_type not null,
  salary int not null
)

create table client (
  id serial primary key,
  name varchar(1000) not null
)

create table project (
  id serial primary key,
  client_id int not null,
  start_date date not null,
  finish_date date not null
)

create table project_worker (
  project_id  int,
  worker_id int,
  primary key (project_id, worker_id)
)