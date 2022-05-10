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