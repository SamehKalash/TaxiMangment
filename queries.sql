use taxi;

---------------------------------------------
-- Queries
---------------------------------------------

INSERT INTO TAXI VALUES(21,'KA-19R-8217','Mercedes G500','2024-04-01','SUV','Available',5);

DELETE FROM TAXI 
WHERE Taxi_id = 6;

UPDATE TAXI SET Status = 'Unavailable' WHERE Taxi_id = 1;

SELECT * FROM TAXI;

SELECT COUNT(*) AS TotalTrips FROM TRIP_DETAILS;

SELECT AVG(Trip_amt) AS AverageTripAmount FROM TRIP_DETAILS;

SELECT TRIP_DETAILS.Trip_id, TRIP_DETAILS.Trip_date, TRIP_DETAILS.Trip_amt, DRIVER.F_name AS "Driver First Name", DRIVER.L_name AS "Driver Last Name"
FROM TRIP_DETAILS
INNER JOIN DRIVER ON TRIP_DETAILS.Driver_id = DRIVER.Driver_id;

SELECT TRIP_DETAILS.Trip_id, TRIP_DETAILS.Trip_date, TRIP_DETAILS.Trip_amt, USER_TBL.F_name AS "Client  First Name", USER_TBL.L_name AS "Client Last Name"
FROM TRIP_DETAILS
INNER JOIN USER_TBL ON TRIP_DETAILS.Usr_id = USER_TBL.Usr_id;
