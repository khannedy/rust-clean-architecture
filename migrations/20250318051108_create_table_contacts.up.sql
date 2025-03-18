-- Add up migration script here
create table contacts
(
    id         varchar(100) not null,
    first_name varchar(100) not null,
    last_name  varchar(100) not null,
    email      varchar(100) not null,
    phone      varchar(100) not null,
    user_id    varchar(100) not null,
    create_at  bigint       not null,
    update_at  bigint       not null,
    primary key (id),
    constraint fk_contacts_user_id foreign key (user_id) references users (id)
);