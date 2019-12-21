# All GM players' games

select game.date, tournament.name, variant, code,
       white_player.title, white_player.first_name, white_player.last_name, white_player.rating, result,
       black_player.title, black_player.first_name, black_player.last_name, black_player.rating
from game
	inner join players white_player on game.fk_white_player = white_player.userid
    inner join players black_player on game.fk_black_player = black_player.userid
    inner join game_type on game.fk_game_type = game_type.typeid
    inner join opening on game.fk_opening = opening.openingid
    inner join tournament on game.fk_tournament = tournament.tournamentid
where white_player.title = 'GM' and black_player.title = 'GM'
order by game.date