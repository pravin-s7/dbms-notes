/*
1. Find the team_name of each players
*/

select p.name as player_name, t.name as team_name
from players p, teams t
where p.team_id=t.team_id

/*
2. Find all the match date that were hosted 
by the team 'Rainbow'
*/

select match_date
from matches m, teams t
where m.host_team_id=t.team_id and 
m.host_team_id = (select team_id
                  from teams
                  where name='Rainbow')

