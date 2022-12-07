delimiter $$
create Procedure InsertCliente(in CI int,Ciudad char(30),TipoPer int)
begin
insert into Cliente values(CI,Ciudad,TipoPer);
end $$
call InsertCliente ('texto','texto', numero);
Drop Procedure InsertCliente;