
create database QLThuVien
go
use QLThuVien
go


create table DOCGIA
(
	MaDocGia nvarchar(10),
	TenDangNhap nvarchar(30),
	HoTen nvarchar(30),
	GioiTinhnvarchar(5),
	NamSinh datetime,
	DiaChi nvarchar(100),
	PRIMARY KEY (MaDocGia),
)

create table SACH
(
	MaSach nvarchar(10),
	TenSach nvarchar(50),
	TacGia nvarchar(30),
	TheLoai nvarchar(30),
	NhaXuatBan nvarchar(50),
	GiaSach int,
	SoLuong int,
	TinhTrang nvarchar(10),
	PRIMARY KEY (MaSach),
)

create table PHIEUMUON
(
	MaPhieu nvarchar(10),
	MaDocGia nvarchar(10),
	MaSach nvarchar(10),
	NgayMuon datetime,
	NgayPhaiTra datetime,
	PRIMARY KEY (MaPhieu),
)

create table PHIEUTRA
(
	MaPhieu nvarchar(10),
	MaDocGia nvarchar(10),
	MaSach nvarchar(10),
	NgayTra datetime,
	PRIMARY KEY (MaPhieu),
)

create table ACCOUNT
(
	MaDocGia nchar(10) PRIMARY KEY,
	TenDangNhap nchar(30),
	MatKhau nchar(30),
	Quyen int,
)


alter table PHIEUMUON add
	constraint FK_PHIEUMUON_DOCGIA foreign key (MaDocGia) references DOCGIA (MaDocGia),
	constraint FK_PHIEUMUON_SACH foreign key (MaSach) references SACH (MaSach)

alter table PHIEUTRA add
	constraint FK_PHIEUTRA_DOCGIA foreign key (MaDocGia) references DOCGIA (MaDocGia),
	constraint FK_PHIEUTRA_SACH foreign key (MaSach) references SACH (MaSach)

ALTER TABLE dbo.DOCGIA ADD
	CONSTRAINT FK_DOCGIA_ACCOUNT FOREIGN KEY (MaDocGia) REFERENCES dbo.ACCOUNT(MaDocGia)



insert into ACCOUNT values ('1','Hoang Huy', '123456', 1)
insert into ACCOUNT values ('2','Hoang Huy 1', '123456', 1)
insert into ACCOUNT values ('3','Hoang Huy 2', '123456', 1)
insert into ACCOUNT values ('4','Hoang Huy 3', '123456', 1)
insert into ACCOUNT values ('5','Hoang Huy 4', '123456', 1)
insert into ACCOUNT values ('999','admin', 'admin', 0)

insert into DOCGIA values ('1','hoanghuy',N'Hoàng Huy','Nam',1999,N'510 Lý Thái Tổ')
insert into DOCGIA values ('2','hoanghuy1',N'Hoàng Huy1','Nam',199,N'20 Lý Thái Tổ')
insert into DOCGIA values ('3','hoanghuy2',N'Hoàng Huy2','Nam',1999,N'20 Lý Thái Tổ')
insert into DOCGIA values ('4','hoanghuy3',N'Hoàng Huy3',N'Nữ',1999,N'201 Lý Thái Tổ')
insert into DOCGIA values ('5','hoanghuy4',N'Hoàng Huy4',N'Nữ',1999,N'120 Lý Thái Tổ')


insert into SACH values ('1', N'Lập trình hướng đối tượng', N'Không biết', N'Lập trình', 'HCMUS', 1500, 3, N'Còn')
insert into SACH values ('2', N'Nhập môn lập trình', N'Không biết', N'Lập trình', 'HCMUS', 1500, 10, N'Còn')
insert into SACH values ('3', N'Kỹ Thuật Lập Trình', N'Không biết', N'Lập trình', 'HCMUS', 3000, 5, N'Còn')
insert into SACH values ('4', N'Thiết Kế Phần Mềm', N'Không biết', N'Lập trình', 'HCMUS', 4000, 0, N'Hết')

insert into PHIEUMUON values ('1','1','1','1/1/2021', '1/2/2021')
insert into PHIEUMUON values ('2','2','1','1/2/2021', '1/3/2021')
insert into PHIEUMUON values ('3','2','2','1/3/2021', '1/4/2021')


insert into PHIEUTRA values ('1','1','2','1/1/2021')
insert into PHIEUTRA values ('2','2','1','1/2/2021')
insert into PHIEUTRA values ('3','2','2','1/3/2021')




