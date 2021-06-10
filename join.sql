select * from invoice
join invoice_line on invoice_line.invoice_id = invoice.invoice_id
where invoice_line.unit_price > 0.99;

select invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
from invoice
join customer on invoice.customer_id = customer.customer_id;

select customer.first_name "customer fname" , customer.last_name "customer Lname", employee.first_name "rep Fname", employee.last_name"rep Lname"
from customer
join employee on customer.support_rep_id = employee.employee_id;

select artist.name,	album.title
from artist
join album on artist.artist_id = album.album_id;

select playlist_track.track_id
from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
where playlist.name = 'Music';

select track.name
from track
join playlist_track on playlist_track.track_id = track.track_id
where playlist_track.playlist_id = 5;

select track.name, playlist.name
from track
join playlist_track on playlist_track.track_id = track.track_id 
join playlist on playlist.playlist_id = playlist_track.playlist_id;

select track.name "track name", album.title "album", genre.name "genre"
from track
join album on album.album_id = track.album_id
join genre on genre.genre_id = track.genre_id
where genre.name = 'Alternative & Punk';