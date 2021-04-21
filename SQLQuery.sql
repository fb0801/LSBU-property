select* from Auction
inner join Property on Auction.auctID = Property.auctID
WHERE purchasedate BETWEEN '2019-10-01' AND '2019-12-31';


select Property.propID,Property.auctID, Property.purchasedate from Property
WHERE purchasedate BETWEEN '2019-10-01' AND '2019-12-31';

select * from skill_worker
select * from job
--in (Select * from job where outcome between '2019-10-01' and '2019-10-31');


Select * from job where outcome between '2019-10-01' and '2019-10-31' (Select skill_worker.FirstName,skill_worker.LastName,job.outcome,job.job_month from skill_worker
inner join job on job.swID = skill_worker.swID
where outcome ='Satisfactory')

Select skill_worker.FirstName,skill_worker.LastName,job.outcome,job.job_month from skill_worker
inner join job on job.swID = skill_worker.swID
where outcome ='Satisfactory' 

select * from job where outcome in (select * from skill_worker)
select skill_worker.FirstName,skill_worker.LastName from skill_worker where swID in(select * from job where outcome='Satisfactory')

--select skill_worker.FirstName,skill_worker.LastName,skill_worker.speciality,skill_worker.work_status from skill_worker 
--where work_status='Free' and swID not in(select * from job)

Select * from job 
inner join skill_worker on ;
select * from job
select * from skill_worker
where work_status ='Free'

select skill_worker.FirstName,skill_worker.LastName,skill_worker.speciality,skill_worker.work_status from skill_worker
inner join job on job.swID=skill_worker.swID
where work_status in (select skill_worker.work_status from skill_worker where work_status='Free')

select skill_worker.FirstName,skill_worker.LastName,skill_worker.speciality,skill_worker.work_status from skill_worker
left join job on job.swID=skill_worker.swID
where work_status='Free' 



select * from Auction
select * from Property
select * from buyer
select black_list.listID, buyer.buyerID,buyer.Firstname,black_list.reason from black_list inner join buyer on buyer.buyerID=black_list.buyerID


-- prop: 42,44,46,48,50,52
--auct: 63,66,69,72,75,78
--buyer 21-40 !39


--155,185,170,160,165
exec spLSBUconstatus @constatus='Failed',@LSBUprop='Flat'


select * from job
Select skill_worker.FirstName,skill_worker.LastName,count(job.outcome),job.job_month from skill_worker
inner join job on job.swID = skill_worker.swID
where outcome ='Satisfactory' 

Select skill_worker.FirstName, skill_worker.LastName from skill_worker
inner join job on job.swID = skill_worker.swID
where job.outcome in (select COUNT( * ) as Outcome
from job
where job.outcome='Satisfactory'
group by swID)


SELECT job.swID, COUNT(*) as Outcome FROM job 
WHERE outcome ='Satisfactory'
group by swID;