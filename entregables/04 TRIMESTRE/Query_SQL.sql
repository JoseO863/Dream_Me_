use store;

select * from cliente;
select * from proveedor;
select * from producto;
select * from categoria;
select * from venta;
select * from cuentaBanco;
select * from administrador;
select * from detalle;

/*realizar un inner join de todas los campos de producto y cliente*/
select * from producto
inner join cliente ;

/*realizar un inner join de todas los campos de producto y categoria*/
select * from categoria
inner join cliente;

/*realizar un inner join de todas los campos de administrador y cliente*/
select * from proveedor
inner join cliente;

/*realizar un inner join de todas los campos id, Nombre, clave de producto y  NIT, NombreCompleto, Apellido, telefono de categoria*/
select p.NITProveedor, p.NombreProveedor, p.Telefono, c.NIT, c.NombreCompleto from proveedor as p
inner join cliente as c
on c.Telefono = p.Telefono;
