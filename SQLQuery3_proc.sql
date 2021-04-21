create proc spLSBUconstatus
(
@constatus varchar(100),
@LSBUprop varchar(50)
)
AS
BEGIN



select prop_type, prop_description,prop_address,postcode,Firstname,Lastname,status from contract inner join Property on Property.propID=contract.propID
inner join buyer on buyer.buyerID=contract.buyerID where status= @constatus and prop_type= @LSBUprop


END