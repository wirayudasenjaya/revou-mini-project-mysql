-- mulai transaction
start transaction;

-- memulai lock row
select quantity from products where product_id = 1 for update

-- kurangi quantity dari product
update products set quantity = quantity - 1 where product_id = 1

-- untuk mengecek apakah quantity pada produk sudah berubah atau belum
select * from products where product_id = 1

-- menambah data produk dan user ke tabel order
insert into orders (user_id, product_id) values (1, 1)

-- mengecek apakah data sudah masuk ke tabel order atau belum
select * from orders

-- commit transaction
commit

-- rollback transaction
rollback

-- untuk mengecek perubahan setelah transaction selesai
select * from products

select * from orders