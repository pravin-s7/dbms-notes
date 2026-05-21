---
marp: true
paginate: true
footer: |
    <center>Database Management Systems | Week-1</center>
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

# DBMS WEEK-1

---

# What is Data?

#### **Data** 
- Data is a any piece of information 

#### **Record**
- It is a collection of related data items about one entity

#### **File** 
- File is a collection of records

---

# What is DBMS?

#### **Database**
- A database is an collection of data that can be easily accessed, managed, and updated.

#### **DBMS**
- A DBMS is software that manages databases by providing ways to **store, retrieve, update, ensure security and consistency**

##### **Example:**
- **Relational:** MySQL, PostgreSQL.
- **NoSQL:** MongoDB, Cassandra.

---

# Advantages of DBMS

<br>

- Handles huge data
- Scalability
- Executes in milliseconds(ms)
- Data Persistence and Robustness
- Security

---

# Levels of Abstraction

- Data abstraction hides internal details and shows only necessary information to the user


1. **Physical level** - describes how it used store the data 

2. **Logical level** - describes data stored in database, and the relationships among the data fields

3. **View level** - describes how user sees the data (can hide some information)

---

# Schema

- **Physical Schema** - the overall physical structure of the database

- **Logical Schema** - the overall logical structure of the database

---

# Data Independence

- **Physical Data Independence** - changes in physical schema do not affect logical and view level.

- **Logical Data Independence** - changes in logical schema do not affect the view level.

---

# Database Design

- **Physical Design** - Deciding on the physical layout of the database

- **Logical Design** - Deciding on the database schema and database design requires that we find a good collection of relation schema


---

# Overview of Query Processing

<img src="query_processing.png" width=1200px height=450px>

---

### **Parser and Translator**

- Translate the query into its internal form. This is then translated into relational algebra.


### **Optimization**

- Optimizes the query and finds the best query based on the statistics available, it will choose the least cost

### **Evaluation**

- The query-execution engine takes a query-evaluation plan, executes that plan, and returns the answers to the query