create database restaurantly01;
GO
use restaurantly01;
GO

CREATE TABLE Accounts(
	username varchar(50) NOT NULL primary key,
	password varchar(50) NULL,
	fullname nvarchar(100) NULL,
	email varchar(100) NULL,
	photo varchar(50) NULL,
	activated bit NULL
)
GO
INSERT INTO Accounts(username, password, fullname, email, photo, activated)
VALUES (N'minhthanh', N'111', N'Văn Minh Thành', N'thanhvm111@fpt.edu.vn', N'thanh.jpg', 1),
		(N'vantoan', N'222', N'Trần Văn Toàn', N'toantv222@fpt.edu.vn', N'toan.jpg', 1) ,
		(N'minhthu', N'333', N'Nguyễn Ngọc Minh Thư', N'thunnm333@fpt.edu.vn', N'thu.jpg', 1),
		(N'thuha', N'444', N'Đỗ Thị Thu Hà', N'hadtt444@fpt.edu.vn', N'ha.jpg', 1),
		(N'hoangtam', N'555', N'Diệp Hoàng Tâm', N'tamdh555@fpt.edu.vn', N'tam.jpg', 1)
GO
----------------------------------------------------------------------------
CREATE TABLE  Brands(
	id varchar(10) NOT NULL primary key,
	name nvarchar(50) NULL,
	image varchar(50) NULL
)
GO

INSERT INTO Brands (id, name, image)
VALUES (N'MB', N'Miền Bắc', N'mb.jpg'),
		 (N'MT', N'Miền Trung', N'mt.jpg'),
		 (N'MN', N'Miền Nam', N'mn.jpg')
Go
------------------------------------------------------------------------------------------
CREATE TABLE Categories(
	id char(4) NOT NULL primary key,
	name nvarchar(50) NULL
)
GO
INSERT INTO Categories (id, name) 
VALUES (N'DM01', N'MÓN CHÍNH'),
		 (N'DM02',N'MÓN TRÁNG MIỆNG'),
		 (N'DM03',N'MÓN KHAI VỊ'),
		 (N'DM04',N'COMBO'),
		 (N'DM05',N'THỨC UỐNG')	 
GO
---------------------------------------
CREATE TABLE Roles(
	role varchar(10) NOT NULL primary key,
	description varchar(20) NULL
)
GO
INSERT INTO Roles (role, description) 
VALUES (N'director', N'director'),
 (N'staff', N'staff'),
 (N'user', N'user')
GO
----------------------------------------------------------------------
CREATE TABLE Products(
	id int IDENTITY(0,1) NOT NULL primary key,
	name nvarchar(100) NULL,
	price float NULL,
	createDate date NULL,
	available bit NULL,
	brandId varchar(10) NULL FOREIGN KEY (brandId) REFERENCES Brands(id),
	images varchar(100) NULL
)
GO

SET IDENTITY_INSERT [dbo].[Products] ON 
INSERT INTO Products (id, name, price, createDate, available, brandId, images) 
 VALUES(1,N'Bún bò Huế',65000, CAST(N'2023-04-15' AS Date), 1, N'MB', N'["bunbo.png","bunbo.png"]'),
 (2,N'Bún riêu',45000, CAST(N'2023-04-15' AS Date), 1, N'MB', N'["bunrieu.png","bunrieu.png"]'),
 (3,N'Cơm gà Hội An',55000, CAST(N'2023-03-20' AS Date), 1, N'MB', N'["comgahoian.png","comgahoian.png"]'),
 (4,N'Cơm Hến Huế',55000, CAST(N'2023-03-20' AS Date), 1, N'MB', N'["comhenhue.png","comhenhue.png"]'),
 (5,N'Cơm Tấm',55000, CAST(N'2023-03-20' AS Date), 1, N'MN', N'["comtamsaigon.png","comtamsaigon.png"]'),
 (6,N'Hủ tiếu Nam Vang',45000,CAST(N'2023-03-22' AS Date), 1, N'MN', N'["hutieunamvang.png","hutieunamvang.png"]'),
 (7,N'Lẩu gà lá é',179000, CAST(N'2023-04-10' AS Date), 1, N'MN', N'["laugalae.png","laugalae.png"]'),
 (8,N'Lẩu mắm',189000, CAST(N'2023-04-15' AS Date), 1, N'MT',N'["laumam.png","laumam.png"]'),
 (9,N'Miến gà',55000,CAST(N'2023-04-15' AS Date), 1, N'MN',N'["mienga.png","mienga.png"]'),
 (10,N'Phở bò',65000,CAST(N'2023-04-12' AS Date), 1, N'MT',N'["phobo.png","phobo.png"]'),
 (11,N'Phở gà',65000,CAST(N'2023-04-12' AS Date), 1, N'MT',N'["phoga.png","phoga.png"]'),
 (12,N'Lẩu cá đuối',179000, CAST(N'2023-04-13' AS Date), 1, N'MN', N'["laucaduoi.png","laucaduoi.png"]'),
 (13,N'Mì Quảng',65000,CAST(N'2023-04-13' AS Date), 1, N'MB', N'["miquang.png","miquang.png"]'),

 (14,N'Chè bà ba',27000, CAST(N'2023-04-15' AS Date), 1, N'MB', N'["chebaba.png","chebaba.png"]'),
 (15,N'Chè đậu trắng',27000,CAST(N'2023-03-20' AS Date), 1, N'MT', N'["chedautrang.png","chedautrang.png"]'),
 (16,N'Chè đậu ván',27000,CAST(N'2023-03-20' AS Date), 1, N'MN', N'["chedauvan.png","chedauvan.png"]'),
 (17,N'Chè hạt sen',27000, CAST(N'2023-03-20' AS Date), 1, N'MB', N'["chehatsen.png","chehatsen.png"]'),
 (18,N'Chè trôi nước',27000,CAST(N'2023-03-22' AS Date), 1, N'MT', N'["chetroinuoc.png","chetroinuoc.png"]'),
 (19,N'Bánh bò',20000,CAST(N'2023-04-10' AS Date), 1, N'MN',N'["banhbo.png"banhbo.png"]'),
 (20,N'Bánh chuối hấp',25000, CAST(N'2023-04-15' AS Date), 1, N'MB',N'["banhchuoihap.png","banhchuoihap.png"]'),
 (21,N'Bánh lọt',25000, CAST(N'2023-04-15' AS Date), 1, N'MT',N'["banhlot.png","banhlot.png"]'),

 (22,N'Gỏi bò bóp thấu',159000,CAST(N'2023-04-15' AS Date), 1, N'MN',N'["goibo.png","goibo.png"]'),
 (23,N'Gỏi cuốn tôm thịt',50000,CAST(N'2023-04-15' AS Date), 1, N'MB', N'["goicuontomthit.png","goicuontomthit.png"]'),
 (24,N'Nem chua',45000,CAST(N'2023-03-20' AS Date), 1, N'MT', N'["nemchua.png","nemchua.png"]'),
 (25,N'Gỏi xoài khô cá lóc chua cay',129000,CAST(N'2023-03-20' AS Date), 1, N'MN', N'["goixoaikhocaloc.png","goixoaikhocaloc.png"]'),
 (26,N'Canh chua cá hú',59000, CAST(N'2023-03-20' AS Date), 1, N'MB', N'["canhchuacahu.png","canhchuacahu.png"]'),
 (27,N'Canh chua bắp chuối',50000,CAST(N'2023-03-22' AS Date), 1, N'MT', N'["canhchuabapchuoi.png","canhchuabapchuoi.png"]'),
 (28,N'Canh khổ qua nhồi thịt',45000,CAST(N'2023-04-10' AS Date), 1, N'MN', N'["canhkhoqua.png","canhkhoqua.png"]'),
 (29,N'Canh trứng cà chua',43000, CAST(N'2023-04-15' AS Date), 1, N'MB',N'["canhtrungcachua.png","canhtrungcachua.png"]'),
 (30,N'Canh gà lá giang',45000,CAST(N'2023-04-15' AS Date), 1, N'MN',N'["canhgalagiang.png","canhgalagiang.png"]'),
 (31,N'Canh bầu nấu hến',40000,CAST(N'2023-04-15' AS Date), 1, N'MB', N'["canhbaunauhen.png","canhbaunauhen.png"]'),
 (32,N'Canh bí đao',40000,CAST(N'2023-03-20' AS Date), 1, N'MT', N'["canhbidao.png","canhbidao.png"]'),
 (33,N'Canh cua rau đay',40000,CAST(N'2023-03-20' AS Date), 1, N'MN', N'["canhcuarauday.png","canhcuarauday.png"]'),
 (34,N'Canh súp lơ thịt viên',40000,CAST(N'2023-03-20' AS Date), 1, N'MB', N'["canhsuplothitvien.png","canhsuplothitvien.png"]'),

 (35,N'Thịt heo hầm cà rốt',69000,CAST(N'2023-04-15' AS Date), 1, N'MN',N'["thitheohamcarot.png","thitheohamcarot.png"]'),
 (36,N'Thịt heo kho củ cải trắng',69000,CAST(N'2023-04-15' AS Date), 1, N'MB', N'["thitheokhocucaitrang.png","thitheokhocucaitrang.png"]'),
 (37,N'Thịt kho tàu',69000,CAST(N'2023-03-20' AS Date), 1, N'MT', N'["thitkhotau.png","thitkhotau.png"]'),
 (38,N'Sườn xào chua ngọt',69000,CAST(N'2023-03-20' AS Date), 1, N'MN', N'["suonxaochuangot.png","suonxaochuangot.png"]'),
 (39,N'Cá kho tộ',69000,CAST(N'2023-03-20' AS Date), 1, N'MB', N'["cakhoto.png","cakhoto.png"]'),
 (40,N'Cá ngừ kho thơm',69000,CAST(N'2023-03-22' AS Date), 1, N'MT', N'["cangukhothom.png","cangukhothom.png"]'),
 (41,N'Gà kho xả ớt',69000,CAST(N'2023-04-10' AS Date), 1, N'MN', N'["gakhoxaot.png","gakhoxaot.png"]'),
 (42,N'Tàu hủ kho tương hột',69000, CAST(N'2023-04-15' AS Date), 1, N'MB',N'["tauhukhotuonghot.png","tauhukhotuonghot.png"]'),

 (43,N'Combo 1 cơm quê Việt Nam',699000,CAST(N'2023-04-15' AS Date), 1, N'MN',N'["combo1.png","combo1.png"]'),
 (44,N'Combo2 cơm quê Việt Nam',599000,CAST(N'2023-04-15' AS Date), 1, N'MB', N'["combo2.png","combo2.png"]'),
 (45,N'Combo3 cơm quê Việt Nam',799000,CAST(N'2023-03-20' AS Date), 1, N'MT', N'["combo3.png","combo3.png"]'),
 (46,N'Combo4 cơm quê Việt Nam',499000,CAST(N'2023-03-20' AS Date), 1, N'MN', N'["combo4.png","combo4.png"]'),

 (47, N'TRÀ LÀI NHÃN',32000,CAST(N'2023-04-15' AS Date), 1, N'MN',N'["N1.png","N1.png"]'),
 (48, N'YAKULT THANH LONG',35000,CAST(N'2023-04-15' AS Date), 1, N'MB', N'["N2.png","N2.png"]'),
 (49, N'NƯỚC ÉP CAM THƠM',32000,CAST(N'2023-03-20' AS Date), 1, N'MT', N'["N3.png","N3.png"]'),
 (50, N'TRÀ Ô LONG BƯỞI HỒNG',32000,CAST(N'2023-03-20' AS Date), 1, N'MN', N'["N4.png","N4.png"]'),
 (51, N'TRÀ ĐÀO CAM SẢ',32000,CAST(N'2023-03-20' AS Date), 1, N'MB', N'["N5.png","N5.png"]'),
 (52, N'TRÀ VẢI HOA HỒNG',35000,CAST(N'2023-03-22' AS Date), 1, N'MT', N'["N6.png","N6.png"]'),
 (53, N'CÀ PHÊ SỮA ĐÁ',35000,CAST(N'2023-04-10' AS Date), 1, N'MN', N'["N7.png","N7.png"]'),
 (54, N'CÀ PHÊ ĐEN ĐÁ',35000,CAST(N'2023-04-15' AS Date), 1, N'MB',N'["N8.png","N8.png"]'),
 (55, N'BẠC XĨU TASTY',32000,CAST(N'2023-03-20' AS Date), 1, N'MT', N'["N9.png","N9.png"]'),
 (56, N'DETOX SƠ RI THANH LONG',32000,CAST(N'2023-03-20' AS Date), 1, N'MN', N'["N10.png","N10.png"]'),
 (57, N'TRÀ HIBISCUS THANH YÊN',32000,CAST(N'2023-03-20' AS Date), 1, N'MB', N'["N11.png","N11.png"]'),
 (58, N'TRÀ SỮA LÀI HOA ĐẬU BIẾC ',35000,CAST(N'2023-03-22' AS Date), 1, N'MT', N'["N12.png","N12.png"]')

Go
-------------------------------------------------------------------------
CREATE TABLE Orders(
	id int IDENTITY(0,1) NOT NULL primary key,
	username varchar(50) NULL FOREIGN KEY (username) REFERENCES Accounts(username),
	createDate date NULL,
	address nvarchar(100) NULL
)
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT Orders ON 
INSERT INTO Orders (id, username, createDate, address) 
VALUES (5, N'vantoan', CAST(N'2023-04-08' AS Date), N'Quận Tân Bình'),
		(6, N'hoangtam', CAST(N'2023-05-09' AS Date), N'Quận Gò Vấp')
---------------------------------------------------------------------------
CREATE TABLE OrderDetails(
	id int IDENTITY(0,1) NOT NULL primary key,
	orderId int NULL FOREIGN KEY (orderId) REFERENCES Orders(id),
	productId int NULL FOREIGN KEY (productId) REFERENCES Products(id),
	price float NULL,
	quantity int NULL 
)
GO

SET IDENTITY_INSERT Orders OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
INSERT INTO OrderDetails (id, orderId, productId, price, quantity) 
VALUES (0, 5, 2, 190000, 1),
		(1, 6, 1, 350000, 1)
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
-------------------------------------------------------------------------

CREATE TABLE ProductCategory(
	id int IDENTITY(0,1) NOT NULL primary key,
	productId int NULL FOREIGN KEY (productId) REFERENCES Products(id),
	categoryId char(4) NULL FOREIGN KEY (categoryId) REFERENCES Categories(id),
)
GO
select *from ProductCategory
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 
 INSERT INTO ProductCategory (id, productId, categoryId)
 VALUES(1, 1, N'DM01'),
		 (2, 2, N'DM01'),
		 (3, 3, N'DM01'),
		 (4, 4, N'DM01'),
		 (5, 5, N'DM01'),
		 (6, 6, N'DM01'),
		 (7, 7, N'DM01'),
		 (8, 8, N'DM01'),
		 (9, 9, N'DM01'),
		 (10,10, N'DM01'),
		 (11,11, N'DM01'),
		 (12,12, N'DM01'),
		 (13,13, N'DM01'),

		 (14,14, N'DM02'),
		 (15,15, N'DM02'),
		 (16,16, N'DM02'),
		 (17,17, N'DM02'),
		 (18,18, N'DM02'),
		 (19,19, N'DM02'),
		 (20,20, N'DM02'),
		 (21,21, N'DM02'),

		 (22,22, N'DM03'),
		 (23,23, N'DM03'),
		 (24,24, N'DM03'),
		 (25,25, N'DM03'),
		 (26,26, N'DM03'),
		 (27,27, N'DM03'),
		 (28,28, N'DM03'),
		 (29,29, N'DM03'),
		 (30,30, N'DM03'),
		 (31,31, N'DM03'),
		 (32,32, N'DM03'),
		 (33,33, N'DM03'),
		 (34,34, N'DM03'),

		 (35,35, N'DM01'),
		 (36,36, N'DM01'),
		 (37,37, N'DM01'),
		 (38,38, N'DM01'),
		 (39,39, N'DM01'),
		 (40,40, N'DM01'),
		 (41,41, N'DM01'),
		 (42,42, N'DM01'),

		 (43,43, N'DM04'),
		 (44,44, N'DM04'),
		 (45,45, N'DM04'),
		 (46,46, N'DM04'),

		 (47,47, N'DM05'),
		 (48,48, N'DM05'),
		 (49,49, N'DM05'),
		 (50,50, N'DM05'),
		 (51,51, N'DM05'),
		 (52,52, N'DM05'),
		 (53,53, N'DM05'),
		 (54,54, N'DM05'),
		 (55,55, N'DM05'),
		 (56,56, N'DM05'),
		 (57,57, N'DM05'),
		 (58,58, N'DM05')
		
		 
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
--------------------------------------------------------------------------------
CREATE TABLE RoleDetails(
	id int IDENTITY(0,1) NOT NULL primary key,
	accountId varchar(50) NULL FOREIGN KEY (accountId) REFERENCES Accounts(username),
	roleId varchar(10) NULL FOREIGN KEY (roleId) REFERENCES Roles(role),
)
GO

SET IDENTITY_INSERT RoleDetails ON 
INSERT RoleDetails (id, accountId, roleId) VALUES (0, N'minhthanh', N'director')
INSERT RoleDetails (id, accountId, roleId) VALUES (4, N'minhthu', N'staff')
INSERT RoleDetails (id, accountId, roleId) VALUES (6, N'thuha', N'user')
INSERT RoleDetails (id, accountId, roleId) VALUES (7, N'hoangtam', N'user')
INSERT RoleDetails (id, accountId, roleId) VALUES (2, N'vantoan', N'user')
GO
SET IDENTITY_INSERT [dbo].[RoleDetails] OFF
go
CREATE PROC sp_ReportCost (@month INT)
AS BEGIN
SELECT 
			convert(varchar(10), o.createDate, 103) AS NgayBan,		
			COUNT(DISTINCT o.id) AS TongHoaDon,
			SUM(od.quantity * od.price) AS DoanhThu
FROM Orders o, OrderDetails od  WHERE o.id = od.orderId AND MONTH(o.createDate) = @month
GROUP BY createDate
END
GO
