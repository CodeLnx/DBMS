1)

2)
SELECT E.Name, P.Pname, E.Salary, E.Salary * 1.1 AS NewSalary
FROM Employee E 
JOIN Works_on W ON E.SSN = W.SSN 
JOIN Project P ON W.Pno = P.Pno 
WHERE P.Pname = 'IOT';

