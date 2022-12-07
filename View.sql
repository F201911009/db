Create view ListaClientes as
select p.Nombre,p.Telefono,c.Ciudad,d.Av,d.Barrio,d.Calle
from Persona p,Cliente c, Direccion d
where p.Tipo = c.TipoPersona && c.CI = d.CI_Cliente; 

select * from ListaClientes;
