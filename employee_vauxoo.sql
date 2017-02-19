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
    deapartment INT         REFERENCES employee_department(id) NOT NULL
);

CREATE TABLE employee_hobby (
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

