<?php 
//esta es la forma en la que se envia un mensaje con la funcion mail de un php a un correo
//nombre
$name= "Code Asisst";
//desde donde se envia
$mail_from = "mailfrom@domain.com";
//para quien lo recibe
$mail_to = "mailto@domain.com";
//mensaje
$mail_body = "hello Recipient!";
//sujeto
$mail_subject = "Mail from " . $name;
//header cabecera
$mail_header = "From: ".$name." <".$mail_from.">\r\n";
//los comandos /r/n son para hacer un salto de linea entre las cabezeras que programamos
ini_set("SMTP", "galactica");

if (mail($mail_to,$mail_subject,$mail_body,$mail_header)){
    echo "email enviado correctamente";

}else{
    echo"el mensaje  no se ha enviado con exito";
 }
//una opcion valida aunque no obligatoria, podemos utilizar este codigo para enviar un mismo correo a un conjunto de personas
$mail_header .= "Cc: supervilo@hotmal.com, mundooscuro@outlook.com, vilopatodalasnenastatusabe@gmail.com\r\n";
//y adjuntandole más informacion a el mail_header podemos enviar el mismo correo a muchas personas

//y tambien podemos utilizar un metodo para mandar el mismo correo a muchas, personas sin que estas sepan entre ellas a quienes se los ha mandado
$mail_header .= "Antoni <Bcc: celevia@hotmail.com>\r\n";
//se puede incluso usar el metodo que hemos aprendido antes del from y queda genial
/*
$mensaje= 'hola
Te estoy enviando este correo desde php...
Estoy enviando Cabeceras...

Saludos,
Gabriel
Desarrollador.com';
$cabecera= "From: Gabriel Viloria <supervilo0812@gmail.com>\r\n";
if(mail("gabriel.viloria0812@gmail.com", "probando enviar un correo por php", $mensaje, $cabecera)){
echo"el mensaje se ha enviado con exito";
}else{
echo"el mensaje no se ha podido enviar";
}*/
?>