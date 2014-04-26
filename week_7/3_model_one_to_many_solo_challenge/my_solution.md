# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->
##User Image
##Twitter ID
##Description
##Website
##Location
##Date Joined
##Tweets
##Following
##Followers
##Favorites
##Lists
##Photos and Videos

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->
##User ID
##140 characters
##Photo
##Video
##Location
##Links

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
<!-- because... -->

##The relationship between users and their personal tweets are one to many. A single user can have many tweets.

##When someone retweets it becomes many to many. One user can tweet something, but once it is retweeted, it becomes many to many since it is now associated with multiple users. For the sake of the exercise, I'm not going to overcomplicate things with retweets.

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
![my schema](https://github.com/ClarkGH/phase_0_unit_3/blob/master/week_7/images/SQL_solo.jpg?raw=true)

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->

All the tweets for a certain user id: SELECT * FROM tweets WHERE user_id = 1

The tweets for a certain user id that were made after last Wednesday: SELECT * FROM tweets WHERE user_id = 1 AND created_at > '2014-04-23'


All the tweets associated with a given user's twitter handle:

SELECT * FROM tweets WHERE user_id IN (SELECT id FROM user WHERE user_handle = '@handle')

The twitter handle associated with a given tweet id:

SELECT user_handle FROM user WHERE user_id IN (SELECT user_id FROM tweets WHERE id = 1)

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
What parts of your strategy worked? What problems did you face?

It all worked out good :)

What questions did you have while coding? What resources did you find to help you answer them?

I need to practice with SQL a bit more, but it all worked out great.

What concepts are you having trouble with, or did you just figure something out? If so, what?

Not really any

Did you learn any new skills or tricks?

More of a review

How confident are you with each of the Learning Competencies?

Pretty confident

Which parts of the challenge did you enjoy?

Great review

Which parts of the challenge did you find tedious?

None really.