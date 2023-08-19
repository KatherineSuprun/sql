CREATE TABLE IF NOT EXISTS "public".homework (
        id serial NOT NULL PRIMARY KEY,
        username TEXT NOT NULL,
        description text NOT NULL
);

INSERT INTO "public".homework (id, username, description) values
      ( default, 'hw1' , 'homework1' ),
      ( default, 'hw2' , 'homework2' );

CREATE TABLE IF NOT EXISTS "public".lesson (
        id serial NOT NULL PRIMARY KEY,
        username text NOT NULL UNIQUE,
        updated_At text NOT NULL,
        homework_id int NOT NULL,
        FOREIGN KEY (homework_id) REFERENCES "public".homework (id)
);

INSERT INTO "public".lesson (id, username, updated_At, homework_id) values
       (default, 'lesson1', 'classwork1', 1),
       (default, 'lesson2', 'classwork2', 1);

CREATE TABLE IF NOT EXISTS "public".schedule (
        id serial NOT NULL PRIMARY KEY,
        username text NOT NULL,
        updated_At text NOT NULL,
        lesson int NOT NULL,
        FOREIGN KEY (username) REFERENCES "public".lesson (username),
        FOREIGN KEY (lesson) REFERENCES "public".lesson (id)
);

INSERT INTO "public".schedule (id, username, updated_At, lesson) values
       (default, 'lesson2', 'classwork3', 2),
       (default, 'lesson2', 'classwork2', 2);
        FOREIGN KEY (username) REFERENCES "public".lesson (username),
        FOREIGN KEY (lesson) REFERENCES "public".lesson (id)
);