```sql
SELECT employee_id, first_name, last_name, salary, department_id FROM employees WHERE department_id = 10 AND salary > 100000;
--Alternative handling of NULL values (if needed):
--SELECT employee_id, first_name, last_name, salary, department_id FROM employees WHERE department_id = 10 AND (salary > 100000 OR salary IS NULL);
```
This revised query addresses the issues:

* It only selects necessary columns, improving efficiency.
* The WHERE clause is modified, potentially allowing the use of indexes for faster execution.
* The commented-out line demonstrates how to handle `NULL` values if required, including them in the results.