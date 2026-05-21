---
marp: true
paginate: true
footer: |
    <center>Database Management Systems | Week-2</center>
---

<style scoped>
    h1 {
        text-align: center;
        font-size: 70px
    }
</style>

<style>
/* Add "Page" prefix and total page number */
section::after {
  content: 'Page ' attr(data-marpit-pagination) ' / ' attr(data-marpit-pagination-total);
  font-weight: bold;
  padding: 1px;
  color: black;
  background-color: aliceblue;
}

section {
  width: 1280px;
  height: 720px;
  background-color: #fff;
  color: #333;
}

footer {
    background-color: #fff;
    color: #333;
    width: 1280px;
    height: 35px;
    font-weight: bold;
    font-size: 25px;
    background-color: aliceblue;
    padding: 1px;
}
</style>

# DBMS WEEK-2

---

# Relational Operators

- $\sigma$ - Select
- $\pi$ - Project (removes duplicate)
- $\neg$ - Negation (not)
- $\land$ - AND
- $\lor$ - OR
- $\cup$ - Union
- $\cap$ - Intersection
- $\times$ - Cartestion Product
- $-$ - Set Difference
- $⋈$ - Natural Join

---

# Domain Types

- `char(n)` - fixed n length of characters 
- `varchar(n)` - characters varies from 0 to n(inclusive)
- `numeric(p,d)` - d digits to the right of decimal point and p digits to left of decimal point
  - **Example** - `numeric(4, 2)` - 44.22
- `int` - Interger value

---

# DDL (Data Definition Language)

- A language which is used design the schema of the database and also able modifies it.

- **Example**
  - `CREATE`
  - `DROP`
  - `ALTER`

---

# CREATE a Table

```sql
CREATE TABLE student (
    roll_no varchar(5),
    name varchar(8),
    level varchar(8),
    course varchar(8),
    term varchar(4),
    grade varchar(2),
    primary key (roll_no)
)
```

### DROP
```sql
DROP TABLE student
```
---

# DML (Data Manipulation Language)

- The SQL commands that deal with the manipulation of data present in the database

- **Example**
  - `INSERT`
  - `UPDATE`
  - `DELETE`

---


### INSERT
```sql
INSERT into student values ("26f1001234", 'Pravin', 'Degree', 'DBMS', '27t1', 'S')
```

```sql
INSERT into student (roll_no, name, level, course, term, grade) 
values ("26f1001234", 'Pravin', 'Degree', 'DBMS', '27t1', 'S')
```

### UPDATE

```sql
UPDATE student 
SET grade='A'
WHERE roll_no="26f1001234"
```

### DELETE
```sql
DELETE from student WHERE roll_no="26f1001234"
```


---

# Basic SQL Queries

```sql
SELECT <attributes>
FROM <tables>
WHERE <condtion>
```
<br>


- **Example**

```sql
SELECT dept_name
FROM instructor
WHERE dept_name='Biology'
```

--- 

# SELECT Clause

- `DISTINT` - Selects all the distinct values
- `*` - Selects all the attributes
- `as` - Renames the attribute
- `TOP <n>` - selects top n tuples

<br>

- **Example**

```sql
SELECT DISTINCT(name) as Instructor_Name
FROM instructor
WHERE dept_name='Biology'
```

---

# FROM Clause

``` sql
SELECT *
FROM instructor, course
```

- The above query basically performs a **cross-join** between the instructor and course table.

---

# WHERE Clause

<br>

```sql
SELECT *
FROM instructor as i, course as c
WHERE i.course_id=c.course_id and i.dept_name='Biology' and salary>40000
```

---

# String Operations

- `LIKE` - Uses the pattern that are described in like condition and matches with the attribute
- `%` - matches any substring
- `_` - matches any character

<br>

- **Example**

```sql
select name
from instructor
where name like '%dar%'
```


---

# LIKE (Continued)

- `'Intro%'` matches any string beginning with "Intro"
- `'%Comp%'` matches any string containing "Comp" as a substring
- `'%Science'` - matches any string ending with "Science"
-  `'_ _ _'` matches any string of exactly three characters
- `'_ _ _%'` matches any string of at least three characters

---

# WHERE Clause Predicates

##### `BETWEEN a and b`

```sql
select name
from instructor
where salary between 90000 and 100000
```

- Select the name of the instructor whose salaries between 90000 and 100000 (both are inclusive)

---

# WHERE Clause Predicates 

##### `IN`

- Acts like shorthand operator for `OR`

```sql
select name
from instructor
where dept_name in ('Comp Sci', 'Biology')
```

- Select the name of the instructor who are in department Computer Science and Biology

---

# Set Operations

- `UNION` and `UNION ALL`
- `INTERSECT` and `INTERSECT ALL`
- `EXCEPT` and `EXCEPT ALL`

<br>

**Note**
-  `UNION ALL`, `INTERSECT ALL` and `EXCEPT ALL` retains the duplicate

---

# Aggregate functions

- **avg** - Average value
- **min** - Minimum value
- **max** - Maximum value
- **sum** - Sum of all value
- **count** - Count of all value

---

# Examples of Aggregate functions

<br>

```sql
select avg(salary)
from instructor
where dept_name = 'Comp. Sci';
```

<br>

```sql
select count(distinct ID)
from teaches
where semester = 'Spring' and year = 2010;
```

--- 

## Group By

```sql
SELECT dept_name, avg(salary)
from instructor
group by dept_name
```

## Having 

```sql
select dept_name, avg(salary)
from instructor
group by dept_name
having avg(salary) > 42000;
```

**Note** - the Order of SQL queries

**SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY**