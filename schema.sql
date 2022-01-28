create table musicAlbum (
	id int primary key generated always as identity,
	on_spotify boolean,
	publish_date date,
	archive boolean
);

create table genre (
	id int primary key generated always as identity,
	name text,
    items text null
);
