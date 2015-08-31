use master
go
IF EXISTS (SELECT name FROM master.sys.databases WHERE name = 'OnlineShopForDVD')
drop database OnlineShopForDVD
ELSE
create database OnlineShopForDVD

go
use OnlineShopForDVD
go
create table RelaUser
(
	ru_id int primary key,
	name varchar(20) not null
)
insert into RelaUser values
(1,'master'),
(2,'admin'),
(3,'customer')
SELECT TOP(1) PERCENT * FROM  RelaUser ORDER  by ru_id DESC
select * from RelaUser

create table [Login]
(
	number int identity(1,1) not null,
	[user] varchar(20) primary key,
	[password] varchar(20) not null,
	[status] bit,
	ru_id int,
	active bit,
	constraint fk_LoginRelaUser foreign key(ru_id) references RelaUser(ru_id)
)
insert into [Login] values
('master','master',0,1,1),
('admin','admin',0,2,1),
('hainam','123456',0,3,1),
('trungkien','123456',0,3,1),
('vanhiep','123456',0,3,1)
select * from [Login]

create table UserDetail
(
	ud_id int identity (1,1) primary key,
	name nvarchar(50) not null,
	[address] nvarchar(150) not null,
	bod varchar(50),
	phone varchar(50) not null,
	email varchar(50) not null,
	identity_card int,
	[user] varchar(20),
	constraint fk_UserDetailLogin foreign key([user]) references [login]([user])
)

insert into UserDetail values
(N'Hải nam',N'Hà nội','25/09/1992','+84963190925','vn.apnic@gmail.com',050882274,'master'),
(N'Admin',N'Sơn La','11/09/1991','+8499999999','namb_a055320@fpt.aptech.ac.vn',92934294,'admin'),
(N'Nam',N'Thái bình','25/09/1992','+841667904230','nambh1421@gmail.com',096443334,'hainam'),
(N'Trung kiên',N'Hà nội','11/08/1992','+845555555','Kien@gmail.com',0953333232,'trungkien'),
(N'Văn hiệp',N'Hà nội','22/11/1992','+8423232323','hiep@gmail.com',452421243,'vanhiep')
select * from UserDetail

create table restartPass
(
	rp_id int identity (1,1) primary key,
	[user] varchar(20) not null,
	email varchar(50) not null,
	constraint fk_restartPassLogin foreign key([user]) references [login]([user])
)

create table MonneyOfUser
(
	mou_id int identity (1,1) primary key,
	monney float DEFAULT 0 not null,
	ud_id int,
	constraint fk_MonneyOfUserUserDetail foreign key(ud_id) references UserDetail(ud_id)
)
create table Categories
(
	c_id int identity (1,1) primary key,
	name nvarchar(200) not null,
	active bit
)
create table Products
(
	p_id int identity (1,1) primary key,
	name nvarchar(250) not null,
	monney float default 0 not null, 
	[description] nvarchar(250) not null,
	url varchar(150),
	img varchar(150),
	c_id int,
	[rank] int default 0,
	active bit,
	constraint fk_CategoriesProducts foreign key(c_id) references Categories(c_id)
)
create table ProductManager
(
	pm_id int identity (1,1) primary key,
	p_id int,
	[count] int default 0,
	hot bit default 0,
	sale float,
	constraint fk_ProductManager foreign key(p_id) references Products(p_id)
)
create table PaymentType
(
	pt_id int identity (1,1) primary key,
	[type] nvarchar(50)
)

create table Quantity
(
	q_id int identity (1,1) primary key,
	number int default 1,
	price float,
	p_id int,
	constraint fk_Quantity foreign key(p_id) references Products(p_id)
)

create table HistoryOder
(
	ho_id int identity (1,1) primary key,
	dateoder varchar(50) not null,
	[user] varchar(20) not null,
	q_id int,
	pt_id int,
	amount int,
	monney float,
	ship float,
	active bit,
	constraint fk_HistoryOderLogin foreign key([user]) references [Login]([user]),
	constraint fk_HistoryOderQuantity foreign key(q_id) references Quantity(q_id),
	constraint fk_HistoryOderPaymentType foreign key(pt_id) references PaymentType(pt_id)
)

create table HistoryManager
(
	hm_id int identity (1,1) primary key,
	dateoder varchar(50) not null,
	[user] varchar(20) not null,
	p_id int not null,
	desription varchar(20),
	constraint fk_HistoryManagerLogin foreign key([user]) references [Login]([user]),
	constraint fk_HistoryManagerProduct foreign key(p_id) references Products(p_id)
)

Create table HistoryMonneyOfCustomer
(
	hmoc_id int identity(1,1) primary key,
	UserCustomer varchar(20) not null,
	UserAdmin varchar(20) not null,
	constraint fk_HistoryMonneyOfCustomerLoginCustomer foreign key(UserCustomer) references [Login]([user]),
	constraint fk_HistoryMonneyOfCustomerLoginAdmin foreign key(UserAdmin) references [Login]([user]),
)

create table FeedBack
(
	fb_id int identity (1,1) primary key,
	[user] varchar(20) not null,
	datefb varchar(50) not null,
	Content nvarchar(250) not null,
	constraint fk_FeedBackLogin foreign key([user]) references [Login]([user]),
)