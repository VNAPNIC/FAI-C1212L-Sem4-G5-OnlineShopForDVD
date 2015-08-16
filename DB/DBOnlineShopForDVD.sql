use master
go

IF EXISTS (SELECT name FROM master.sys.databases WHERE name = N'OnlineShopForDVD')
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
create table [Login]
(
	[user] varchar(20) primary key,
	[password] varchar(20) not null,
	[status] bit,
	ru_id int,
	active bit,
	constraint fk_LoginRelaUser foreign key(ru_id) references RelaUser(ru_id)
)
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
	active bit,
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
	c_id int,
	[rank] int default 0,
	active bit,
	constraint fk_CategoriesProducts foreign key(c_id) references Categories(c_id)
)
create table PaymentType
(
	pt_id int identity (1,1) primary key,
	[type] nvarchar(50)
)

create table HistoryOder
(
	ho_id int identity (1,1) primary key,
	dateoder varchar(50) not null,
	[user] varchar(20) not null,
	p_id int,
	pt_id int,
	amount int,
	monney float,
	ship float,
	active bit,
	constraint fk_HistoryOderLogin foreign key([user]) references [Login]([user]),
	constraint fk_HistoryOderProducts foreign key(p_id) references Products(p_id),
	constraint fk_HistoryOderPaymentType foreign key(pt_id) references PaymentType(pt_id)
)

create table FeedBack
(
	fb_id int identity (1,1) primary key,
	[user] varchar(20) not null,
	datefb varchar(50) not null,
	Content nvarchar(250) not null,
	constraint fk_FeedBackLogin foreign key([user]) references [Login]([user]),
)