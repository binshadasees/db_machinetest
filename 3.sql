                      --//Test 3

1)SELECT SUM(int_quantity * int_price) AS totalcost FROM tbl_stock;

                   --//output
machinetest=# SELECT SUM(int_quantity * int_price) AS totalcost FROM tbl_stock;
 totalcost
-----------
   63865.5
(1 row)

2)SELECT SUM(int_quantity) AS total_no_products FROM tbl_stock;   

      --//output
machinetest=# SELECT SUM(int_quantity) AS total_no_products FROM tbl_stock;
 total_no_products
-------------------
                77
(1 row)
3)select upper (vchr_name) from tbl_stock;
               --output
 machinetest=# select upper (vchr_name) from tbl_stock;
   upper
-----------
 MOUSE
          +
 KEYBOARD
 MODEM
 HEADPHONE
 MEMORY
(5 rows)


  select round (int_price) from tbl_stock;

                  --//output
  machinetest=# select round (int_price) from tbl_stock;
 round
-------
   502
   452
  1202
   752
  3502
(5 row)

4)select count (vchr_name) as items from tbl_stock;

            --//output

machinetest=# select count (vchr_name) as items from tbl_stock;
 items
-------
     5
(1 row)

5)SELECT vchr_name,int_price from tbl_stock where int_price = (select max(int_price) from tbl_stock);

            --//output
            machinetest=# SELECT vchr_name,int_price from tbl_stock where int_price = (select max(int_price) from tbl_stock);
 vchr_name | int_price
-----------+-----------
 memory    |    3501.5
(1 row)

6)select sum(int_count) as total_enrollment from tbl_enrollment;
                  --//outpuut

                  
machinetest=# select sum(int_count) as total_enrollment from tbl_enrollment;
 total_enrollment
------------------
              351
(1 row)

7)select count (*) as no_of_classes from tbl_classes;
                     --//output
                     machinetest=# select count (*) as no_of_classes from tbl_classes;
 no_of_classes
---------------
             7
(1 row)

8)machinetest=# delete from tbl_stock where fk_int_supplier = 5;
DELETE 0


                --/output
                machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 |          +|            5 |     451.5 |               3
                 | Keyboard  |              |           |
               3 | modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | memory    |            2 |    3501.5 |               4
(5 rows)

9)
select concat(vchr_name,int_price) as Product_price from tbl_stock;

                                --output
                                machinetest=# select concat(vchr_name,int_price) as Product_price from tbl_stock;
 product_price
----------------
 Mouse501.5
               +
 Keyboard451.5
 modem1201.5
 Headphone751.5
 memory3501.5
(5 rows)


10) create table tbl_student(
    EnRI_no varchar(100),
    Roll_no serial primary key,
    Name varchar(50),
    City varchar(100),
    Mobile varchar(15),
    Dob date
);
insert into tbl_student(enri_no,roll_no,name,city,mobile,dob)
values(11,2,'akhil','delhi',98756579,'12-01-1989');

insert into tbl_student(enri_no,roll_no,name,city,mobile,dob)
values(6,4,'maya','bangalore',98734534,'12-01-1987');

insert into tbl_student(enri_no,roll_no,name,city,mobile,dob)
values(1,8,'anoop','bangalore',93456535,'12-01-1990');

insert into tbl_student(enri_no,roll_no,name,city,mobile,dob)
values(20,1,'paul','cochin',96754555,'13-03-1991');

insert into tbl_student(enri_no,roll_no,name,city,mobile,dob)
values(3,5,'sandeep','delhi',84865644,'14-06-1993');

              ---//output
              machinetest=# select * from tbl_student;
 enri_no | roll_no |  name   |   city    |  mobile  |    dob
---------+---------+---------+-----------+----------+------------
 11      |       2 | akhil   | delhi     | 98756579 | 1989-01-12
 6       |       4 | maya    | bangalore | 98734534 | 1987-01-12
 1       |       8 | anoop   | bangalore | 93456535 | 1990-01-12
 20      |       1 | paul    | cochin    | 96754555 | 1991-03-13
 3       |       5 | sandeep | delhi     | 84865644 | 1993-06-14
(5 rows)

create table tbl_grade(
    roll_no int,
    foreign key (roll_no) references tbl_student(roll_no) on delete cascade on update cascade,
    course varchar(50),
    grade varchar(50)
     );

     insert into tbl_grade (roll_no,course,grade)
     values(2,'C','A');
     
        insert into tbl_grade (roll_no,course,grade)
     values(2,'Java','B');

        insert into tbl_grade (roll_no,course,grade)
     values(1,'C','B');

        insert into tbl_grade (roll_no,course,grade)
     values(1,'Java','A');

        insert into tbl_grade (roll_no,course,grade)
     values(4,'PHP','A');

        insert into tbl_grade (roll_no,course,grade)
     values(4,'Java','A');

        insert into tbl_grade (roll_no,course,grade)
     values(4,'C','B');

        insert into tbl_grade (roll_no,course,grade)
     values(8,'Java','B');

        insert into tbl_grade (roll_no,course,grade)
     values(5,'PHP','A');

        insert into tbl_grade (roll_no,course,grade)
     values(5,'Java','D');

                        --//output

machinetest=# select * from tbl_grade;
 roll_no | course | grade
---------+--------+-------
       2 | C      | A
       2 | Java   | B
       1 | C      | B
       1 | Java   | A
       4 | PHP    | A
       4 | Java   | A
       4 | C      | B
       8 | Java   | B
       5 | PHP    | A
       5 | Java   | D
(10 rows)

select tbl_student.enri_no,tbl_student.roll_no,tbl_student.name,tbl_student.city,tbl_student.mobile,tbl_student.dob,tbl_grade.course,tbl_grade.grade
from tbl_student inner join tbl_grade
on tbl_student.roll_no = tbl_grade.roll_no WHERE tbl_grade.grade = 'A';
         
                         --output

                         machinetest-# on tbl_student.roll_no = tbl_grade.roll_no WHERE tbl_grade.grade = 'A';
 enri_no | roll_no |  name   |   city    |  mobile  |    dob     | course | grade
---------+---------+---------+-----------+----------+------------+--------+-------
 11      |       2 | akhil   | delhi     | 98756579 | 1989-01-12 | C      | A
 6       |       4 | maya    | bangalore | 98734534 | 1987-01-12 | Java   | A
 6       |       4 | maya    | bangalore | 98734534 | 1987-01-12 | PHP    | A
 20      |       1 | paul    | cochin    | 96754555 | 1991-03-13 | Java   | A
 3       |       5 | sandeep | delhi     | 84865644 | 1993-06-14 | PHP    | A
(5 rows)

11)
select tbl_student.enri_no,tbl_student.roll_no,tbl_student.name,tbl_student.city,tbl_student.mobile,tbl_student.dob,tbl_grade.course,tbl_grade.grade
from tbl_student inner join tbl_grade
on tbl_student.roll_no = tbl_grade.roll_no WHERE tbl_grade.grade = 'B';

--                         //output

machinetest-# on tbl_student.roll_no = tbl_grade.roll_no WHERE tbl_grade.grade = 'B';
 enri_no | roll_no | name  |   city    |  mobile  |    dob     | course | grade
---------+---------+-------+-----------+----------+------------+--------+-------
 11      |       2 | akhil | delhi     | 98756579 | 1989-01-12 | Java   | B
 6       |       4 | maya  | bangalore | 98734534 | 1987-01-12 | C      | B
 1       |       8 | anoop | bangalore | 93456535 | 1990-01-12 | Java   | B
 20      |       1 | paul  | cochin    | 96754555 | 1991-03-13 | C      | B
(4 rows)



12)
SELECT tbl_student.name,count(tbl_grade.course) as no_of_course from tbl_grade 
inner join tbl_student on tbl_student.roll_no=tbl_grade.roll_no
group by tbl_student.name,tbl_student.roll_no order by tbl_student.name;

                          --output
                            name   | no_of_course
---------+--------------
 akhil   |            2
 anoop   |            1
 maya    |            3
 paul    |            2
 sandeep |            2
(5 rows)


13)
 SELECT * FROM tbl_student 
WHERE city = 'bangalore' AND roll_no in (SELECT roll_no FROM tbl_grade WHERE course='Java');

                           --//output
                           machinetest=#  SELECT * FROM tbl_student
machinetest-# WHERE city = 'bangalore' AND roll_no in (SELECT roll_no FROM tbl_grade WHERE course='Java');
 enri_no | roll_no | name  |   city    |  mobile  |    dob
---------+---------+-------+-----------+----------+------------
 6       |       4 | maya  | bangalore | 98734534 | 1987-01-12
 1       |       8 | anoop | bangalore | 93456535 | 1990-01-12
(2 rows)


14)

machinetest=# select tbl_student.name,tbl_grade.course from tbl_student inner join tbl_grade on tbl_student."roll_no"=tbl_grade."roll_no" where name like 'a%';
 name  | course
      
                      --//output
-------+--------
 akhil | C
 akhil | Java
 anoop | Java
(3 rows)

15)

 SELECT name, date_part('year',age(dob)) AS age FROM tbl_student;
                               --/output
 name   | age                                
---------+-----
 akhil   |  34
 maya    |  36
 anoop   |  33
 paul    |  31
 sandeep |  29
(5 rows)



16) 
SELECT name, to_char("dob", 'DD-Mon-YYYY') FROM tbl_student;
                 
                 --//output

                 name   |   to_char
---------+-------------
 akhil   | 12-Jan-1989
 maya    | 12-Jan-1987
 anoop   | 12-Jan-1990
 paul    | 13-Mar-1991
 sandeep | 14-Jun-1993
(5 rows)




