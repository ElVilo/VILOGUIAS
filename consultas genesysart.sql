//registrar//
INSERT INTO `users`(`id_user`, `name`, `email`, `account_name`, `password`, `recover_password`, `id_level_user`) VALUES (null, 'gabriel','gabriel.viloria0812@gmail.com','vilonk','1234','1234',1)
//login//comparando para la contraseña
SELECT id_user FROM `users` WHERE account_name='vilonk' &&  password='1234'
//login//verificando si es administrador o cliente
SELECT lu.level
FROM users AS u
INNER JOIN id_levels_users AS lu on u.id_level_user=lu.id_level_user
WHERE u.id_user=1
//crear soubenires//Primero tenemos que crear la categoria del soubenires
//crear soubenires//subimos la imagen del souvenir
INSERT INTO `images` (`id_image`, `route`, `type`, `size`) VALUES (NULL, 'taza_1.jpg', 'image/jpeg', '3522');
//creamos la categoria//
INSERT INTO `categories` (`id_category`, `category`, `id_image`) VALUES (NULL, 'porta vasos', '1');
////crear soubenires//agregamos la imagen de los soubenires
INSERT INTO `images` (`id_image`, `route`, `type`, `size`) VALUES (NULL, 'taza_1.jpg', 'image/jpeg', '3522');
////crear soubenires//agregamos los datos de los souvenirs
INSERT INTO `souvenirs` (`id_souvenir`, `name`, `precio`, `cantidad`, `codigo`, `id_category`, `id_images`) VALUES (NULL, 'taza_smug', '3.00', '10', '$f%ag#sgd', '1', '1');
///inicio// vamos a mostrar todas las categorias de souvenirs que tenemos a la disposición
SELECT c.category, i.route
FROM categories AS c
INNER JOIN images AS i on i.id_image=c.id_image
//productos//sacamos todos los productos que hay///estoy pasando la variable de categories.... y obtenemos la imagen y el id del souvenir
SELECT i.route, s.id_souvenir
FROM categories AS c
INNER JOIN souvenirs AS s on c.id_category=s.id_category
INNER JOIN images as i on s.id_image=i.id_image
WHERE c.category='tazas'