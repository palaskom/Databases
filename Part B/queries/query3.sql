# Players registered in a tournament in descending order of rating 
# Note: A tournament takes part once a year and thereby constitutes a superkey along with the tournament date
# Normally, the ID of the tournament would be used in the where condition of the query, but we
# decided to display an alternative approach, which also uses the name_date_compound index on tournament

select players.country, players.first_name, players.last_name, rating
from players
	join registered_in on players.userid = registered_in.fk_playerid
    join tournament on tournament.tournamentid = registered_in.fk_tournamentid
where tournament.name = 'Linares' and date between '1999-01-01' and '1999-12-31'
order by rating desc