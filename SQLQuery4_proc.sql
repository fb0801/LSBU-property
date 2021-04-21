create proc spLSBUrpt

AS
BEGIN



select prop_type,prop_address,postcode,cost,reason,duration,saleprice as total,Property.prop_status 
from property_repair inner join Property on 
Property.propID=property_repair.propID inner join web_catalog on web_catalog.propID=Property.propID 
where Property.prop_status='Re-inspect'

END