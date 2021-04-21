--select skill_worker.FirstName,skill_worker.LastName,skill_worker.speciality,skill_worker.work_status from skill_worker
--inner join job on job.swID=skill_worker.swID
--where work_status in (select skill_worker.work_status from skill_worker where work_status='Free')

select * from contract where status='Successful'
select * from buyer
select * from Property

select Property.prop_type,Property.prop_description,contract.contractID,contract.buyerID,contract.payment,contract.status
from Property
join contract on contract.propID=Property.propID where status='Successful' join contract on contract.buyerID=buyer.buyerID
--union
--select buyer.Firstname,buyer.Lastname from buyer

select prop_type, prop_description,prop_address,postcode,Firstname,Lastname,status from contract inner join Property on Property.propID=contract.propID
inner join buyer on buyer.buyerID=contract.buyerID where status='Successful' and prop_type='House'

select * from Property
select * from property_repair
select * from web_catalog

select prop_type,prop_address,postcode,cost,reason,duration,saleprice as total,Property.prop_status from property_repair inner join Property on 
Property.propID=property_repair.propID inner join web_catalog on web_catalog.propID=Property.propID 
where Property.prop_status='Re-inspect'

--select prop_type,prop_address,postcode,cost,reason,duration,saleprice as total,Property.prop_status from property_repair inner join Property on 
--Property.propID=property_repair.propID inner join web_catalog on web_catalog.propID=Property.propID 
--where Property.prop_status=@proprpt

EXEC spLSBUcon @constatus = 'Successful'; 

EXEC spLSBUconstatus @constatus = 'Successful',@LSBUprop ='Maisonette'

EXEC spLSBUrpt