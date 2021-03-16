# JDBC

- Java Database Connectivity
- a means for accessing our DB with a Java application
- oracle provides a dependency for doing this with an oracle database -- this is the ojdbc jar file we downloaded
- this will allow us to use classes and interfaces

## Connection

- a connection or a session with the database, which allows us to execute sql statements and retrieve their results
- create using a DriverManager's static getConnection method, along with our database credentials

## Statement

- used for executing a static SQL statement and returning the results it produces
- execution methods will execute them in the database
- autocommit by default is true
- creating a new statement

> `Connection con = ConnectionUtil.getConnection();`

> `Statement s = con.createStatement();`

> `ResultSet rs = s.executeQuery("SELECT * FROM BAKERY_ITEM");`

## PreparedStatement

- subinterface of statement, but it is compiled separately from the parameters to prevent sql injection

> `con.prepareStatement("SELECT * FROM BAKERY_ITEM WHERE ITEM_TYPE = ?")`

> `statement.set[ type ]( [1 based index ],[ value ])`

> `statement.setString(1,itemTypeInput)`

## CallableStatement

- subinterface of prepared statement
- used in order to execute stored procedures

> `Connection con = ConnectionUtil.getHardCodedConnection();`

> `CallableStatement cs = con.prepareCall("{call PROCEDURE_NAME(?,?,...)}"));`

> `cs.set[type]([index], [value]);`

> `cs.execute();`

## ResultSet

- table of data representing a database result set, returned from a statement
- maintains a cursor pointing to its current row of data
- initially the cursor is positioned before the first row
- next method moves the cursor to the next row, returns false when there are no more rows in the ResultSet object

> `statement.executeQuery()`

> `rs.next();`

> `rs.get[type]([column index]/[column name])`

# DAO Design Pattern

- provides a standard interface for performing data access operations
- promotes loose coupling and allows for interchangeability between data access code
