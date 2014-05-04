<!-- ## Show the terminal output here.  -->

sqlite> SELECT * FROM blog;
id          user_id     created_at           updated_at         
----------  ----------  -------------------  -------------------
1           1           2014-05-03 22:35:49  2014-05-03 22:35:49

sqlite> SELECT * FROM blog_entry
   ...> ;
id          blog_id     entry_name  entry       created_at           updated_at         
----------  ----------  ----------  ----------  -------------------  -------------------
1           1           one         stuff       2014-05-03 22:45:40  2014-05-03 22:45:40
2           1           two         more stuff  2014-05-03 23:49:30  2014-05-03 23:49:30
3           1           three       even more   2014-05-03 23:51:50  2014-05-03 23:51:50
4           1           four        lots of it  2014-05-03 23:55:52  2014-05-03 23:55:52
5           1           five        blarg       2014-05-04 00:01:56  2014-05-04 00:01:56
6           1           six         sturff      2014-05-04 00:02:49  2014-05-04 00:02:49
7           1           seven       stump       2014-05-04 00:03:22  2014-05-04 00:03:22
8           1           eight       struff      2014-05-04 00:03:52  2014-05-04 00:03:52
9           1           nine        struuff     2014-05-04 00:04:24  2014-05-04 00:04:24
10          1           ten         too much s  2014-05-04 00:05:08  2014-05-04 00:05:08

sqlite> SELECT entry_name, entry FROM blog_entry AS blog_entry JOIN blog
   ...> AS blog ON blog_entry.blog_id=blog.id;
entry_name  entry     
----------  ----------
one         stuff     
two         more stuff
three       even more 
four        lots of it
five        blarg     
six         sturff    
seven       stump     
eight       struff    
nine        struuff   
ten         too much s