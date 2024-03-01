SELECT "name", membercost
FROM cd.facilities;

SELECT * FROM cd.facilities
WHERE membercost > 0;

SELECT facid, "name", membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < (monthlymaintenance/50 );

SELECT * FROM cd.facilities
WHERE "name" LIKE '%Tennis%';

SELECT * FROM cd.facilities
WHERE facid IN (1,5);

SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate >= '2012-09-01';

SELECT DISTINCT(surname) from cd.members
WHERE surname != 'GUEST'
ORDER BY surname ASC
LIMIT 10;

SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

SELECT COUNT(guestcost) FROM cd.facilities
WHERE guestcost >= 10;

SELECT facid, SUM(slots) AS "Total booked: September 2012"
FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY (facid)
ORDER BY (SUM(slots));

SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) >= 1000
ORDER BY facid;

SELECT cd.bookings.starttime, cd.facilities.name FROM cd.bookings
JOIN cd.facilities 
ON cd.bookings.facid = cd.facilities.facid
WHERE cd.facilities.name LIKE 'Tennis%'
AND cd.bookings.starttime > '2012-09-21'
AND cd.bookings.starttime < '2012-09-22';

SELECT cd.bookings.starttime, cd.members.firstname, cd.members.surname FROM cd.bookings
JOIN cd.members 
ON cd.bookings.memid = cd.members.memid
WHERE cd.members.firstname = 'David'
AND cd.members.surname = 'Farrell';
