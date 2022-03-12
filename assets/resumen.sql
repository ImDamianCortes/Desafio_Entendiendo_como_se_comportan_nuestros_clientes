---
--1.    Cargar el respaldo de la base de datos unidad2.sql.
---

--  como primer paso se crea la base de datos negocio
CREATE DATABASE negocio1;

\c negocio;

--  como segundo paso se carga el respaldo de la base correspondiente desde archivo unidad2.sql
--  a traves de consola CMD en el directorio en el que se encuentra nuestra database

--  psql -U postgres negocio < unidad2.sql;

--  en este caso especifico se obtiene un error en el comando descrito en la lectura
--  Error al cargar los datos.

--  por lo que se propone una nueva forma de acceder a la DB

--  DirectorioPostgreSQL\bin>psql -U postgres -p 5432 -d nombreDB < DirectorioDB\archivo.sql;

--  C:\Program Files\PostgreSQL\14\bin>psql -U postgres -p 5432 -d negocio1 < C:\Users\darkm\Desktop\Modulo_5\Desafio_Entendiendo_como_se_comportan_nuestros_clientes\assets\db\unidad2.sql

--   con esto se logra cargar la DB unidad2.sql desde el archivo

\dt;

--              Listado de relaciones
--   Esquema |     Nombre     | Tipo  |  Due±o
--  ---------+----------------+-------+----------
--   public  | cliente        | tabla | postgres
--   public  | compra         | tabla | postgres
--   public  | detalle_compra | tabla | postgres
--   public  | producto       | tabla | postgres
--  (4 filas)

SELECT * FROM cliente;

--   id |   nombre   |         email
--  ----+------------+------------------------
--    2 | usuario02  | usuario02@yahoo.com
--    3 | usuario03  | usuario03@hotmail.com
--    4 | usuario04  | usuario04@hotmail.com
--    5 | usuario05  | usuario05@yahoo.com
--    6 | usuario06  | usuario06@hotmail.com
--    7 | usuario07  | usuario07@yahoo.com
--    8 | usuario08  | usuario08@yahoo.com
--    9 | usuario09  | usuario09@hotmail.com
--   10 | usuario010 | usuario010@hotmail.com
--    1 | usuario01  | usuario01@gmail.com
--  (10 filas)

SELECT * FROM compra;

--   id | cliente_id |   fecha
--  ----+------------+------------
--    1 |          4 | 2020-02-12
--    2 |          5 | 2020-03-14
--    3 |         10 | 2020-02-07
--    4 |          9 | 2020-04-25
--    5 |          7 | 2020-04-03
--    6 |          2 | 2020-03-23
--    7 |          9 | 2020-03-11
--    8 |          3 | 2020-04-21
--    9 |          2 | 2020-02-24
--   10 |         10 | 2020-04-18
--   11 |          3 | 2020-04-22
--   12 |          8 | 2020-03-22
--   13 |         10 | 2020-02-20
--   14 |          9 | 2020-02-07
--   15 |          3 | 2020-04-25
--   16 |          4 | 2020-03-20
--   17 |          9 | 2020-02-22
--   18 |          8 | 2020-02-17
--   19 |         10 | 2020-03-14
--   20 |          9 | 2020-03-07
--   21 |          6 | 2020-04-28
--   22 |          5 | 2020-02-06
--   23 |         10 | 2020-01-31
--   24 |          3 | 2020-02-15
--   25 |          9 | 2020-03-12
--   26 |          1 | 2020-01-31
--   27 |         10 | 2020-04-08
--   28 |          3 | 2020-03-20
--   29 |          9 | 2020-03-16
--   30 |          5 | 2020-04-09
--   31 |          1 | 2020-03-29
--   32 |          2 | 2020-03-29
--  (32 filas)

SELECT * FROM detalle_compra;

--   id | producto_id | compra_id | cantidad
--  ----+-------------+-----------+----------
--    1 |           2 |         2 |        9
--    2 |           7 |         6 |        5
--    3 |          16 |        23 |        1
--    4 |          10 |        13 |        4
--    5 |           7 |         8 |        2
--    6 |           2 |        14 |        6
--    7 |          19 |         8 |        7
--    8 |           7 |        19 |        5
--    9 |          17 |         3 |        5
--   10 |           2 |         3 |        5
--   11 |          16 |        27 |        8
--   12 |          16 |        10 |        8
--   13 |          13 |        14 |        8
--   14 |           3 |        30 |        4
--   15 |          13 |        15 |        2
--   16 |          20 |        21 |        5
--   17 |          15 |        21 |        2
--   18 |          15 |        16 |        3
--   19 |          16 |        19 |        9
--   20 |           1 |         6 |       10
--   21 |          17 |         1 |        7
--   22 |          18 |         1 |        9
--   23 |          20 |         4 |        8
--   24 |          16 |         4 |        9
--   25 |          14 |         5 |        6
--   26 |          17 |         7 |        2
--   27 |          17 |         9 |        6
--   28 |          18 |        11 |        4
--   29 |          20 |        12 |        7
--   30 |           3 |        17 |        5
--   31 |           2 |        18 |       10
--   32 |          20 |        20 |        1
--   33 |          10 |        22 |       10
--   34 |          18 |        24 |        2
--   35 |           3 |        25 |       10
--   36 |           3 |        26 |        4
--   37 |           3 |        28 |        2
--   38 |          11 |        29 |        7
--   39 |           9 |        31 |        5
--   40 |           1 |        32 |        3
--   41 |           2 |        32 |        3
--   42 |           8 |        32 |        3
--  (42 filas)

SELECT * FROM producto;

--   id | descripcion | stock | precio
--  ----+-------------+-------+--------
--    3 | producto3   |     9 |   9449
--    4 | producto4   |     8 |    194
--    5 | producto5   |    10 |   3764
--    6 | producto6   |     6 |   8655
--    7 | producto7   |     4 |   2875
--   10 | producto10  |     1 |   3001
--   11 | producto11  |     9 |   7993
--   12 | producto12  |     3 |   8504
--   13 | producto13  |    10 |   2415
--   14 | producto14  |     5 |   3824
--   15 | producto15  |    10 |   7358
--   16 | producto16  |     7 |   3631
--   17 | producto17  |     3 |   4467
--   18 | producto18  |     2 |   9383
--   19 | producto19  |     6 |   1140
--   20 | producto20  |     4 |    102
--    9 | producto9   |     8 |   4219
--    1 | producto1   |     6 |   9107
--    2 | producto2   |     5 |   1760
--    8 | producto8   |     0 |   8923
--  (20 filas)

---
--2.    El cliente usuario01 ha realizado la siguiente compra:
---

--  producto: producto9
--  cantidad: 5
--  fecha: fecha del sistema

--  Mediante el uso de transacciones, realiza las consultas correspondientes para este requerimiento y luego consulta la tabla producto para validar si fue efectivamente descontado en el stock.

--  primero verificar el producto 9 al que se le descontara del stock 5 unidades
SELECT * FROM producto WHERE id=9;

--   id | descripcion | stock | precio
--  ----+-------------+-------+--------
--    9 | producto9   |     8 |   4219
--  (1 fila)


--  apagar AUTOCOMMIT
\set AUTOCOMMIT off
--  verificar AUTOCOMMIT
\echo :AUTOCOMMIT


--luego realizar la transaccion
BEGIN TRANSACTION;

    -- insertando la compra
    INSERT INTO compra(id, cliente_id, fecha)
    VALUES(33, 1, '2022-03-08');

    -- insertando el detalle de la compra realizada
    insert into detalle_compra(id, producto_id, compra_id, cantidad)
    values(43,9,33,5);

    -- actualizacion del stock
    UPDATE producto SET stock = stock -5 where id = 9;
    -- validacion
    SELECT * FROM producto WHERE id=9;
    SELECT * FROM detalle_compra WHERE id = 43;

COMMIT;

--   id | descripcion | stock | precio
--  ----+-------------+-------+--------
--    9 | producto9   |     3 |   4219
--  (1 filas)

--   id | producto_id | compra_id | cantidad
--  ----+-------------+-----------+----------
--   43 |           9 |        33 |        5
--  (1 fila)

---
--3.    El cliente usuario02 ha realizado la siguiente compra:
---

--  producto: producto1, producto 2, producto 8
--  cantidad: 3 de cada producto
--  fecha: fecha del sistema

--  Mediante el uso de transacciones, realiza las consultas correspondientes para este requerimiento y luego consulta la tabla producto para validar que si alguno de ellos se queda sin stock, no se realice la compra.

-- inicia la transaccion
BEGIN TRANSACTION;

    -- se inserta la compra
    INSERT INTO compra(id, cliente_id, fecha)
    VALUES(34, 2, '2022-03-08');

    -- se inserta el detalle de la compra producto 1
    insert into detalle_compra(id, producto_id, compra_id, cantidad)
    values(44,1,34,3);
    UPDATE producto SET stock = stock -3 where id = 1;
    SAVEPOINT detalle_producto1;
    SELECT * FROM detalle_compra WHERE id=44;
    SELECT * FROM producto WHERE id=1;
    
    -- se inserta el detalle de la compra producto 2
    insert into detalle_compra(id, producto_id, compra_id, cantidad)
    values(45,2,34,3);
    UPDATE producto SET stock = stock -3 where id = 1;
    SAVEPOINT detalle_producto2;
    SELECT * FROM detalle_compra WHERE id=45;
    SELECT * FROM producto WHERE id=2;

    -- se inserta el detalle de la compra producto 8
    insert into detalle_compra(id, producto_id, compra_id, cantidad)
    values(46,8,34,3);
    UPDATE producto SET stock = stock -3 where id = 1;
    SAVEPOINT detalle_producto8;
    SELECT * FROM detalle_compra WHERE id=46;
    SELECT * FROM producto WHERE id=8;

    ROLLBACK TO detalle_producto2;

-- termino de la transaccion
COMMIT;


--  se realiza la transaccion mostrando detalle de la compra y compra producto 1

--   id | producto_id | compra_id | cantidad
--  ----+-------------+-----------+----------
--   44 |           1 |        34 |        3
--  (1 fila)

--   id | descripcion | stock | precio
--  ----+-------------+-------+--------
--    1 | producto1   |     3 |   9107
--  (1 fila)

--  se realiza la transaccion mostrando detalle de la compra y compra producto 2

--   id | producto_id | compra_id | cantidad
--  ----+-------------+-----------+----------
--   45 |           2 |        34 |        3
--  (1 fila)

--   id | descripcion | stock | precio
--  ----+-------------+-------+--------
--    2 | producto2   |     5 |   1760
--  (1 fila)


--  ERROR:  el nuevo registro para la relación «producto» (8) viola la restricción «check» «stock_valido»
--  ERROR:  transacción abortada, las órdenes serán ignoradas hasta el fin de bloque de transacción

--  por lo que se ingnoran todas las ordenes posteriores y se ejecuta el rollback al finalizar la transaccion.

---
--4.    Realizar las siguientes consultas:
---


BEGIN TRANSACTION;

    --  Deshabilitar el AUTOCOMMIT
    \set AUTOCOMMIT off
    \echo :AUTOCOMMIT

    SAVEPOINT pre;
    --  Insertar un nuevo cliente
    INSERT INTO cliente(id, nombre, email) VALUES(11, 'nuevo usuario', 'usuario011@gmail.com');
    --  Confirmar que fue agregado en la tabla cliente
    SELECT * FROM cliente WHERE id = 11;
    --  Realizar un ROLLBACK
    ROLLBACK TO pre;
    --  Confirmar que se restauró la información, sin considerar la inserción del punto b
    SELECT * FROM cliente;
    --  Habilitar de nuevo el AUTOCOMMIT
    \set AUTOCOMMIT on
    \echo :AUTOCOMMIT

COMMIT;