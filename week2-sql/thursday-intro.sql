create table market_item(
	id serial primary key,
	name varchar(50),
	price numeric(6,2)
)

insert into market_item values ('tandem bicycle',75.00); -- this won't execute because the parameters are ambigious

insert into market_item values (default, 'unicycle',75.00);

insert into market_item (name, price) values ('bananas',75.00);
