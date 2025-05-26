
#  Cricket Tournament SQL Database

Welcome to the **Cricket Tournament Management Database**, a comprehensive SQL-based data modeling and query project built for academic and practical learning. This project simulates a professional cricket league (similar to the PSL - Pakistan Super League) using a relational database in SQL Server. It covers all aspects of managing teams, players, stadiums, matches, and performance analytics.

---

##  Table of Contents

1. [Project Overview](#project-overview)
2. [Database Schema](#database-schema)
3. [Data Insertions](#data-insertions)
4. [Query Highlights](#query-highlights)
5. [Learning Objectives](#learning-objectives)
6. [How to Run](#how-to-run)
7. [Sample Outputs](#sample-outputs)
8. [License](#license)

---

##  Project Overview

This project demonstrates the use of **relational database modeling**, **SQL DDL/DML**, and **analytical queries** using a simulated cricket league. It showcases database design principles such as normalization, foreign key relationships, and aggregation queries.

### Key Features:

* Models real-world entities: Teams, Players, Matches, Performances, Stadiums, and Winners.
* Includes 20+ analytical queries to extract insights such as:

  * Best performers
  * Venue statistics
  * Team comparisons
  * Historical match analysis

---

##  Database Schema

The database `dbassignment02` consists of the following tables:

| Table         | Description                                                   |
| ------------- | ------------------------------------------------------------- |
| `team`        | Stores team information like name, stadium, wins/losses       |
| `player`      | Holds player details including role and team                  |
| `stadium`     | Lists stadiums with location and capacity                     |
| `match`       | Contains match details such as type, date, stadium, and teams |
| `performance` | Records individual player performance stats per match         |
| `winner`      | Links match IDs to winning teams                              |

 **All foreign key relationships** are maintained to ensure referential integrity.

---

##  Data Insertions

Each table is populated with **realistic dummy data**:

* `40+ players`
* `6 teams`
* `6 stadiums`
* `20 matches (round-robin, eliminators, qualifiers, finals)`
* `40+ performance records`

These are used to simulate a full tournament lifecycle.

---

##  Query Highlights

Here are just a few examples of the analytical SQL queries included:

| Query No | Description                                            |
| -------- | ------------------------------------------------------ |
| 2        | Find player with highest catches                       |
| 5        | Calculate average runs scored by each team             |
| 10       | List players who scored 50+ runs & took 3+ wickets     |
| 11       | Team with the highest aggregate runs                   |
| 16       | Top 3 performers in finals/qualifiers                  |
| 22       | Players pivotal in match wins                          |
| 23       | Includes `UNION`, `HAVING`, `LIKE`, and nested queries |

Each query is written clearly and includes **comments explaining purpose and use cases**.

---

##  Learning Objectives

This SQL project teaches you how to:

✅ Design normalized databases with multiple relationships
✅ Use advanced `JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`, and aggregate functions
✅ Implement performance analytics across matches and players
✅ Write subqueries, correlated queries, and set operators (`UNION`)
✅ Execute stadium-specific, team-specific, and player-specific data retrieval

---

##  How to Run

To run this project locally:

1. Install **SQL Server Management Studio (SSMS)** or any SQL engine that supports T-SQL.
2. Create the database:

   ```sql
   create database dbassignment02;
   use dbassignment02;
   ```
3. Copy-paste the content from `i220907_i221241_A2.sql` into your SQL environment.
4. Run the script sequentially to create tables, insert data, and run the queries.

---

##  Sample Outputs

Examples of the types of outputs you'll generate:

* Player with most catches:

  ```text
  | playername    | catches |
  |---------------|---------|
  | Haris Rauf    | 4       |
  ```
* Average runs by team:

  ```text
  | teamname         | averageruns |
  |------------------|-------------|
  | Islamabad United | 57.3        |
  ```

---

##  Use Cases

* **Academics**: Great for learning SQL in a sports management or DBMS course.
* **Projects**: Adaptable to other sports like football or basketball.
* **Industry Practice**: Models KPI tracking, event logging, and analytics.

---

## 📄License

This project is open for **educational use** and free to adapt for learning or academic submission. For commercial use, please provide proper credit.

---

##  Contributing

Feel free to fork the repository, suggest improvements, or build a frontend on top of this backend structure using any tech stack (e.g., Python, Flask, or Node.js).


