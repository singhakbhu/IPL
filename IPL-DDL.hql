-------------------------------------------------------------------------
CREATED 2 TABLES FOR matches.csv and deliveries.csv file for IPL dataset. 
-------------------------------------------------------------------------

MATCHS.CSV
----------
CREATE EXTERNAL TABLE matches( 
id INT,
season STRING,
city STRING,
date DATE,
team1 STRING,
team2 STRING,
toss_winner STRING,
toss_decision STRING,
result STRING,
dl_applied INT,
winner STRING,
win_by_runs INT,
win_by_wickets INT,
player_of_match STRING,
venue STRING,
umpire1 STRING,
umpire2 STRING,
umpire3 STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/cloudera/ashish/IPL/matches';






DELIVERIES.CSV
--------------
CREATE EXTERNAL TABLE deliveries( 
match_id INT,
inning INT,
batting_team STRING,
bowling_team STRING,
overs INT,
balls INT,
batsman STRING,
non_striker STRING,
bowler STRING,
is_super_over INT,
wide_runs INT,
bye_runs INT,
legbye_runs INT,
noball_runs INT,
penalty_runs INT,
batsman_runs INT,
extra_runs INT,
total_runs INT,
player_dismissed STRING,
dismissal_kind STRING,
fielder STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/cloudera/ashish/IPL/deliveries';