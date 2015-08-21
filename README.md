# Bingo-Pop

Install Instructions

	bundle install
	rake db:create db:migrate
	rails s

To ask for 1 card:

	curl "http://localhost:3000/deal"

To ask for multiple cards:

	curl "http://localhost:3000/deal?cards=#" // where # represents a number ex. 3

# Questions 

## 1

One of our machines has been compromised. How would you go about isolating, identifying and
potentially patching the vulnerability? This is an open ended question, be as specific as you
want.

Answer:

This can be one of the trickiest and ugliest things a Network Admin will face and the solution is much like the problem, hard to identify. It can be hard to distinguish when the intrustion occured leaving the admin in a bit of a bind.

Depending on the amount of servers an ideal way would be to start with an IDS. I've heard of Snort which works both on UNIX and Windows server environments. Server logs would be your next step and hopefully your servers doesn't have a large user load so you are easier to pinpoint when root log-ins happen and the tell-tale signs are odd IP addresses accessing the server. You can also run scans using AV/anti-root-kit software to hopefully find the intrusion.

Once isolated, immediately disconnect the server (hopefully this isn't your only server, otherwise step 1 would be disconnecting). Leaving the system connected can't only allow the infection to spread. Like a child with a cold in a school full of other kids.

Passwords should be changed as well, not just on the infected machine but others on the network as well. 

If the system holds personal data you should contact the necessary management or staff that deals with data integrity and protection.


Once the issue is resolved, it would be best to continue to monitor the network.


## 2

We have a mysql cluster (master ­> slave) running low on disk space. There is a proper clustering solution (VIP) in place and clients are smart enough to reconnect upon disconnects. What are the options to increase disk capacity without compromising uptime?

Answer:

If we are using a simple RAID drive then we can build a new partition without downtime but if not we can install new disk space and point the data directory there. Then we can migrate data to alleviate space issues on the other drive.  Both options are capable without downtime.

## 3

You are tasked with managing a log of user­generated events. Each event is represented as a simple ~1KB JSON object, which includes a timestamp and a user_id. Currently, the events take 1TB of disk space and they are growing at a rate of 1,000 events per second. Each user can generate thousands of events. How would you design a low maintenance system to allow for quick retrieval (<10ms) of a single user’s last 100 events at a rate of 100 ops/sec ?

Answer:


As events are created, I would create a cache of the events and run a task every "x" seconds to ensure that previous tasks are archived.

## 4
Imagine a massively multiplayer RPG. The most popular feature is a battle arena. When a user enters the arena, a list of 10 other users are presented based on certain conditions. Most importantly, the list must have users within a similar hero level (level), and they also must be alive (health>0). Note: the health value changes frequently. How would you store this information to ensure 10 ms response times even with 10 million user rows and 10,000 players online at any given time?

Answer:


I would parse through the data and pass them into variables and do multi-line entries. Then run corresponding update methods on the json objects.

## 5

The following SQL query works fine, however it poses a serious performance issue. What is the issue and how can we speed it up?

SELECT id FROM users WHERE LOWER(email)='lucas@uken.com';

Answer:

The query will return the id which will then allow us to map back to the rest of the data although that would be a 2 step process.  You can exchange id with * and it should return the entire row.





