use pt;

create table Bookstore
(
	ID varchar(11) not null primary key,
    name varchar(255),
	address varchar(255)
)ENGINE = InnoDB;

create table Customer
(
	ID varchar(11) not null primary key,
    name varchar(255),
	phoneNumber varchar(255),
    address varchar(255),
    age int(10)
)ENGINE = InnoDB;

create table Staff
(
	ID varchar(11) not null primary key,
    usename varchar(255),
	password varchar(255),
    position varchar(255),
    salary float(10),
    BookStoreID varchar(11) not null,
    foreign key (BookStoreID) references Bookstore(ID)
)ENGINE = InnoDB;

create table Supplier
(
	ID varchar(11) not null primary key,
    name varchar(255),
	phoneNumber varchar(255)
)ENGINE = InnoDB;

create table ExportBill
(
	ID varchar(11) not null primary key,
   date date,
   StaffID varchar(11) not null,
   CustomerID varchar(11) not null,
    foreign key (CustomerID) references Customer(ID),
    foreign key (StaffID) references Staff(ID)
)ENGINE = InnoDB;

create table Book
(
   ID varchar(11) not null primary key,
   title varchar(255),
   price float(10),
   importPrice float(10)
)ENGINE = InnoDB;

create table Buy
(
	quantity int(10),
   BookID varchar(11) not null,
   ExportBillID varchar(11) not null,
    foreign key (BookID) references Book(ID),
    foreign key (ExportBillID) references ExportBill(ID)
)ENGINE = InnoDB;

create table Distribute
(
	ID varchar(11) not null primary key,
    quantity int(10),
    Date Date,
   BookID varchar(11) not null,
  BookstoreID varchar(11) not null,
    foreign key (BookID) references Book(ID),
    foreign key (BookstoreID) references Bookstore(ID)
)ENGINE = InnoDB;


create table Supply
(
    quantity int(10),
    Date Date,
   BookID varchar(11) not null,
  SupplierID varchar(11) not null,
    foreign key (BookID) references Book(ID),
    foreign key (SupplierID) references Supplier(ID)
)ENGINE = InnoDB;



insert into Buy(quantity,BookID, exportBillID) values (10,'abc','bdc');