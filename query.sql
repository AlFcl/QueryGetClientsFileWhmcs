select count(*) as total,f.userid,MAX(f.dateadded)
from
tblclients cl
INNER JOIN
tblclientsfiles f
on cl.id = f.userid
WHERE cl.status = 'Active'
GROUP by f.userid
ORDER BY total DESC
## query by ALFcl