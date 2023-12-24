1)
select Mov_title
from Movies 
where Dir_id=(
select Dir_id 
from Director 
where Dir_Name="Hitchcock");

2)
select Mov_title from 
Movies where Mov_id in(
select Act_id 
from Movies_cast 
group by Act_id 
having count(*)>=2);

3)
SELECT A.Act_name 
FROM Actor A 
JOIN Movies_cast MC ON A.Act_id = MC.Act_id 
JOIN Movies M ON MC.Mov_id = M.Mov_id 
GROUP BY A.Act_name 
HAVING COUNT(DISTINCT CASE WHEN M.Mov_year > '2020-01-01' THEN M.Mov_id END) > 0 AND COUNT(DISTINCT CASE WHEN M.Mov_year < '2002-10-01' THEN M.Mov_id END) > 0;

4)
select M.Mov_Title,R.Rev_stars 
from Rating R 
join Movies M on R.Mov_id=M.Mov_id 
where M.Mov_id in (
select Mov_id from Rating)
order by M.Mov_title;

5)
update Rating
set Rev_stars=5 
where Mov_id in(
select Mov_id 
from Movies  
where Dir_id=(
select Dir_id  
from Director  
where Dir_Name="Spidberg"));
