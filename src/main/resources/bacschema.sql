create table if not exists photoz (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    file_name varchar(255),
    content_type varchar(255),
    data binary large object
);

create table if not exists phototagz (
    id int primary key,
    photo_id int,
    name varchar(255),
    value varchar(255),
    foreign key (photo_id) references photoz(id)
);