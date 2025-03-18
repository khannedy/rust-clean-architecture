-- Add up migration script here
create table users
(
    id         varchar(100) not null,
    name       varchar(100) not null,
    password   varchar(100) not null,
    token      varchar(100) not null,
    created_at bigint       not null,
    updated_at bigint       not null,
    primary key (id)
);