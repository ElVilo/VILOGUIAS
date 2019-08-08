SELECT * FROM `usuarios`, producto_usuario, productos WHERE usuarios.id = producto_usuario.usuario_id AND producto_usuario.producto_id = productos.id

INSERT INTO `producto_usuario`(`id`, `producto_id`, `usuario_id`) VALUES (null,1,1)


SELECT * FROM `persons` WHERE 1

SELECT * FROM `user`,`persons` WHERE user.id = persons.user_id AND persons.user_id= user.id