-- Latihan

-- Membuat tabel 1
create table
batch_kmb.vendi_video_highlight (
	channel varchar,
	club_id int,
	duration int,
	publish_at varchar
)

insert into batch_kmb.vendi_video_highlight values
	('Liverpool', 1, 440, '2021/09/01' ),
	('Chelsea', 2, 393, '2021/08/31' ),
	('Man United', 3, 653, '2021/08/17' ),
	('Man City', 6, 234, '2021/08/21' ),
	('Arsenal', 26, 262, '2021/08/09' )
	
select *
from batch_kmb.vendi_video_highlight vvh ;


-- Membuat tabel 2
create table
batch_kmb.vendi_club_highlight (
	club_id int,
	viewers float,
	likes float
)

insert into batch_kmb.vendi_club_highlight values
	( 1, 4000000, 27000 ),
	( 2, 2000000, 10000 ),
	( 3, 3000000, 26000 ),
	( 25, 1700000, 6000 ),
	( 18, 1000000, 5000 )
	
select *
from batch_kmb.vendi_club_highlight vch  ;


-- Mengubah tanggal dari char ke date time

select 
	to_date(publish_at , 'YYYY/MM/DD') as publish_date,
	club_id
from 
	batch_kmb.vendi_video_highlight vvh 
where 
	date_trunc('month', publish_date)='2021/08/01';


-- Mengambil data tahun saja
select 
	to_date(publish_at, 'YYYY/MM/DD') as publish_date
from batch_kmb.vendi_video_highlight vvh ;

select
	date_part('year', publish_date(publish_at, 'YYYY/MM/DD')) as publish_at_year
from batch_kmb.vendi_video_highlight vvh
;


-- Melakukan Left Join
select
	to_date(publish_at, 'YYYY/MM/DD') as publish_date,
	channel,
	duration,
	viewers,
	likes
from batch_kmb.vendi_video_highlight vvh 
	left join batch_kmb.vendi_club_highlight vch 
on vvh."club_id" = vch."club_id";

-- Melakukan right Join
select
	to_date(publish_at, 'YYYY/MM/DD') as publish_date,
	channel,
	duration,
	viewers,
	likes
from batch_kmb.vendi_video_highlight vvh 
	right join batch_kmb.vendi_club_highlight vch
on vvh."club_id" = vch."club_id";


-- Melakukan Inner Join
select
	to_date(publish_at, 'YYYY/MM/DD') as publish_date,
	channel,
	duration,
	viewers,
	likes
from batch_kmb.vendi_video_highlight vvh 
	inner join batch_kmb.vendi_club_highlight vch 
on vvh."club_id" = vch."club_id";


-- Melakukan Full Outer Join
select
	to_date(publish_at, 'YYYY/MM/DD') as publish_date,
	channel,
	duration,
	viewers,
	likes
from batch_kmb.vendi_video_highlight vvh 
	full outer join batch_kmb.vendi_club_highlight vch 
on vvh."club_id" = vch."club_id";


select *
from batch_kmb.vendi_video_highlight vvh 

select *
from batch_kmb.vendi_club_highlight vch 

