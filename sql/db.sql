CREATE TABLE IF NOT EXISTS projects (
 id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
 name text NOT NULL CHECK (name <> ''),
 priority integer NOT NULL,
 description text,
 deliverydate date NOT NULL

);

CREATE TABLE IF NOT EXISTS tasks (
 id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
 name text NOT NULL CHECK (name <> ''),
 done BOOLEAN,
 projectId INTEGER REFERENCES projects(id)

);

INSERT INTO projects(name, priority,description,deliverydate)
  VALUES('Make a Web App',1, 'using Javascript', '2021-02-01');

INSERT INTO projects(name, priority,description,deliverydate)
  VALUES('Make a App',2, 'using C++', '2021-02-04');

INSERT INTO projects(name, priority,description,deliverydate)
  VALUES('Make a desktop App',1, 'using python', '2021-02-05');

INSERT INTO tasks(name,done, projectId)
VALUES('donwload vuejs',false,1);
INSERT INTO tasks(name,done, projectId)
VALUES('create UI WEB',false,2);
INSERT INTO tasks(name,done, projectId)
VALUES('design UI',false,2);