create table user (
    id int primary key AUTO_INCREMENT,
    name varchar(250),
    contactNumber varchar(20),
    email varchar(50),
    password varchar(250),
    status varchar(20),
    role varchar(20),
    UNIQUE (email)
);

insert into user(name,contactNumber,email,password,status,role) values('Admin', '1234567890', 'admin@gmail.com', 'admin','true', 'admin' );

create table category (
    id int primary key AUTO_INCREMENT,
    name varchar(255) NOT NULL
);

create table product (
    id int primary key AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    description varchar(255),
    price integer NOT NULL,
    status varchar(20),
    category_id int NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

create table bill(
    id int primary key AUTO_INCREMENT,
    uuid varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    contactNumber varchar(20) NOT NULL,
    paymentMethod varchar(50) NOT NULL,
    total int NOT NULL, 
    productDetails JSON DEFAULT NULL,
    createdBy varchar(255) NOT NULL
);

