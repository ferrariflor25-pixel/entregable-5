Descripción del Proyecto

Este repositorio contiene un análisis de datos comerciales desarrollado para Retail Pro, cuyo objetivo es evaluar el desempeño de ventas de la empresa, analizar el comportamiento comercial y auditar la calidad de los datos transaccionales durante el período analizado.

Mediante consultas analíticas en SQL, el proyecto busca responder preguntas relevantes para el negocio, identificar patrones de comportamiento y generar información útil para la toma de decisiones.

Objetivos del análisis

Integridad de datos y actividad comercial: Identificación de clientes sin compras registradas y productos sin movimientos de venta, para detectar posibles registros inactivos.

Comportamiento temporal (quincenas): Comparación de la facturación entre la primera y la segunda quincena de cada mes, con el propósito de identificar variaciones y posibles patrones de consumo.

Desempeño comercial y KPIs: Cálculo de indicadores mensuales, como facturación total, cantidad de transacciones y ticket promedio, para evaluar la evolución del negocio.

Análisis y ranking de productos: Clasificación de productos según su contribución a los ingresos y el volumen de unidades vendidas, permitiendo identificar los productos con mayor impacto comercial.

🛠️ Herramientas Utilizadas

Motor de base de datos: SQL Server (T-SQL).

Entorno de desarrollo: SQL Server Management Studio (SSMS).

Control de versiones: Git y GitHub.

🗄️ Estructura del Modelo de Datos

El análisis se realiza sobre la base de datos empresa, compuesta por las siguientes tablas principales dentro del esquema dbo:

dbo.Ventas: Tabla transaccional que almacena los registros de ventas, incluyendo fechas, cantidades, precios unitarios e identificadores relacionados.

dbo.Clientes: Tabla maestra que contiene la información de los clientes registrados.

dbo.Productos: Tabla maestra que contiene el catálogo de productos disponibles.

dbo.Categoria: Tabla que almacena la clasificación y agrupación de los productos.

Estas tablas se relacionan mediante identificadores que permiten realizar consultas y análisis integrados sobre la información comercial.

▶️ Cómo Ejecutar los Scripts SQL

Para reproducir el análisis en un entorno local, seguí los siguientes pasos:

Clonar el repositorio:

git clone https://github.com/tu-usuario/entregable-5.git

Abrir el gestor de base de datos:

Iniciá SQL Server Management Studio (SSMS) o Azure Data Studio y conectate a una instancia de SQL Server.

Verificar la base de datos:

Asegurate de contar con la base de datos empresa creada y con las siguientes tablas cargadas: Ventas, Clientes, Productos y Categoria.

Abrir y ejecutar el script:

Abrí el archivo .sql del proyecto desde el gestor de base de datos (Archivo > Abrir > Archivo...).

Verificá que el script apunte a la base de datos correcta mediante la instrucción:

USE empresa;

Ejecutá el script completo presionando F5 o haciendo clic en Ejecutar.

También podés seleccionar y ejecutar consultas individuales para analizar cada resultado por separado.




-Principales Hallazgos y Oportunidades Comerciales

A partir del análisis de las consultas SQL correspondientes al período evaluado (Mes 3), se identificaron los siguientes hallazgos y oportunidades de mejora para el equipo comercial:

*Concentración de ingresos y dependencia de productos clave: El Producto 1 generó $ 3.600,00 a partir de la venta de apenas 3 unidades, representando aproximadamente el 55,9% de la facturación total del mes ($ 6.444,00).

*Diferencia entre volumen de ventas y generación de ingresos: El Producto 2 lideró el volumen de unidades vendidas, con 13 unidades, pero ocupó el quinto lugar en facturación, con $ 364,00. 

*Oportunidad de crecimiento en la frecuencia de compra: Durante el período analizado se registraron 10 transacciones, con un ticket promedio de $ 644,40. 

*Concentración de la facturación en los principales productos: Los cinco productos con mayor contribución a los ingresos concentraron el 94,4% de la facturación total

