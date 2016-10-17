create database QLHDDoan
go
use QLHDDoan
go
create table TaiKhoan(username varchar(100) primary key  not null ,pass varchar(100) not null ,chucvu varchar(100))
insert into TaiKhoan(username ,pass ,chucvu ) values('dv','123456789',N'dv'),('cbdk','123456789','cbdk'),
																							('dbdt','123456789','cbdt'),('admin','123456789','admin')
create table NguoiDung
(			username varchar(100)  primary key  not null , foreign key (username) references TaiKhoan(username) ON DELETE CASCADE , mssv int ,	hoten nvarchar(50) ,	gioitinh nvarchar(3) ,	ngaysinh date ,	cmnd int ,	 email varchar(50),	sdt int,
			diachi nvarchar(255) ,khoa nvarchar(50) ,	lop nvarchar(20) ,	ngayvaodoan date , diemrl int, diemctxh int,urlhinhanh  varchar(100)
)
UPDATE TaiKhoan set pass='123456789',chucvu='admin' where username ='admin'
insert into NguoiDung(username,mssv,	hoten,	gioitinh ,	ngaysinh ,	cmnd ,	 email ,	sdt ,
			diachi  ,khoa,	lop ,	ngayvaodoan, diemrl , diemctxh) values
			('admin',14110065,N'xxxxxxxxx','Nam','1996/11/19',123456789,'@asdasd',0123456789,N'ASDASDasd',N'Cntt',N'lớp','1996/11/19',6,6);
			insert into NguoiDung(username,mssv,	hoten,	gioitinh ,	ngaysinh ,	cmnd ,	 email ,	sdt ,
			diachi  ,khoa,	lop ,	ngayvaodoan, diemrl , diemctxh) values
			('cbdk',14110065,N'xxasdasd','Nam','1996/11/19',123456789,'@asdasd',0123456789,N'ASDASDasd',N'Cntt',N'lớp','1996/11/19',6,6);
			insert into NguoiDung(username,mssv,	hoten,	gioitinh ,	ngaysinh ,	cmnd ,	 email ,	sdt ,
			diachi  ,khoa,	lop ,	ngayvaodoan, diemrl , diemctxh) values
			('dbdt',14110065,N'xxa111111','Nam','1996/11/19',123456789,'@asdasd',0123456789,N'ASDASDasd',N'Cntt',N'lớp','1996/11/19',6,6);
create table HoatDong
(
mahd int primary key not null, tenhd nvarchar(255) not null,donvitochuc nvarchar(100) not null,tgbatdau date,tgketthuc date,diemrl int,
diemctxh int,noidung nvarchar(1500),urlhinhanh varchar(100),tomtat nvarchar(50),TrangChu bit
)
insert into HoatDong( mahd,tenhd ,donvitochuc,tgbatdau ,tgketthuc ,diemrl ,

diemctxh ,noidung,urlhinhanh ,tomtat,TrangChu) values(1,N'Hoạt động 1',N'Đoàn trường','2016-10-10',null,5,3,null,'caroul1.jpg','ABCXYZ',1),
(2,N'Hoạt động 2',N'Đoàn khoa','2016-10-15',null,2,3,null,'caroul2.jpg','ABCXYZ',0),
(3,N'Hoạt động 3',N'Đoàn khoa','2016-10-14',null,4,5,null,'caroul2.jpg','ABCXYZ',2),
(4,N'Hoạt động 4',N'Đoàn trường','2016-10-13',null,6,7,null,'caroul2.jpg','ABCXYZ',0),
(5,N'Hoạt động 5',N'Đoàn  trường','2016-10-11',null,5,6,null,'caroul2.jpg','ABCXYZ',1),
(6,N'Hoạt động 6',N'Đoàn khoa','2016-10-12',null,9,1,null,'caroul2.jpg','ABCXYZ',0)
create table DangKy
( mahd int not null ,id varchar(100) not null,
ngaydangky datetime,
 primary key(mahd,id) ,
foreign key (mahd) references HoatDong(mahd) , 
foreign key (id) references NguoiDung(username),
TinhTrang bit
)
DELETE HoatDong where mahd =2
DELETE DangKy where mahd =2
insert into DangKy(id , mahd   ,TinhTrang) values ( 'dbdt',1,1);
insert into DangKy( id ,mahd   ,TinhTrang) values ( 'dv',1, 1);
insert into DangKy(id  , mahd  ,TinhTrang) values ( 'dv', 2,1);
create table TinNhan
(idnguoigui varchar(100)  not null,idnguoinhan varchar(100) not null,tieude nvarchar(100),noidung nvarchar(1500),tggui datetime,
foreign key (idnguoigui) references NguoiDung(username)  ,
foreign key (idnguoinhan) references NguoiDung(username) ,
primary key(idnguoigui,idnguoinhan),
)
delete TinNhan where idnguoigui = 'dbdk'
insert into TinNhan( idnguoigui,idnguoinhan ,tieude ,noidung)values('dv','dv','asd','asd')
create table ThongBao
(
matb int   IDENTITY( 1, 1 ) not null ,
tentb nvarchar(100),
trichdoan nvarchar(100),
thoigian datetime,
noidung nvarchar(500),
idnguoidang varchar(100) ,
primary key(matb,idnguoidang),
foreign key(idnguoidang) references NguoiDung(username)  ON delete CASCADE 
)
UPDATE ThongBao SET tentb =N'123' , noidung =N'123' , trichdoan =N'123', idnguoidang ='dbdt' where matb =10
insert into ThongBao(tentb,thoigian,noidung,idnguoidang) values(N'aasd','2016-12-10 10:34:12',N'asd','dbdt')
insert into ThongBao(tentb,thoigian)values(N'Thọng báo 1','2016-10-10'),(N'Thọng báo 2','2016-10-11')
insert into ThongBao(tentb,thoigian,idnguoidang)values(N'Thọng báo 1','2016-10-10','dbdt')
create table ThaoLuan
( 
madetai int  primary key  IDENTITY( 1, 1 ) not null,
tendetai nvarchar(100) ,
manguoidang varchar(100),
noidung nvarchar(500),
foreign key(manguoidang) references NguoiDung(username)    ON DELETE CASCADE 
)
create table TraLoi
( 
username varchar(100)  not null,
noidung nvarchar(100) ,
madetai  int not null ,
primary key(username,madetai),
foreign key(madetai) references ThaoLuan(madetai)  ,
foreign key(username) references NguoiDung(username)  ON DELETE CASCADE 
)
insert into ThaoLuan (tendetai,manguoidang,noidung) values(N'asd','dbdt',N'asd')
insert into ThaoLuan (tendetai,manguoidang,noidung) values(N'123','dbdt',N'asd')
insert into Traloi(username,noidung,madetai) values ('admin','asdasd',1)

create table ChiDoan
( 
machidoan int  IDENTITY( 1, 1 ) not null primary key,
tenchidoan	 nvarchar(100) ,
hotencanbodoan	 nvarchar(100) ,
email varchar(100),
sdt varchar(100),
)
insert into ChiDoan(
tenchidoan	  ,
hotencanbodoan	,
email ,
sdt ) values(N'Nguyễn văn A','asd','123','asd')


select distinct  * from DangKy join HoatDong on DangKy.mahd = HoatDong.mahd  where  DangKy.id ='dv' and DangKy.TinhTrang = 1

UPDATE HoatDong SET  diemrl =10 ,tenhd =N'à' , donvitochuc =N'à', noidung =N'ủ', urlhinhanh ='img/caroul1.jpg', tgbatdau ='2010-10-10' where mahd =1.

UPDATE NguoiDung SET mssv ='1411000' , hoten =N'Nguyễn cL' , khoa =N'cndd', lop ='141023' , gioitinh =N'Nam', ngaysinh ='2010-10-10' , email =N'asdas@gmail.com', sdt ='0123456789' , diachi =N'À' where username ='dv'
Select * from ThaoLuan join NguoiDung on ThaoLuan.manguoidang = NguoiDung.username

select * from TraLoi join NguoiDung on TraLoi.username = NguoiDung.username where TraLoi.madetai=1