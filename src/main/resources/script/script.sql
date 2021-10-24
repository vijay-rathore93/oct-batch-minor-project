CREATE TABLE employeetbl
             (
                          emp_id     INTEGER NOT NULL auto_increment,
                          age        INTEGER,
                          contact    BIGINT,
                          department VARCHAR(255),
                          email      VARCHAR(255),
                          name       VARCHAR(255),
                          salary DOUBLE PRECISION,
                          PRIMARY KEY (emp_id)
             ) ;
             
             
             
             /* insert org.application.entity.Employee */
INSERT INTO employeetbl
            (age,
             contact,
             department,
             email,
             name,
             salary)
VALUES      (?,
             ?,
             ?,
             ?,
             ?,
             ?) ;
             
SELECT employee0_.emp_id     AS emp_id1_0_,
       employee0_.age        AS age2_0_,
       employee0_.contact    AS contact3_0_,
       employee0_.department AS departme4_0_,
       employee0_.email      AS email5_0_,
       employee0_.name       AS name6_0_,
       employee0_.salary     AS salary7_0_
FROM   employeetbl employee0_ ;


SELECT employee0_.emp_id     AS emp_id1_0_0_,
       employee0_.age        AS age2_0_0_,
       employee0_.contact    AS contact3_0_0_,
       employee0_.department AS departme4_0_0_,
       employee0_.email      AS email5_0_0_,
       employee0_.name       AS name6_0_0_,
       employee0_.salary     AS salary7_0_0_
FROM   employeetbl employee0_
WHERE  employee0_.emp_id =? ;


/* delete org.application.entity.Employee */ 
DELETE FROM employeetbl
WHERE  emp_id =? ;


/* update org.application.entity.Employee */ 
UPDATE employeetbl
SET    age = ?,
       contact = ?,
       department = ?,
       email = ?,
       NAME = ?,
       salary = ?
WHERE  emp_id = ? ;




















