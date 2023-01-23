                              --//SQL 2 TEST

--      1)
INSERT INTO tbl_stock (vchr_name,int_quantity,int_price,fk_int_supplier) VALUES ('Mouse',10,500,1),('
Keyboard',5,450,3),('modem',10,1200,2),('Memory',100,1500,5),('Headphone',50,750,4),('memory',2,3500,4);

-- output    

test=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |       500 |               1
               2 | Keyboard  |            5 |       450 |               3
               3 | modem     |           10 |      1200 |               2
               4 | Memory    |          100 |      1500 |               5
               5 | Headphone |           50 |       750 |               4
               6 | memory    |            2 |      3500 |               4
(6 rows)

--     2)

UPDATE tbl_stock SET int_price = 501.5 WHERE pk_int_stock_Id = 1;
UPDATE tbl_stock SET int_price = 451.5 WHERE pk_int_stock_Id = 2;
UPDATE tbl_stock SET int_price = 1201.5 WHERE pk_int_stock_Id = 3;
UPDATE tbl_stock SET int_price = 1501.5 WHERE pk_int_stock_Id = 4;
UPDATE tbl_stock SET int_price = 751.5 WHERE pk_int_stock_Id = 5;
UPDATE tbl_stock SET int_price = 3501.5 WHERE pk_int_stock_Id = 6;
 
--  output   

test=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | memory    |            2 |    3501.5 |               4
(6 rows)

--   3)

select * from tbl_stock where int_price >= 1000;


-- output   

pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               6 | memory    |            2 |    3501.5 |               4
(3 rows)


---       4)

select * from tbl_stock order by vchr_name asc;

-- output         

pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               6 | memory    |            2 |    3501.5 |               4
               4 | Memory    |          100 |    1501.5 |               5
               3 | modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1
(6 rows)

--    5)
 select * from tbl_stock order by vchr_name asc limit 3;


-- output    

 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               6 | memory    |            2 |    3501.5 |               4
(3 rows)


--     6)

select * from tbl_stock order by vchr_name desc limit 3;

-- output    

 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               3 | modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)


--      7)

select *,(int_quantity * int_price) as int_quantity_int_price from tbl_stock;



-- output    

 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier | int_quantity_int_price
-----------------+-----------+--------------+-----------+-----------------+------------------------
               1 | Mouse     |           10 |     501.5 |               1 |                   5015
               2 | Keyboard  |            5 |     451.5 |               3 |                 2257.5
               3 | modem     |           10 |    1201.5 |               2 |                  12015
               4 | Memory    |          100 |    1501.5 |               5 |                 150150
               5 | Headphone |           50 |     751.5 |               4 |                  37575
               6 | memory    |            2 |    3501.5 |               4 |                   7003
(6 rows)


--     8)

delete from tbl_stock where fk_int_supplier = 5;

-- output   

pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | memory    |            2 |    3501.5 |               4
(5 rows)


--      9)

INSERT INTO tbl_dept (vchr_dept_name,vchr_dept_description) VALUES ('Computer Sceince','CS'),('Electronics','EC'),('Commerce','CC'),('Arts','AR');

-- output     

INSERT 0 4
test=# select * from tbl_dept;
 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | Computer Sceince | CS
              2 | Electronics      | EC
              3 | Commerce         | CC
              4 | Arts             | AR
(4 rows)