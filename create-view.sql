create view Rock as
select * from track 
where genre_id in (
	select genre_id from genre where name = 'Rock'
);

select * from Rock