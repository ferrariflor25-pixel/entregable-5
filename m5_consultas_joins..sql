use empresa;

/*Cruzar tablas*/

select *
from dbo.Ventas
inner join dbo.Clientes
on dbo.Clientes.ID_Cliente=dbo.Ventas.ID_Cliente
inner join dbo.Productos
on dbo.Ventas.ID_Productos=dbo.Productos.ID_Productos
inner join dbo.Categoria
on dbo.Productos.ID_Categoria=dbo.Categoria.ID_Categoria;

/*Clientes sin ventas*/
--Proposito: Detectar clientes que no compraron nada
select
dbo.Ventas.ID_Cliente,
Ventas
FROM dbo.Ventas
left join dbo.Clientes
ON dbo.Ventas.ID_Cliente=dbo.Clientes.ID_Cliente
where Ventas is null;

--Hallazgo: No hay clientes sin compras, esto indica una gran fidelidad de los clientes hacia nosotros y nuestro equipo de marketing

/*Productos sin ventas*/
--Proposito: Buscar productos sin ventas

select
dbo.Ventas.ID_Productos,
dbo.Ventas.Ventas
from dbo.Ventas
left join dbo.Productos
on dbo.Ventas.ID_Productos= dbo.Productos.ID_Productos
where dbo.Ventas.Ventas IS NULL;

--Hallazgo: Se vendieron todos los productos, lo que indica que se estan distribuyendo bien y en la cantidad correcta.


/*Consolidado por canal (separar info de ventas*/
--Proposito: Buscar en que quicena se vendio mejor

with consolidadoVentas as (
select 
'Primera quincena' as canal,
(Cantidad * PrecioUnitario) as TotalVentas
from dbo.Ventas
where fechaVenta <='2024-03-14'
UNION ALL
SELECT
'Segunda quincena' as canal,
(Cantidad * PrecioUnitario) as TotalVentas
FROM dbo.Ventas
where fechaVenta >='2024-03-15')
Select
canal,
Sum(TotalVentas) as Total
from consolidadoVentas
Group by canal;

/*Hallazgo: en la primer quincena se vendio casi el sextuple que en la segunda
Esto podria deberse a la situación económica del país, ya que a fin de mes se reducen las ventas
Otra razón podria ser falta de algunos porductos en algunas tiendas especificas, habria que estudiar la sitación de distribucion de cada porducto y sus ventas*/
