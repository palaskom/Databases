-- Διαχειριστής βάσης δεδομένων (Database Administrator)

CREATE USER 'dbadmin'@'localhost' IDENTIFIED BY 'admin!234';
CREATE USER 'dbadmin'@'%' IDENTIFIED BY 'admin!234';
GRANT ALL PRIVILEGES ON CHESSDB.* TO 'dbadmin'@'localhost';
GRANT ALL PRIVILEGES ON CHESSDB.* TO 'dbadmin'@'%';

-- Διαχειριστής ασφάλειας (Security Administrator)

CREATE USER 'securityadmin'@'localhost' IDENTIFIED BY 'sadmin!283';
CREATE USER 'securityadmin'@'%' IDENTIFIED BY 'sadmin!283';
GRANT SELECT,GRANT OPTION ON CHESSDB.* TO 'securityadmin'@'localhost';
GRANT SELECT,GRANT OPTION ON CHESSDB.* TO 'securityadmin'@'%';


-- Μάκης Κοτσάμπασης - Προγραμματιστής τελικής εφαρμογής υπεύθυνος για
-- την ανάπτυξη frontend που αφορά τα παιχνίδια και τα τουρνουά
-- (Client Application Developer)

CREATE USER 'makis'@'localhost' IDENTIFIED BY 'piasemiampyra';
CREATE USER 'makis'@'%' IDENTIFIED BY 'piasemiampyra';
GRANT SELECT ON CHESSDB.GAME TO 'makis'@'localhost';
GRANT SELECT ON CHESSDB.GAME TO 'makis'@'%';
GRANT SELECT ON CHESSDB.GAME_TYPE TO 'makis'@'localhost';
GRANT SELECT ON CHESSDB.GAME_TYPE TO 'makis'@'%';
GRANT SELECT ON CHESSDB.MOVE TO 'makis'@'localhost';
GRANT SELECT ON CHESSDB.MOVE TO 'makis'@'%';
GRANT SELECT ON CHESSDB.OPENING TO 'makis'@'localhost';
GRANT SELECT ON CHESSDB.OPENING TO 'makis'@'%';
GRANT SELECT ON CHESSDB.TOURNAMENT TO 'makis'@'localhost';
GRANT SELECT ON CHESSDB.TOURNAMENT TO 'makis'@'%';
GRANT SELECT ON CHESSDB.PLAYER TO 'makis'@'localhost';
GRANT SELECT ON CHESSDB.PLAYER TO 'makis'@'%';
GRANT SELECT ON CHESSDB.USER TO 'makis'@'localhost';
GRANT SELECT ON CHESSDB.USER TO 'makis'@'%';
GRANT SELECT ON CHESSDB.REGISTERED_IN TO 'makis'@'localhost';
GRANT SELECT ON CHESSDB.REGISTERED_IN TO 'makis'@'%';


-- Φώτης Τσικδέμογλου - Προγραμματιστής τελικής εφαρμογής υπεύθυνος για
-- την ανάπτυξη frontend που αφορά την αναζήτηση και προβολή παικτών, προπονητών και διαιτητών
-- (Client Application Developer)

CREATE USER 'gigantas'@'localhost' IDENTIFIED BY 'mastrapas';
CREATE USER 'gigantas'@'%' IDENTIFIED BY 'mastrapas';
GRANT SELECT ON CHESSDB.USER TO 'gigantas'@'localhost';
GRANT SELECT ON CHESSDB.USER TO 'gigantas'@'%';
GRANT SELECT ON CHESSDB.PLAYER TO 'gigantas'@'localhost';
GRANT SELECT ON CHESSDB.PLAYER TO 'gigantas'@'%';
GRANT SELECT ON CHESSDB.ARBITER TO 'gigantas'@'localhost';
GRANT SELECT ON CHESSDB.ARBITER TO 'gigantas'@'%';
GRANT SELECT ON CHESSDB.INSTRUCTOR TO 'gigantas'@'localhost';
GRANT SELECT ON CHESSDB.INSTRUCTOR TO 'gigantas'@'%';
GRANT SELECT ON CHESSDB.IS_TRAINED_BY TO 'gigantas'@'localhost';
GRANT SELECT ON CHESSDB.IS_TRAINED_BY TO 'gigantas'@'%';
GRANT SELECT ON CHESSDB.SPECIALTY TO 'gigantas'@'localhost';
GRANT SELECT ON CHESSDB.SPECIALTY TO 'gigantas'@'%';
GRANT SELECT ON CHESSDB.CLUB TO 'gigantas'@'localhost';
GRANT SELECT ON CHESSDB.CLUB TO 'gigantas'@'%';
GRANT SELECT ON CHESSDB.CLASS_LEVELS TO 'gigantas'@'localhost';
GRANT SELECT ON CHESSDB.CLASS_LEVELS TO 'gigantas'@'%';


-- Υπάλληλοι για τη διαχείριση δεδομένων (Employee Users)

CREATE USER 'employee'@'localhost' IDENTIFIED BY '!employee8901';
CREATE USER 'employee'@'%' IDENTIFIED BY '!employee8901';
GRANT SELECT,UPDATE,INSERT,DELETE ON CHESSDB.* TO 'employee'@'localhost';
GRANT SELECT,UPDATE,INSERT,DELETE ON CHESSDB.* TO 'employee'@'%';


-- Τελικός χρήστης δωρεάν εφαρμογής: στο δωρεάν πλάνο των εφαρμογών
-- υπάρχει περιορισμένη πρόσβαση σε δεδομένα της βάσης
-- (End Users without subscription)

CREATE USER 'free_user'@'localhost' IDENTIFIED BY 'u87p0921!';
CREATE USER 'free_user'@'%' IDENTIFIED BY 'u87p0921!';
GRANT SELECT ON CHESSDB.USER TO 'free_user'@'localhost';
GRANT SELECT ON CHESSDB.USER TO 'free_user'@'%';
GRANT SELECT ON CHESSDB.PLAYER TO 'free_user'@'localhost';
GRANT SELECT ON CHESSDB.PLAYER TO 'free_user'@'%';
GRANT SELECT ON CHESSDB.TOURNAMENT TO 'free_user'@'localhost';
GRANT SELECT ON CHESSDB.TOURNAMENT TO 'free_user'@'%';
GRANT SELECT ON CHESSDB.REGISTERED_IN TO 'free_user'@'localhost';
GRANT SELECT ON CHESSDB.REGISTERED_IN TO 'free_user'@'%';
GRANT SELECT ON CHESSDB.OPENING TO 'free_user'@'localhost';
GRANT SELECT ON CHESSDB.OPENING TO 'free_user'@'%';


-- Τελικός χρήστης εφαρμογής επί πληρωμή: πλήρης πρόσβαση
-- ανάγνωσης σε όλα τα δεδομένα
-- (End Users with subscription)

CREATE USER 'premium_user'@'localhost' IDENTIFIED BY '7197!8987aa!';
CREATE USER 'premium_user'@'%' IDENTIFIED BY '7197!8987aa!!';
GRANT SELECT ON CHESSDB.* TO 'premium_user'@'localhost';
GRANT SELECT ON CHESSDB.* TO 'premium_user'@'%';