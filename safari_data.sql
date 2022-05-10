DROP TABLE assignments;
DROP TABLE staffs;
DROP TABLE animals;
DROP TABLE enclosures;

CREATE TABLE enclosures(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance BOOLEAN DEFAULT false
);

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)
);

CREATE TABLE staffs(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY,
    day VARCHAR(20),
    employeeId INT REFERENCES staffs(id),
    enclosureId INT REFERENCES enclosures(id)
);


INSERT INTO enclosures(name, capacity) VALUES ('big cat field', 20);
INSERT INTO enclosures(name, capacity) VALUES ('snake container', 15);
INSERT INTO enclosures(name, capacity) VALUES ('fish cantainer', 30);
INSERT INTO enclosures(name, capacity,closedForMaintenance) VALUES ('monkey field', 27,true);


INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 59, 1);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Richard', 'Lion', 10, 1);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('John', 'Python', 4, 2);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Jim', 'Boa', 3, 2);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Amy', 'Shark', 20, 3);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Jake', 'Dolphin', 40, 3);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Tom', 'Gorilla', 18, 4);
INSERT INTO animals(name, type, age, enclosure_id) VALUES ('Kate', 'Chimpanzee', 15, 4);

INSERT INTO staffs(name, employeeNumber) VALUES ('Captain Rik', 12345);
INSERT INTO staffs(name, employeeNumber) VALUES ('Director Joe', 12346);
INSERT INTO staffs(name, employeeNumber) VALUES ('Trainer Anna', 12347);
INSERT INTO staffs(name, employeeNumber) VALUES ('Trainer Richard', 12348);
INSERT INTO staffs(name, employeeNumber) VALUES ('Trainer Colin', 12349);

INSERT INTO assignments(employeeId, enclosureId, day) VALUES(1, 1, 'Tuesday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(2, 1, 'Monday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(3, 1, 'Wednesday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(4, 1, 'Thursday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(5, 1, 'Friday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(1, 2, 'Monday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(2, 2, 'Tuesday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(4, 2, 'Wednesday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(5, 2, 'Thursday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(3, 2, 'Friday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(4, 3, 'Monday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(5, 3, 'Monday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(3, 3, 'Tuesday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(3, 4, 'Monday');
INSERT INTO assignments(employeeId, enclosureId, day) VALUES(4, 4, 'Tuesday');



SELECT * FROM animals;







