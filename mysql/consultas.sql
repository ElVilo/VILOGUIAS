//permite mostrar toda la base de datos para que me permita visualizar los datos de dos tablas que estan relacionadas gracias a las consultas que hicimo
//convertimos el valor de las tablas en una variable más pequeña con el fin de que podamos luego llamar a las entidades de esas tablas más facilmente
SELECT * FROM Personas as P INNER JOIN Usuarios as U ON P.id_persona=U.id_persona



//podemos sacar los valores que queramos usando las variables que queriamos usando la variable de la tabla con el nombre de la entidad
SELECT P.cedula,P.nombre, P.apellido FROM Personas as P INNER JOIN Usuarios as U ON P.id_persona=U.id_persona



//podemos sacar los valores que queramos usando las variables que queriamos usando la variable de la tabla con el nombre de la entidad
SELECT P.cedula,P.nombre, P.apellido,U.login,U.clave FROM Personas as P INNER JOIN Usuarios as U ON P.id_persona=U.id_persona




//aqui logramos hacer la relacion entre tres tablas en una base de datos 
//ahora tenemos una tabla unica que es la fusion entre 3 tablas de la base de datos
//y logramos llamar a la variable y podemos mostrar todos los datos de ese campo R.tipo
SELECT P.cedula,P.nombre, P.apellido,U.login,U.clave,R.tipo FROM Personas as P INNER JOIN Usuarios as U ON P.id_persona=U.id_persona INNER JOIN Roles as R ON U.id_rol=R.id_rol



//ahora puedo buscar elementos para que me restrinja los valores en este caso P.cedula y podemos visualizar solo los valores que queramos 
SELECT P.cedula,P.nombre, P.apellido,U.login,U.clave,R.tipo FROM Personas as P INNER JOIN Usuarios as U ON P.id_persona=U.id_persona INNER JOIN Roles as R ON U.id_rol=R.id_rol WHERE P.cedula=27167028


//ahora podemos sacar la informacion de la tabla de Clientes y mostrar el valor del carnet
SELECT P.cedula,P.nombre, P.apellido,U.login,U.clave,R.tipo,C.id_carnet FROM Personas as P INNER JOIN Usuarios as U ON P.id_persona=U.id_persona INNER JOIN Roles as R ON U.id_rol=R.id_rol INNER JOIN Clientes as C ON P.id_persona=C.id_persona