--create statement
create table Call_detail(
Phone_number int(10), 
Call_start timestamp,
Call_duration int(10),
Call_description varchar(20),
primary key(Call_start,Phone_number)) 
partition by range(unix_timestamp(Call_start))(
partition p1 values less than(unix_timestamp('2022-01-01 00.00.00')) ,
partition p2 values less than(unix_timestamp('2023-01-01 00.00.00')) );

--to create indexes 
create index call_idx on Call_detail(Phone_number,Call_start);

--insert statement
insert into Call_detail values(123,'2022-12-01 01.02.00',02,'OFFICE');
insert into Call_detail values(123,'2022-6-01 03.02.00',02,'OFFICE');
insert into Call_detail values(123,'2020-6-01 03.02.00',02,'OFFICE');

--show the table and partitions
select * from Call_detail;

select * from Call_detail partition(p1);

select * from Call_detail partition(p2);

--to show the Description of the Table
desc Call_detail;

--to show the Indexes of the Table
show indexes from Call_detail;
