-- buat database baru
create database basicecommerce

-- tabel products
create table products (
  product_id int not null auto_increment primary key,
	product_name varchar(100) not null,
	quantity int not null default 1
)

-- tabel users
create table users (
	user_id int not null auto_increment primary key,
	name varchar(100) not null
)

-- tabel orders
create table orders (
	order_id int not null auto_increment primary key,
	user_id int not null,
	product_id int not null,
	order_date timestamp default current_timestamp,
	foreign key (user_id) references users(user_id)
	foreign key (product_id) references products(product_id)
)