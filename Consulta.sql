select unic_department.department_name, COUNT(unic_employe.id) from unic_department
INNER JOIN unic_employe WHERE unic_employe.department_id = unic_department.id
group by unic_department.department_name HAVING COUNT(unic_employe.id)>=2
order by department_name ASC ;