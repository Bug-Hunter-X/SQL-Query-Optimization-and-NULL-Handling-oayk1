# SQL Query Optimization and NULL Handling

This repository demonstrates a common SQL query performance issue caused by a non-sargable `WHERE` clause and inefficient `SELECT *`. It also highlights potential issues with `NULL` values.

The `bug.sql` file contains the original problematic query. The `bugSolution.sql` file provides an optimized solution.

## Bug
The original query suffers from the following:

* **Non-sargable condition:** The combined `WHERE` clause prevents the use of indexes on the `salary` column, forcing a full table scan.
* **Inefficient `SELECT *`:** Selecting all columns is inefficient and unnecessary. It's better to specify the required columns.
* **Potential `NULL` value issue:** The `salary > 100000` condition excludes rows where `salary` is `NULL`, potentially leading to incorrect results.

## Solution
The solution addresses these problems by:

* **Rewriting the `WHERE` clause:** This allows the use of index for `department_id` and `salary`.
* **Selecting only necessary columns:** This improves performance by reducing data transfer.
* **Handling `NULL` values explicitly (if needed):** Modifying the condition to handle NULL values correctly.
