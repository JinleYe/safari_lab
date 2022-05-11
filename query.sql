--The names of the animals in a given enclosure

SELECT name, enclosure_id FROM animals WHERE enclosure_id=1;

--The names of the staff working in a given enclosure

SELECT staffs.name, enclosures.id FROM staffs INNER JOIN assignments ON assignments.employeeid=staffs.id
INNER JOIN enclosures ON enclosures.id=assignments.enclosureid 
WHERE enclosures.id=1;

--The names of staff working in enclosures which are closed for maintenance

SELECT staffs.name, enclosures.id FROM staffs INNER JOIN assignments ON assignments.employeeid=staffs.id
INNER JOIN enclosures ON enclosures.id=assignments.enclosureid 
WHERE enclosures.closedForMaintenance=true;

--The name of the enclosure where the oldest animal lives. If there are two animals who are the same age choose the first one alphabetically.

SELECT enclosures.name, animals.age FROM animals INNER JOIN enclosures ON animals.enclosure_id=enclosures.id
WHERE animals.age=(SELECT MAX(animals.age) FROM animals);

--The number of different animal types a given keeper has been assigned to work with.
-- given keeper's id = 1
SELECT COUNT(animals.type) FROM animals INNER JOIN enclosures
ON animals.enclosure_id = enclosures.id 
INNER JOIN assignments ON assignments.enclosureId = enclosures.id
WHERE assignments.employeeId = 1;

--The number of different keepers who have been assigned to work in a given enclosure
SELECT COUNT(*) FROM staffs INNER JOIN assignments ON assignments.employeeid=staffs.id
INNER JOIN enclosures ON enclosures.id=assignments.enclosureid 
WHERE enclosures.id = 1;

--The names of the other animals sharing an enclosure with a given animal (eg. find the names of all the animals sharing the big cat field with Tony)
SELECT animals.name FROM animals
WHERE animals.enclosure_id = (SELECT enclosure_id FROM animals WHERE animals.name = 'Tony');