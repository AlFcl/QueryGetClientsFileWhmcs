select count(*) as Total ,f.userid,MAX(f.dateadded) as LastDate,MAX(f.id) AS LastFile
FROM
tblclients cl
INNER JOIN
tblclientsfiles f
on cl.id = f.userid
WHERE cl.status = 'Active'
GROUP by f.userid
ORDER BY total DESC
## query by ALFcl 


####  OHER QUERY  FOR GET ALL FILED BY  CLIENT ID

SELECT 
c.id as IdClient,f.filename as NameFile, f.dateadded AS DateAdded
FROM
tblclientsfiles f
INNER JOIN
tblclients
c
ON f.userid = c.id
WHERE c.status = 'Active'

## query by ALFcl..
