# displays the top 3 players of a specific tournament based on points gathered during the whole duration of the tournament

set @tournament = 88;

drop table if exists players_of_tournament_with_points;
create temporary table players_of_tournament_with_points as 
	select distinct fk_playerid as playerid,
	(select count(*) from GAME where fk_tournament=@tournament and (result='1-0' and fk_white_player=fk_playerid) or (result='0-1' and fk_black_player=fk_playerid)) +
		(select 0.5*count(*) from GAME where fk_tournament=@tournament and result='1/2-1/2' and (fk_white_player=fk_playerid or fk_black_player=fk_playerid)) as points
        
    from registered_in where fk_tournamentid=@tournament order by points desc limit 3;


select first_name, last_name, country, rating, title, points from players_of_tournament_with_points join players on playerid=userid;
