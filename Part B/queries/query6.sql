# total points a player has gathered in a specific tournament compared  
# to the total available points he/she could potentially gather

set @player = 1;
set @tournament = 88;

select (select count(*) from GAME where fk_tournament=@tournament and (result='1-0' and fk_white_player=@player) or (result='0-1' and fk_black_player=@player)) +
	(select 0.5*count(*) from GAME where fk_tournament=@tournament and result='1/2-1/2' and (fk_white_player=@player or fk_black_player=@player)) as points,
	(select count(*) from GAME where fk_tournament=@tournament and (fk_white_player=@player or fk_black_player=@player)) as available_points