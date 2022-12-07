Create database SATE;
use SATE;
create table Persona(Nombre char(25),Telefono int,Tipo int primary key);
create table Cliente (CI int primary key, Ciudad char (15),TipoPersona int,
 foreign key(TipoPersona) references Persona(Tipo));
create table Direccion (Av char(30),Barrio char (20),Calle char(20),
CI_Cliente int, foreign key (CI_Cliente) references Cliente(CI));
create table Empleado (Id int,Especialidad int,
foreign key (Especialidad) references Especialidad(Id),turno char (10)
,TipoPersona int, foreign key(TipoPersona) references Persona(Tipo));
create table Especialidad (Id int primary key, Nombre char (20));
create table Servicio (Id int primary key, Nombre char(20));
create table Pago (Id int primary key, Nombre char(30));
create table SolicitudServicio (CI_cliente int,foreign key (CI_Cliente) references
 Cliente (CI),Nombre char(30),TipoServ int,foreign key(TipoServ) references Servicio(Id),
MetPago int,foreign key(Metpago) references Pago(Id));
Create table bitacora (hostname char (30),Accion char(15),FechaHora timestamp);