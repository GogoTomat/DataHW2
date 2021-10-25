create table if not exists artist(
    artist_id serial primary key,
    artist_name text,
    nickname text,
    album_list text
);

create table if not exists album(
    album_id serial primary key,
    artist_id integer references artist(artist_id),
    album_name text,
    year varchar(4),
    track_list text
);

create table if not exists track(
    track_id serial primary key references album(album_id),
    track_name varchar(4),
    time varchar(4)
);