```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query may seem correct at first glance but it has a potential performance issue, especially on a large table. The condition `salary > 100000` cannot use an index on the `salary` column, if one exists, because of the `AND` condition that is non-sargable. This will force a full table scan instead of using an index to search for rows.

Another potential issue is the use of `SELECT *`. Selecting all columns can be slow, especially on wide tables. It's more efficient to select only the necessary columns.

Incorrect handling of NULL values could be another issue if the `salary` column permits null values.  The comparison `salary > 100000` will treat `NULL` values as neither greater nor less than 100000; they would be excluded from results. If you intend to include employees with `NULL` salaries, you'd need to adjust the condition accordingly.