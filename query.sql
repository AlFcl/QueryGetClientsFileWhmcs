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
