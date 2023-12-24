1)
SELECT DISTINCT P.Pno FROM 
Project P 
JOIN Works_on W ON P.Pno = W.Pno 
JOIN Employee E ON W.SSN = E.SSN 
WHERE E.Name LIKE '%Scott';

2)
SELECT E.Name, P.Pname, E.Salary, E.Salary * 1.1 AS NewSalary
FROM Employee E 
JOIN Works_on W ON E.SSN = W.SSN 
JOIN Project P ON W.Pno = P.Pno 
WHERE P.Pname = 'IOT';

3)
SELECT SUM(E.Salary) AS TotalSalaries, MAX(E.Salary) AS MaxSalary,MIN(E.Salary) AS MinSalary,AVG(E.Salary) AS AvgSalary 
FROM Employee E 
join Department D on E.Dno=D.Dno  
WHERE Dname = 'Accounts';

4)


