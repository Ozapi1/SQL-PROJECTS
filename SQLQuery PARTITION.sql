SELECT FirstName,LastName,Gender,Salary
,COUNT (Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM EmployeeDemographiczs
JOIN EmployeeSalary
 ON EmployeeDemographiczs.EmployeeID=EmployeeSalary.EmployeeID


 SELECT FirstName,LastName,Gender,Salary,COUNT (Gender)
FROM EmployeeDemographiczs
JOIN EmployeeSalary
 ON EmployeeDemographiczs.EmployeeID=EmployeeSalary.EmployeeID
 GROUP BY FirstName,LastName,Gender,Salary