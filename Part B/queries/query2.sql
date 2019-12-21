# Instructors who specialize in "Tactics" 

select first_name, last_name, country, hourly_salary
from instructors join specialty on userid = fk_instructorid
where specialty = 'Tactics'