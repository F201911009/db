delimiter $$
create trigger Insert_Cliente
before insert on Cliente
for each row
begin
insert into Bitacora values(@@hostname,'new insert',null);
end $$