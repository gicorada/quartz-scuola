Integrity -> a set of rules, guidelines
Consistency -> correctness and presence of correct data, adherence to rules
Accuracy -> degree of correctness
Reliability -> all inclusive

To avoid:
Redundancy -> repetition of data
Inconsistency -> opposite of consistency
Provoked by human error or bug/failure

## ACID
**A**tomicity -> each transaction is considered as one unit with a beginning/end
**C**onsistency -> Presence of correct data that adheres to rules
**I**solation -> Each transaction does not interfere with others
**D**urability -> Operations must be permanent


Query:
Commands used to explain to the DBMS how we want to manipulate a DB (create, read, update, delete)

## What we need to know
1) What is a data? A piece of fact related to an object. When it's processed and acquire a meaning, it becomes information
2) What is a database? Systematic collection of data
	1) Characteristics:
		- Reliability
		- Accuracy
		- Normalization
		- Scalability
		- Acid properties:
			- Atomicity
			- Consistency
			- Integrity
			- Durability
	2) Database system -> Database admin = centralized control
3) What is a relational DB? A systematic collection of data organized in tables
	1) Structure: tables
		1) Rows -> Records
		2) Columns -> Attributes (fields)
	2) Relation
		1) Connection between tables
		2) Primary key -> Set of fields that identify uniquely each record of the table
		3) Foreign key -> A field in a daughter table refers back to the primary key in the mother table
	3) Types of relation
		1) One to many -> Relation between two tables when one attribute contains more instances of the other attribute
		2) Many to many -> Relation in a joint table that unites two other tables
		3) One to one -> One record in one table corresponds to one record in another table
4) What is DBMS? Collection of programs to access a database to manipulate data (CRUD)
5) SQL what is it? Standard language for dealing with relational DB
	1) Query -> Set of instructions used to explain to the DBMS what specific CRUD operation we want to execute
	2) Past: declarative, non procedural
	3) Now: hybrid
	4) 2 types:
		1) Interactive -> Immediate result, query on the spot, used by app devs
		2) Preprogrammed -> embedded in an app and written in another language, result not immediate but processed in the app