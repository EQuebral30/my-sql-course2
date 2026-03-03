/*
The Chinook database contains details of an online music store.
Here are some example answers to the question
*/

-- List all customers
select 
    * 
from 
    Customer c 

-- List all customers. Show only the CustomerId, FirstName and LastName columns
SELECT
    c.CustomerId
    ,c.FirstName
    ,c.LastName
FROM
    Customer c

-- List customers in the United Kingdom
SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country
FROM
    Customer c
WHERE 
    c.Country = 'United Kingdom'

-- List customers whose first names begins with an A.
SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country
FROM
    Customer c
WHERE 
    c.FirstName LIKE 'A%'
-- Hint: use LIKE and the % wildcard

-- List Customers with an apple email address

SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country,
    c.Email
FROM
    Customer c
WHERE 
    c.Email LIKE '%@APPLE%'

-- Which customers have the initials LK?
SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country,
    c.Email
FROM
    Customer c
WHERE 
    c.FirstName Like 'L%' AND c.LastName like 'K%'

-- Which are the corporate customers i.e. those with a value, not NULL, in the Company column?
Select * From Customer Where Company IS NOT NULL

-- How many customers are in each country.  Order by the most popular country first.
SELECT
    c.Country,
    COUNT(*) As Number_customer
FROM
    Customer c
GROUP BY
    c.Country
ORDER BY
    Number_customer DESC

-- When was the oldest employee born?  Who is that?
SELECT TOP 1
    e.Birthdate
FROM
    Employee e
ORDER BY
    e.BirthDate

SELECT MIN(e.BirthDate) FROM Employee e

-- List the 10 latest invoices. Include the InvoiceId, InvoiceDate and Total
SELECT TOP 10
    i.InvoiceId,
    i.InvoiceDate,
    i.Total,
    c.FirstName,
    c.LastName,
    c.FirstName + ' ' + c.LastName AS FullName
FROM
    Invoice i
LEFT JOIN Customer c ON i.CustomerId = c.CustomerId
ORDER BY
    I.InvoiceDate DESC

-- Then  also include the customer full name (first and last name together)


-- List the customers who have spent more than £45

-- List the City, CustomerId and LastName of all customers in Paris and London, 
-- and the Total of their invoices
	
-- Show all details about customer Michelle Brooks.  List salient details of her invoices.

/*
Which employees were born in the 1960s?  Show only the EmployeeId, FirstName, LastName and BirthDate columns
Note: Define a date value as with the region independent format 'yyyy-mm-dd' e.g. '1969-12-31'
*/


-- List countries, and the number of customers and the total invoiced amount
-- Order  high to low in terms of the number of customers

-- What are the top 10 most popular artists in terms of number of tracks bought by customers?

-- List the albums in alphabetical order of Title

-- List 10 albums and their artist.  Order by album title.

