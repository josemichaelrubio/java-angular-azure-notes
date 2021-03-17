# More on Transactions

### Properties of a Transactions

- Atomicity 
- Consistency 
- Isolation
- Durability

### Transaction Isolation Levels

| Isolation Levels      | Dirty Read | Non Repeatable Read | Phantom Read | 
| ----------- | ----------- | ----------- | ----------- |
|    Read Uncommitted   | Possible       | Possible      | Possible       |
|    Read Committed*   | Not Possible        |  Possible  | Possible |
|    Repeatable Read   | Not Possible        |  Not Possible | Possible |
|    Serializable*   | Not Possible        |  Not Possible | Not Possible |


Dirty Read:
- a transaction reading another transactions uncommitted data

Non Repeatable Read: 
- a transaction reads data
- another transaction updates records in that data
- the first transaction is not able to read that same data again

Phantom Read:
- a transaction reads data 
- another transaction adds or removes records relevant to the first transaction 
- a subsequent requests shows a different amount of records in the query

*supported in postgres

[More on Transaction Isolation](https://www.postgresql.org/docs/11/transaction-iso.html)

---- 
### Working with TCL 

[Working with Transactions in Postgres](https://www.postgresql.org/docs/8.3/tutorial-transactions.html)
[Working with Transactions in JDBC](https://docs.oracle.com/javase/tutorial/jdbc/basics/transactions.html)