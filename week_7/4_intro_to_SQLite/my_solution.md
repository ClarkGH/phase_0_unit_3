# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

-- Loading resources from /Users/CthulhuDevBook/.sqliterc


## Release 1: Insert Data 

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );

sqlite> select * from users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 01:35:44  2014-04-27 01:35:44
2           Clark       Lin         ClarkHinchcliff@hotma  2014-04-27 02:51:48  2014-04-27 02:51:48
sqlite> 


## Release 2: Multi-line commands

sqlite> select * from users
sqlite> ;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 01:35:44  2014-04-27 01:35:44
2           Clark       Lin         ClarkHinchcliff@hotma  2014-04-27 02:51:48  2014-04-27 02:51:48
sqlite> 

2014-04-27 01:35:44
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> 

The issue is with the e-mail not being unique.

## Release 3: Add a column

sqlite> ALTER TABLE users ADD COLUMN nickname VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL

sqlite> UPDATE users SET nickname='Kimchee' WHERE id = 1;
sqlite> UPDATE users SET nickname='Clarky' Where id=2;
sqlite> select * from users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 01:35:44  2014-04-27 01:35:44  Kimchee   
2           Clark       Lin         ClarkHinchcliff@hotma  2014-04-27 02:51:48  2014-04-27 02:51:48  Clarky    
sqlite> 

## Release 4: Change a value

sqlite> UPDATE users SET first_name = 'Kimmy', nickname='Ninja Coder', updated_at=DATE('now') WHERE id = 1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at  nickname   
----------  ----------  ----------  ---------------------  -------------------  ----------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-27 01:35:44  2014-04-27  Ninja Coder
2           Clark       Lin         ClarkHinchcliff@hotma  2014-04-27 02:51:48  2014-04-27  Clarky     

## Release 5: Reflect
<!-- Add your reflection here -->
What parts of your strategy worked? What problems did you face?

I had a lot of issues with this one initially I had to go through the SQLite tutorial to understand some of it. But everything worked out in the end and I was able to add columns with few issues. I just need more work with this one.

What questions did you have while coding? What resources did you find to help you answer them?
The included resource answered all of my questions.

What concepts are you having trouble with, or did you just figure something out? If so, what?

Not too many, I understand what I'm doing.

Did you learn any new skills or tricks?

Adding new columns and updating things.

How confident are you with each of the Learning Competencies?

Getting there. This is something I need to practice more.

Which parts of the challenge did you enjoy?

All of it.

Which parts of the challenge did you find tedious?

Got a little stuck, but the reading helps.