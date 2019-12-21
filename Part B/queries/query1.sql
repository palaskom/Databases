# Current instructors of a specific chess player 

select title, players.first_name as player_first_name, players.last_name as player_last_name, rating, 
       instructors.first_name as instructor_first_name, instructors.last_name as instructor_last_name, is_trained_by.from as since
from players 
	join is_trained_by on players.userid = is_trained_by.fk_playerid
    join instructors on instructors.userid = is_trained_by.fk_instructorid
where players.userid = 1 and is_trained_by.to is null