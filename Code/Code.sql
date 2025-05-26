create database dbassignment02
use dbassignment02

create table team
(
	teamid numeric (3) not null,
	teamname varchar (30) not null,
	homestadium varchar (50),
	numberofwins numeric (3),
	numberoflosses numeric (3)

	primary key (teamid)
)

create table player
(
	playerid numeric (3) not null,
	playername varchar (30) not null,
	playerrole varchar (20),
	teamname varchar (30) 
	
	primary key (playerid)
)

create table stadium
(
	stadiumid numeric (3) not null,
	stadiumname varchar (50) not null,
	stadiumlocation varchar (50),
	capacity numeric (10)

	primary key (stadiumid)
)

create table match
(
	matchid numeric (3) not null,
	matchdate date,
	matchtime varchar (5),
	stadiumid numeric (3),
	matchtype varchar (20),
	teamid1 numeric (3),
	teamid2 numeric (3)

	primary key (matchid)
	foreign key (stadiumid) references stadium,
	foreign key (teamid1) references team,
	foreign key (teamid2) references team
)

create table performance
(
	performanceid numeric (3) not null,
	matchid numeric (3),
	playerid numeric (3),
	runsscored numeric (4),
	wicketstaken numeric (3),
	catches numeric (3)

	primary key (performanceid)
	foreign key (matchid) references match,
	foreign key (playerid) references player
)

create table winner
(
	matchid numeric (3),
	winningteam varchar (30)

	foreign key (matchid) references match
)

-- insertions into player

insert into player values (1, 'Babar Azam', 'Batsman', 'Karachi Kings') 
insert into player values (2, 'Shaheen Afridi', 'Bowler', 'Lahore Qalandars') 
insert into player values (3, 'Shadab Khan', 'All-Rounder', 'Islamabad United') 
insert into player values (4, 'Wahab Riaz', 'Bowler', 'Peshawar Zalmi') 
insert into player values (5, 'Sarfaraz Ahmed', 'Wicketkeeper', 'Quetta Gladiators') 
insert into player values (6, 'Mohammad Rizwan', 'Wicketkeeper', 'Multan Sultans') 
insert into player values (7, 'Imad Wasim', 'All-Rounder', 'Karachi Kings') 
insert into player values (8, 'Fakhar Zaman', 'Batsman', 'Lahore Qalandars') 
insert into player values (9, 'Asif Ali', 'Batsman', 'Islamabad United') 
insert into player values (10, 'Haris Rauf', 'Bowler', 'Peshawar Zalmi') 
insert into player values (11, 'Hassan Ali', 'Bowler', 'Quetta Gladiators') 
insert into player values (12, 'Faheem Ashraf', 'All-Rounder', 'Multan Sultans') 
insert into player values (13, 'Mohammad Hafeez', 'All-Rounder', 'Karachi Kings') 
insert into player values (14, 'Shoaib Malik', 'All-Rounder', 'Lahore Qalandars') 
insert into player values (15, 'Ahmed Shehzad', 'Batsman', 'Islamabad United') 
insert into player values (16, 'Umar Akmal', 'Batsman', 'Peshawar Zalmi') 
insert into player values (17, 'Shan Masood', 'Batsman', 'Quetta Gladiators') 
insert into player values (18, 'Kamran Akmal', 'Wicketkeeper', 'Multan Sultans') 
insert into player values (19, 'Yasir Shah', 'Bowler', 'Karachi Kings') 
insert into player values (20, 'Junaid Khan', 'Bowler', 'Lahore Qalandars') 
insert into player values (21, 'Faf Du Plessis', 'Batsman', 'Islamabad United') 
insert into player values (22, 'AB De villiers', 'Batsman', 'Lahore Qalandars') 
insert into player values (23, 'James Vince', 'Batsman', 'Multan Sultans') 
insert into player values (24, 'Rilee Rossouw', 'Batsman', 'Multan Sultans') 
insert into player values (25, 'Jason Roy', 'Batsman', 'Quetta Gladiators') 
insert into player values (26, 'Joe Root', 'Batsman', 'Peshawar Zalmi') 
insert into player values (27, 'Dale Steyn', 'Bowler', 'Islamabad United') 
insert into player values (28, 'Sunil Narine', 'Bowler', 'Lahore Qalandars') 
insert into player values (29, 'Pat Cummins', 'Bowler', 'Islamabad United') 
insert into player values (30, 'Kagiso Rabada', 'Bowler', 'Multan Sultans') 
insert into player values (31, 'Anrich Nortje', 'Bowler', 'Quetta Gladiators') 
insert into player values (32, 'Trent Boult', 'Bowler', 'Karachi Kings') 
insert into player values (33, 'Jimmy Neesham', 'All-Rounder', 'Islamabad United') 
insert into player values (34, 'Kieron Pollard', 'All-Rounder', 'Karachi Kings') 
insert into player values (35, 'David Willey', 'All-Rounder', 'Multan Sultans') 
insert into player values (36, 'Cameron Green', 'All-Rounder', 'Lahore Qalandars') 
insert into player values (37, 'Naveen Ul Haq', 'All-Rounder', 'Peshawar Zalmi') 
insert into player values (38, 'Muhammad Nabi', 'All-Rounder', 'Quetta Gladiators') 
insert into player values (39, 'Quinton De Kock', 'Batsman', 'Quetta Gladiators') 
insert into player values (40, 'Mitchell Starc', 'Bowler', 'Peshawar Zalmi') 

select *
from player
order by player.teamname

-- inserions into team

insert into team values (1, 'Karachi Kings', 'National Stadium', 2, 3) 
insert into team values (2, 'Lahore Qalandars', 'Gaddafi Stadium', 1, 4) 
insert into team values (3, 'Islamabad United', 'Rawalpindi Cricket Stadium', 3, 2) 
insert into team values (4, 'Peshawar Zalmi', 'Arbab Niaz Stadium', 4, 1) 
insert into team values (5, 'Quetta Gladiators', 'Bugti Stadium', 2, 3) 
insert into team values (6, 'Multan Sultans', 'Multan Cricket Stadium', 3, 2) 

-- updates after the 3rd place match, qualifier, eliminator and final

update team
set numberofwins = 3
where teamname = 'Karachi Kings'
update team
set numberoflosses = 5
where teamname = 'Lahore Qalandars'
update team
set numberofwins = 6
where teamname = 'Islamabad United'
update team
set numberofwins = 5
where teamname = 'Peshawar Zalmi'
update team
set numberoflosses = 2
where teamname = 'Peshawar Zalmi'
update team
set numberoflosses = 4
where teamname = 'Multan Sultans'
update team
set numberoflosses = 4
where teamname = 'Quetta Gladiators'

select *
from team

-- insertion into stadium

insert into stadium values( 1, 'National Stadium', 'Karachi', 35000) 
insert into stadium values( 2, 'Gaddafi Stadium', 'Lahore', 27000) 
insert into stadium values( 3, 'Rawalpindi Cricket Stadium', 'Rawalpindi', 20000) 
insert into stadium values( 4, 'Arbab Niaz Stadium', 'Peshawar', 28000) 
insert into stadium values( 6, 'Multan Cricket Stadium', 'Multan', 38000) 
insert into stadium values( 5, 'Bugti Stadium', 'Quetta', 15000) 

select * 
from stadium

-- insertion into match

-- 15 group stage (round robin) matches 

-- karachi

insert into match values (1, convert(date,'2024-03-25'), 'Day', 1, 'Round Robin', 1, 2) 
insert into match values (2, convert(date,'2024-03-26'), 'Day', 3, 'Round Robin', 1, 3) 
insert into match values (3, convert(date,'2024-03-27'), 'Night', 4, 'Round Robin', 1, 4) 
insert into match values (4, convert(date,'2024-03-28'), 'Day', 5, 'Round Robin', 1, 5) 
insert into match values (5, convert(date,'2024-03-29'), 'Night', 6, 'Round Robin', 1, 6) 

-- lahore

insert into match values (6, convert(date,'2024-04-01'), 'Night', 2, 'Round Robin', 2, 3) 
insert into match values (7, convert(date,'2024-04-02'), 'Day', 2, 'Round Robin', 2, 4) 
insert into match values (8, convert(date,'2024-04-03'), 'Day', 5, 'Round Robin', 5, 2) 
insert into match values (9, convert(date,'2024-04-04'), 'Night', 6, 'Round Robin', 6, 2) 

-- islamabad

insert into match values (10, convert(date,'2024-04-05'), 'Day', 3, 'Round Robin', 3, 4) 
insert into match values (11, convert(date,'2024-04-06'), 'Day', 3, 'Round Robin', 3, 5) 
insert into match values (12, convert(date,'2024-04-07'), 'Night', 6, 'Round Robin', 6, 3) 

-- peshawar

insert into match values (13, convert(date,'2024-04-08'), 'Day', 4, 'Round Robin', 4, 5) 
insert into match values (14, convert(date,'2024-04-09'), 'Night', 6, 'Round Robin', 6, 4) 

-- quetta

insert into match values (15, convert(date,'2024-04-10'), 'Night', 5, 'Round Robin', 5, 6) 

-- qualifier

insert into match values (17, convert(date,'2024-04-12'), 'Night', 4, 'Qualifier', 4, 6) 

-- eliminator

insert into match values (18, convert(date,'2024-04-13'), 'Night', 5, 'Eliminator', 5, 3) 
insert into match values (19, convert(date,'2024-04-14'), 'Night', 3, 'Eliminator', 3, 6) 

-- 3rd place

insert into match values (16, convert(date,'2024-04-11'), 'Night', 2, '3rd Place match', 5, 6) 

-- final

insert into match values (20, convert(date,'2024-04-16'), 'Night', 3, 'Final', 3, 4) 

select *
from match

-- insertion into winner

insert into winner values (1, 'Lahore Qalandars')
insert into winner values (2, 'Islamabad United')
insert into winner values (3, 'Karachi Kings')
insert into winner values (4, 'Karachi Kings')
insert into winner values (5, 'Multan Sultans')
insert into winner values (6, 'Islamabad United')
insert into winner values (7, 'Peshawar Zalmi')
insert into winner values (8, 'Quetta Gladiators')
insert into winner values (9, 'Multan Sultans')
insert into winner values (10, 'Peshawar Zalmi')
insert into winner values (11, 'Islamabad United')
insert into winner values (12, 'Multan Sultans')
insert into winner values (13, 'Peshawar Zalmi')
insert into winner values (14, 'Peshawar Zalmi')
insert into winner values (15, 'Quetta Gladiators')
insert into winner values (16, 'Multan Sultans')
insert into winner values (17, 'Peshawar Zalmi')
insert into winner values (18, 'Islamabad United')
insert into winner values (19, 'Islamabad United')
insert into winner values (20, 'Islamabad United')

select *
from winner

-- insertion into performance

insert into performance values (1, 1, 1, 50, 0, 2)
insert into performance values (2, 2, 3, 28, 4, 1)
insert into performance values (3, 3, 32, 2, 5, 1)
insert into performance values (4, 4, 25, 80, 0, 3)
insert into performance values (5, 5, 34, 40, 1, 4)
insert into performance values (6, 6, 36, 80, 3, 2)
insert into performance values (7, 7, 26, 54, 0, 1)
insert into performance values (8, 8, 31, 1, 4, 1)
insert into performance values (9, 9, 22, 120, 0, 3)
insert into performance values (10, 10, 21, 70, 0, 2)
insert into performance values (11, 11, 5, 55, 0, 4)
insert into performance values (12, 12, 6, 73, 0, 2)
insert into performance values (13, 13, 4, 4, 3, 2)
insert into performance values (14, 14, 12, 31, 3, 1)
insert into performance values (15, 15, 11, 1, 5, 1)
insert into performance values (16, 16, 39, 69, 0, 2)
insert into performance values (17, 17, 40, 5, 7, 1)
insert into performance values (18, 18, 33, 52, 2, 2)
insert into performance values (19, 19, 27, 10, 4, 1)
insert into performance values (20, 20, 9, 64, 0, 1)
insert into performance values (21, 1, 28, 20, 3, 1)
insert into performance values (22, 2, 19, 2, 5, 0)
insert into performance values (23, 3, 7, 33, 4, 1)
insert into performance values (24, 4, 13, 88, 1, 2)
insert into performance values (25, 5, 24, 49, 0, 3)
insert into performance values (26, 6, 14, 55, 1, 2)
insert into performance values (27, 7, 20, 0, 2, 0)
insert into performance values (28, 8, 8, 60, 0, 1)
insert into performance values (29, 9, 2, 3, 4, 1)
insert into performance values (30, 10, 37, 8, 3, 0)
insert into performance values (31, 11, 29, 12, 5, 0)
insert into performance values (32, 12, 15, 43, 0, 2)
insert into performance values (33, 13, 17, 58, 0, 2)
insert into performance values (34, 14, 16, 28, 0, 1)
insert into performance values (35, 15, 18, 66, 0, 4)
insert into performance values (36, 16, 23, 44, 0, 0)
insert into performance values (37, 17, 30, 3, 4, 0)
insert into performance values (38, 18, 38, 39, 3, 4)
insert into performance values (39, 19, 35, 10, 4, 1)
insert into performance values (40, 20, 10, 0, 3, 1)

select *
from performance

-- Query 1 : Create all required tables (other than the 2 already shared) in SQL and then insert at least 20 dummy data into each table.
-- Done Above 

-- Query 2 : Determine the player with the highest number of catches in the tournament.

select top (1) player.playername, performance.catches
from performance
inner join player
on performance.playerid = player.playerid
order by performance.catches desc

-- Query 3 : List all Teams with their Home Stadiums.

select team.teamname, team.homestadium
from team

-- Query 4 : Show the total capacity of a specific stadium.

select stadium.stadiumname, stadium.capacity
from stadium
where stadiumname = 'Rawalpindi Cricket Stadium'

-- Query 5 : Calculate the average runs scored by players in each team.

select team.teamname, sum (players.totalruns) as averageruns
from ( select player.teamname, avg (performance.runsscored) as totalruns
	   from player 
	   join performance
	   on player.playerid = performance.playerid
	   group by player.teamname ) players 
join team 
on players.teamname = team.teamname
group by team.teamname
order by averageruns

-- Query 6 : Count the number of matches played in a specific stadium.

select stadium.stadiumname, count (match.stadiumid) as totalmatches
from stadium 
inner join match on stadium.stadiumid= match.stadiumid
group by stadium.stadiumname
having stadium.stadiumname = 'Rawalpindi Cricket Stadium'

-- Query 7 : List players along with the total runs scored by each player in the tournament.

select player.playerid, player.playername, performance.runsscored
from player 
inner join performance 
on player.playerid=performance.playerid
order by performance.runsscored desc

-- Query 8 : Find teams with more than a certain number of wins.

select team.teamname, team.numberofwins
from team
where numberofwins > 3

-- Query 9 : Find all players who are bowlers in any team.

select player.playername, player.playerid, player.playerrole, player.teamname
from player
where playerrole = 'Bowler'

-- Query 10 : List players who scored more than 50 runs and took at least 3 wickets in a single match.

select player.playerid, player.playername, player.teamname, performance.runsscored, performance.wicketstaken
from player 
inner join performance
on player.playerid = performance.playerid
where performance.runsscored > 50 and performance.wicketstaken >= 3

-- Query 11 : Find the team with the highest number of total runs scored throughout the tournament.

select top (1) player.teamname, sum (performance.runsscored) as totalruns
from player 
join performance
on player.playerid = performance.playerid
group by teamname
order by totalruns desc

-- Query 12 : Show matches along with the winning team name.

select match.matchid, match.matchtype, match.matchdate, t1.teamname as team1, t2.teamname as team2, winner.winningteam
from match 
join team t1 
on match.teamid1 = t1.teamid 
join winner 
on match.matchid = winner.matchid 
join team t2 
on match.teamid2 = t2.teamid

-- Query 13 : List all match types without duplicates.

select distinct (match.matchtype)
from match

-- Query 14 : List stadiums and the number of matches hosted by each.

select stadium.stadiumname, count (match.stadiumid) as totalmatches
from stadium 
inner join match 
on stadium.stadiumid = match.stadiumid
group by stadium.stadiumname

-- Query 15 : Find all players in a specific team

select *
from player
where player.teamname = 'Karachi Kings'

-- Query 16 : List the top 3 players with the most runs scored in final matches.

select top (3) player.playerid, player.playername, player.teamname, performance.runsscored as finalmatchscore
from performance 
inner join player 
on performance.playerid = player.playerid
inner join match 
on performance.matchid = match.matchid 
where match.matchtype in ('Final', 'Qualifier', 'Eliminator', '3rd Place match')
order by performance.runsscored desc

-- Query 17 : Identify players who have scored more than 50 runs in winning matches.

select winner.winningteam, player.playername, player.teamname, performance.matchid, performance.runsscored
from performance
inner join winner
on performance.matchid = winner.matchid
inner join player
on player.playerid = performance.playerid and winner.winningteam = player.teamname
where performance.runsscored > 50
order by runsscored desc

-- Query 18 : Determine the top 3 players with the highest aggregate runs scored in Qualifier, Eliminator, and Final matches.

select top (3) player.playername, avg (performance.runsscored) as averageruns, match.matchtype
from performance 
inner join player 
on performance.playerid = player.playerid
inner join match 
on performance.matchid = match.matchid
group by player.playername, match.matchtype, performance.runsscored
having match.matchtype = 'Final' or match.matchtype = 'Qualifier' or match.matchtype = 'Eliminator'
order by performance.runsscored desc

-- Query 19 : For each team, calculate the average runs scored and wickets taken per match in each stadium where they have played.

select team.teamname, stadium.stadiumname, avg (performance.runsscored) as averagerunsscored, avg (performance.wicketstaken) as averagewicketstaken
from match
inner join performance
on match.matchid = performance.matchid
inner join team 
on match.teamid1 = team.teamid or match.teamid2 = team.teamid
inner join stadium
on match.stadiumid = stadium.stadiumid
group by team.teamname, stadium.stadiumname

-- Query 20 : Find the number of wins each team has achieved in their home stadium.

select team.teamname, stadium.stadiumname, count (winner.winningteam) as wins
from winner
inner join match 
on winner.matchid = match.matchid
inner join stadium
on match.stadiumid = stadium.stadiumid
inner join team
on team.homestadium = stadium.stadiumname and winner.winningteam = team.teamname
group by team.teamname, stadium.stadiumname

-- Query 21 : Calculate Current Number of Wins for Each team.

select team.teamname, team.numberofwins
from team

-- Query 22 : Identify players whose performance was pivotal in securing wins for their team.

select player.playerid, player.playername, player.teamname, winner.winningteam, performance.runsscored, performance.wicketstaken, performance.catches
from performance
join match
on performance.matchid = match.matchid
join winner
on match.matchid = winner.matchid
join player
on player.playerid = performance.playerid and player.teamname = winner.winningteam
where performance.runsscored > 50 or performance.wicketstaken > 3

-- Query 23 : Write 5 more SQL queries other than this that must each contain the following concepts and write their importance in the comments why do you think they are important and where can they be used.

--> Correlated nested queries.

select player.playername, player.teamname, performance.wicketstaken
from player, performance
where performance.wicketstaken = ( select performance.wicketstaken
								   from performance
								   where performance.wicketstaken = 7 and performance.playerid = player.playerid )
--> Union

select player.teamname
from player
union
select team.homestadium
from team

select match.matchtype, match.matchid
from match
where match.matchtype = 'Qualifier'
union
select match.matchtype, match.matchid
from match
where match.matchtype = 'Eliminator'

--> Group by

select playerrole, count (*) as totalplayers_inthisrole
from player
group by player.playerrole

select playerrole
from player

--> Substring comparison using LIKE

select player.playerid, player.playername, player.playerrole, player.teamname
from player
where playername like 'b%'

--> Having clause

select performance.wicketstaken
from performance
group by performance.wicketstaken
having performance.wicketstaken > 3 