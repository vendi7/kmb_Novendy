-- Membuat Tabel
create table batch_kmb.vendi_latihan_database (
	id int
	, nama_pembeli varchar
	, tanggal_lahir date
	, alamat varchar
)

-- Memasukkan data ke tabel
insert into batch_kmb.vendi_latihan_database values
(1, 'Vendi', '2000-11-07', 'Bandung' ),
(2, 'Salah', '1980-12-01', 'Bali' ),
(3, 'Abdul',  '1990-10-01', 'Jakarta'),
(4, 'Reza',  '1980-09-10', 'Semarang' ),
(5, 'Ahmad', '1990--08-11', 'Surabaya' )

-- Menambah 2 kolom baru
alter table batch_kmb.vendi_latihan_database
add jenis_pembelian varchar,
add harga float

-- Mengupdate/Menambahkan data pada tabel baru

update batch_kmb.vendi_latihan_database
set
jenis_pembelian = 'baju koko lengan pendek',
harga = 40000
where nama_pembeli = 'Vendi' ;

update batch_kmb.vendi_latihan_database
set
jenis_pembelian = 'baju koko lengan panjang',
harga = 30000
where nama_pembeli = 'Salah' ;

update batch_kmb.vendi_latihan_database
set
jenis_pembelian = 'baju koko pakistan',
harga = 100000
where nama_pembeli = 'Abdul' ;

update batch_kmb.vendi_latihan_database
set
jenis_pembelian = 'baju koko anak',
harga = 35000
where nama_pembeli = 'Reza' ;

update batch_kmb.vendi_latihan_database
set
jenis_pembelian = 'baju koko modern',
harga = 120000
where nama_pembeli = 'Ahmad' ;

-- Menampilkan Tabel
select 
	* 
from batch_kmb.vendi_latihan_database
