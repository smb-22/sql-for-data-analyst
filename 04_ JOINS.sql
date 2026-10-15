CREATE TABLE Dept (
    Deptid INT PRIMARY KEY,
    Deptname VARCHAR(50),
    location VARCHAR(50)
);
INSERT INTO Dept (Deptid, Deptname, location)
VALUES
(101, 'IT', 'Bangalore'),
(102, 'HR', 'Hyderabad'),
(103, 'Finance', 'Chennai'),
(104, 'Marketing', 'Mumbai'),
(105, 'Operations', 'Pune');

select *from Dept

CREATE TABLE Employees (
    Empid INT PRIMARY KEY,
    Empname VARCHAR(50),
    salary DECIMAL(10, 2),
    Deptid INT,
    manager_id INT,
    FOREIGN KEY (Deptid) REFERENCES Dept(Deptid)
    );

INSERT INTO Employees
(Empid, Empname, salary, Deptid, manager_id)
VALUES
(1, 'Rahul', 60000, 101, NULL),
(2, 'Priya', 55000, 102, 1),
(3, 'Arjun', 70000, 101, 1),
(4, 'Sneha', 45000, 103, 2),
(5, 'Kiran', 50000, 104, 1),
(6, 'Divya', 65000, NULL, 2),
(7, 'Vijay', 40000, 102, 1),
(8, 'Ananya', 75000, 103, 2);

select *from Employees


select *from Employees
select *from Dept
---->INNER JOIN
select e.Empname, d.Deptname, d.Deptid, d.location
from Employees e
INNER JOIN Dept d
ON e.Deptid= d.Deptid

----> LEFT JOIN
select e.Empid, e.Empname, d.Deptname, d.Deptid, d.location
from Employees e
LEFT JOIN Dept d
ON e.Deptid= d.Deptid

---> RIGHT JOIN
select e.Empid, e.Empname, d.Deptname, d.Deptid, d.location
from Employees e
RIGHT JOIN Dept d
ON e.Deptid= d.Deptid

---> FULL JOIN
select e.Empid, e.Empname, d.Deptname, d.Deptid, d.location
from Employees e
FULL OUTER JOIN Dept d
ON e.Deptid= d.Deptid


--> Total Employees per department (pn;y age> 30) and sorted by count( decscding)

SELECT D.Deptname, COUNT(E.Empid) AS TotalEmployeesover30
FROM Employees E 
INNER JOIN Dept D
ON E.Deptid = D.Deptid
WHERE E.salary > 50000
GROUP BY D.Deptname
ORDER BY TotalEmployeesover30 DESC


--->Questions

create table #temp_employee2 (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

Select * From #temp_employee2

Insert into #temp_employee2 values (
'1001', 'HR', '45000'
)



Select * From #temp_employee2

Insert into #temp_employee2 
SELECT * From SQLTutorial..EmployeeSalary

