-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

/* sql1 */
CREATE TABLE employee_department (
    PRIMARY KEY (id),
    id          SERIAL,
    name        VARCHAR(50) NOT NULL,
    description TEXT        NOT NULL
);

CREATE TABLE employee (
    PRIMARY KEY (id),
    id          SERIAL,
    first_name  VARCHAR(30) NOT NULL,
    last_name   VARCHAR(30) NOT NULL,
    department  INT         REFERENCES employee_department(id) NOT NULL
);

/* sql2 */
CREATE TABLE employee_hobby (
    PRIMARY KEY (id),
    id          SERIAL,
    name        VARCHAR(50) NOT NULL,
    description TEXT        NOT NULL
);

/* Catalogue employee employee_hobby */
CREATE TABLE employee_hobby_employee (
	PRIMARY KEY (id_employee, id_hobby),
    id_employee INT REFERENCES employee (id)       NOT NULL,
    id_hobby    INT REFERENCES employee_hobby (id) NOT NULL
);

/* Inserts employee_department */
INSERT INTO employee_department (name, description)
VALUES ('Design', 'Department in charge to do all the visual work for the client and the company'),
       ('Accounting', 'Department responsible for analysis expense and financial income for decision making'),
       ('Human Resources', 'Department in a company that deals with employing and training people'),
       ('Production', 'The process of making goods or materials or growing food, especially large quantities'),
       ('Distribution', 'The activity of making a product available to customers'),
       ('Marketing', 'The activity of presenting, advertising and selling a company’s products in the best possible way');

/* Inserts employee */
INSERT INTO employee (first_name, last_name, department)
VALUES ('Juan', 'Camacho', 1),
       ('Mike',	'Wazowzki', 3),
       ('Noam', 'Chomsky', 5),
       ('Bugs', 'Bunny', 2);

/* Inserts employee_hobby */
INSERT INTO employee_hobby (name, description)
VALUES ('Video Games', 'Spend time playing video games and become expert of each one of them'),
       ('Sports', 'Spend time seeing or doing some kind of sport'),
       ('Cook', 'You try to cook something delicious for everyone or just for yourself');

/* Inserts employee_hobby_employee */
INSERT INTO employee_hobby_employee (id_employee, id_hobby)
VALUES (1, 2), -- Juan Camacho
       (1, 3), 
       (2, 1), -- Mike Wazowzki
       (2, 3),
       (3, 2), -- Noam Chomsky
       (3, 3),
       (4, 1), -- Bugs Bunny
       (4, 2);

