create table market_item(
	id serial primary key,
	name varchar(50),
	price numeric(6,2)
)

insert into market_item values ('tandem bicycle',75.00); -- this won't execute because the parameters are ambigious

insert into market_item values (default, 'unicycle',75.00);

insert into market_item (name, price) values ('bananas',75.00);


---------------------------------------------
-- day 2, maniuplating our data a bit more 
---------------------------------------------

delete from market_item
where id = 2;

update market_item 
set price = 200;

update market_item 
set price = 50
where id  = 1;

insert into market_item values (2, 'motorcycle', 5000);

insert into market_item (name, price) values ('helmet', 30);
insert into market_item (name, price) values ('energy bars', 3);
insert into market_item (name, price) values ('kayak', 1500);
insert into market_item (name, price) values ('paddle', 100);


create table department(
	id serial primary key,
	name varchar(50)
)

alter table market_item 
add column department integer references department(id); -- creating a fk between market item and department

insert into department (name) values ('cycling');
insert into department (name) values ('water sports');
insert into department (name) values ('camping');

alter table department 
add column sale_goal numeric(8,2);

update department 
set sale_goal = 10000
where id = 1;

update department 
set sale_goal = 12000
where id = 2;

update department 
set sale_goal = 8000
where id = 3;

update market_item 
set department = 1
where id = 2 or id = 3 or id = 4;

update market_item 
set department = 2
where id = 6 or id = 7;

update market_item 
set department = 8
where id = 5;

delete from department 
where name = 'cycling';

select *
from department d;

select name 
from department d;

select * 
from department d
where id = 3;

select *
from department d 
where sale_goal > 9000;

select * 
from department
order by sale_goal desc;

select name as "Cycling Products" -- alias the column, as is optional 
from market_item mi
where department = 1
order by name;

select id 
from department d 
where name = 'cycling';

select *
from market_item mi 
where department = (
	select id 
	from department d 
	where name = 'cycling'
);

-- using an aggregate function
-- aggregates are performed on a complete data set
select max(sale_goal)
from department d;

select count(id)
from market_item mi;

-- this is a scalar function
select concat(id,name)
from market_item mi;


-- length is a scalar being performed on each record 
-- max is an aggregate which determines its result on the entire data set
select max(length(name))
from market_item mi;

select round(avg(price),2)
from market_item mi;

-- aggregation and group by 
select count(id), department 
from market_item mi 
group by department;

-- where clause is performed on the data set pre aggregation
select count(id), department 
from market_item mi 
where department = 2
group by department;

-- this query would be like the first step of the above query, then this data would be aggregated 
select id, department
from market_item mi 
where department = 2;

-- having clause is performed on the groups of data, after aggregation
select count(id), department 
from market_item mi 
group by department
having department = 2;

-- this query is like the first step, first creating all of the groups before filtering
select count(id), department 
from market_item mi 
group by department;


-- joins
select name, department
from market_item mi;

select market_item.name, department.name
from market_item
join department
on market_item.department = department.id;

select mi.name, d.name
from market_item mi
join department d
on mi.department = d.id;


-- we don't have an employee table but if we did we could join it like this 
select mi.name, d.name, e.name
from market_item mi
join department d
on mi.department = d.id
join employee e 
on d.department_head = e.id;

-- the prior joins were implicitly inner joins
	-- inner joins only show records which have matching data on both sides of the join
select mi.name, d.name
from market_item mi
inner join department d
on mi.department = d.id;

-- left joins show everything from the "left" (before the join keyword) and matching records on the right
select mi.name "Item", d.name "Department"
from market_item mi
left outer join department d
on mi.department = d.id
order by d.name;

select mi.name "Item", d.name "Department"
from market_item mi
right outer join department d
on mi.department = d.id
order by d.name;

select mi.name "Item", d.name "Department"
from market_item mi
full outer join department d
on mi.department = d.id
order by d.name;

-- set operators
select name 
from market_item mi 
union
select name 
from department d;

select name
from market_item
where department = 1
union 
select name
from market_item
where price > 150;

select name
from market_item
where department = 1
union all 
select name
from market_item
where price > 150;

select name
from market_item
where department = 1
intersect 
select name
from market_item
where price > 150;

select name
from market_item
where department = 1
except 
select name
from market_item
where price > 150;

select * 
from market_item mi;

-- creating a view 
create view inventory as
select mi.name "Item", d.name "Department"
from market_item mi
left outer join department d
on mi.department = d.id
order by d.name;

select * from inventory;

-- a normal view is just a saved query
select * from (
select mi.name "Item", d.name "Department"
from market_item mi
left outer join department d
on mi.department = d.id
order by d.name) as inventory_sub_query;

-- a materialized view actually stores a copy of the data in memory
create materialized view inventory_materialized_view as 
select mi.name "Item", d.name "Department"
from market_item mi
left outer join department d
on mi.department = d.id
order by d.name;

select * from inventory;
select * from inventory_materialized_view;

insert into market_item (name, price, department) values ('tent', 75, 3);

refresh materialized view inventory_materialized_view;

drop table market_item;
drop table department;
