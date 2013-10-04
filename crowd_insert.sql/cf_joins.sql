--Project Name and Pledges
SELECT projects.title AS 'Project', SUM (pledge_amount)
AS 'Total Pledged' FROM pledges
JOIN projects ON pledges.project_id = projects.id
GROUP BY projects.title;

--Amount Pledged by Each User
SELECT users.name AS 'Name', users.age AS 'Age', SUM (pledge_amount)
AS 'Amount Pledged' FROM users
JOIN pledges ON users.id = pledges.id
GROUP BY users.id;

--Listed Projects That Have Met Pledge Goals
SELECT projects.title AS 'Projects - Goals Met',
projects.goal AS 'Initial Goal',	
SUM (pledge_amount) AS 'Amount Pledged' FROM pledges
JOIN projects ON pledges.project_id = projects.id
WHERE pledges.pledge_amount >= projects.goal
GROUP BY projects.id;

--Pledge Amounts sorted by Total 
SELECT users.name AS 'Name', pledges.pledge_amount AS 
'Pledged Amount', SUM (pledge_amount) FROM users
JOIN pledges on users.id = pledges.user_id
GROUP BY pledges.pledge_amount ORDER BY SUM (pledge_amount) DESC;

--Pledge Amount from Each Pledge for Music Category
SELECT projects.title AS 'Project Names', pledge_amount
AS 'Amount Pledged' FROM pledges 
JOIN projects ON pledges.project_id = projects.id
WHERE projects.category = "music"
ORDER BY pledges.pledge_amount DESC;  


--Summed Donation Amount for Books Category
SELECT projects.category AS 'Category', SUM (pledge_amount) AS 'Amount Pledged' FROM pledges
JOIN projects ON pledges.project_id = projects.id
WHERE projects.category = "books";

