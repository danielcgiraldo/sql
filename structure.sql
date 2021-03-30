drop table if exists countries;
create table countries (
    code int(3) not null unsigned comment 'abreviatura del pais',
    name varchar(800 not null comment 'nombre del pais'),
    primary key(code)
);

drop table if exists states;
create table states (
    code tinyint(2) unsigned not null comment 'codigo del departamento',
    name varchar(70) not null comment 'nombre del departamento',
    primary key(code)
);

drop table if exists cities;
create table cities (
    code int(5) unsigned not null comment 'codigo del departamento',
    name varchar(70) not null comment 'nombre del departamento',
    state tinyint(2) unsigned not null comment 'codigo del estado',
    primary key(code),
    index c_state(state)
);

alter table cities
add foreign key(state) references states(code) on update cascade on delete cascade;

