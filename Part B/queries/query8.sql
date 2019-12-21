# Moves of a spicific game 

select move_number as No, white_move, black_move 
from move
where fk_gameid = 2389
order by move_number