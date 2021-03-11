# SQL 
- SQL = Structured Query Language
- a means for interacting with a database 

## Relational Database
- set of tables that can have records that are related to one another
- we can make references from records in a table to references in another

**Schema** - schema is a collection of database objects like tables
- Each schema in our database is going to be associated with a particular user and can have various tables within it
- the user associated with the schema is the owner of the tables within in

1. Candidate Key
    - any column or combination of columns which can uniquely identify a row 
2. Primary Key
    - the column or combination of columns which acts as the unique identifier for 
    - must be unique
    - cannot be null
3. Foreign Key
    - a column which references a value in another table
    > invoice and customer  


# SQL and its sub-languages
- there are many different operations we can perform on our db
- these operations can be broken down into types of operations or sub-languags within SQL

### DDL - Data Definition Language
- used to define the structure of our database entities
- any table scoped operations fall under DDL
- `create`, `drop`, `truncate`, `alter`
- note: when defining tables, we specify the [data type](https://www.postgresql.org/docs/9.5/datatype.html) held in each column, as well as defining any [constraints](https://www.postgresql.org/docs/9.4/ddl-constraints.html) we would like placed 

### DML - Data Manipulation Language 
- represents the operations we do on the records themselves
- CRUD operations (Create Read Update Delete); the main operations we do on data
- `insert`, `update`, `delete`, `select`
    - `select` is sometimes considered part of its own sublanguage, DQL, or Data Query Language

### TCL - Transaction Control Language
**Transaction:** a unit of work done on a database - it consists of one or more operation
- TCL helps facilitate creating explicit transactions to group together related operations
- `commit`, `rollback`, `savepoint`

### DCL - Data Control Language
- allows you to manage user permissions on a database 
- `grant` `revoke`