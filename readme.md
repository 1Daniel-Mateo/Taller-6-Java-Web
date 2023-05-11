# TALLER 6 JAVA WEB

###### Autor: Daniel Mateo Suarez Alvarez
###### Ficha 2687365 DEL PROGRAMA ADSO SENA

#Coneción base  de datos y java 2

#### DESCRIPCIÓN

El taller trabaja en las coneciónes entre el lenguaje java y base de datos; sin embargo en esta ocación se mostraran los datos almacenados en la tabla users_tbl, se mostraran todos los datos guardados en el id de cada fila y exectauando la contraseña.

Aqui nos llaman los datos de id, nombre, apellido, correo y una contraseña null.

#### FUNCIONAMIENTO

El programa se trata de llamar bases de datos en heidiSQL, primeramente creamos la bases de datos llamada my_app en la cual se ubica la tabla users_tbl donde tenemos los datos de el id del usuario, nombre de usuario, el apellido, correo y la contraseña.


#####ingreso
![ingreso](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/b1d6bf30-9a48-492b-b2c9-5112c833ae34)
Tambien hay que agregar un usuario a la bases de datos en heidiSQL y el cual tendra control de todas las credenciales y priviligios de bases de datos.

enlace para crear usuario en base datos:https://www.youtube.com/watch?v=wOC5Vq8y19U

El usuario es Mateo y la contraseña es arbol325

##### Encriptado y desincriptado

![encriptado y desencritado](https://user-images.githubusercontent.com/126428837/236576559-ea6c5306-e397-4b48-af74-c27ea51324ed.png)

Tras crear la tabla la importamos la base de datos a Intellig Idea, se crea las conecciones, entre la base datos y en java los cuales estos contendran al usuario principal que sera Mateo y la clave Mateo123.

##### Conección Pool
![coneccion pool](https://user-images.githubusercontent.com/126428837/236577158-a390eafc-77e8-4c0d-ac02-b0cc31f88453.png)

Usaremos la conection pool para que nos llama bien la tabla SQL y que no tenga problemas en la ejecucion.

####Repository, Test y User

#####Repository
![Repositorio](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/d1e0b56c-6a08-4d7b-a57c-1c934b93f44f)
Aqui crearemos campos vacios de codigo donde realizaran una accion especifica de la CRUD(Create,Read,Update,Delete) y agregando una lista para que nos invoque una lista de datos y el tipo de clase de java sera un implement.

#####UserRepositoryImpl
![list](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/43531073-180f-4f28-b9f5-268afd332347)
![leer](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/140ab606-df07-4600-bea4-5a7aedb84c78)
![guardar](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/04da1d9e-d652-41b9-b72d-db10b517a0de)
![eleminar y crear](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/8cb7352c-fbfd-412b-ae36-7e7ddc457de0)
Aqui en los campos de codigo donde realizaran una accion especifica de la CRUD(Create,Read,Update,Delete) en donde invocaran las variables de la conección pool que seran implementados en repository.
try(Connection conn= ConnectionPool.getConnection();
PreparedStatement ps= conn.prepareStatement(sql));

#####TestRepositoryImpl
Crearemos el  TestRepositoryImpl en este invocaremos y ejecutaremos los metodos almacenados en el UserRepositoryImpl.

![Insertar](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/f3313d56-f0f1-4ff1-92e2-c5f58c80ee8a)
![save](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/887a322d-0b2f-4fd7-99fe-55d6ccc4fbb7)
![byObj](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/3e601efd-498c-47bc-8d23-bee7e940be26)
![delete](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/21621239-1808-4830-9930-1189e12981f0)
![lista](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/201df692-6084-469d-81a8-1bfc049096d7)

####INSTALACIÓN

1. Descargarlo como archivo comprimido.
2. Descomprime y guarda la carpeta
3. Abre Intellig Idea y abre la carpeta.
4. Activa el xampp, puedes abrir los archivos de heidi(Recomendacion descargar e instarlar el programa y crear usuario en base datos :https://www.youtube.com/watch?v=wOC5Vq8y19U)o en su defecto el script en para que lo copies e instancies el usuario como "Mateo" y contraseña"arbol325"(son los datos que estan guardados en la conección pool).
5. Llama a la base de datos y instanciala con los dos datos del paso 4.

CREATE DATABASE my_app;

USE my_app;

CREATE TABLE `users_tbl` (
`user_id` INT(11) NOT NULL AUTO_INCREMENT,
`user_firstname` VARCHAR(40) NULL,
`user_lastname` VARCHAR(40) NULL,
`user_email` VARCHAR(60) NULL,
`user_password` VARBINARY(255) NULL
);

INSERT INTO my_app.users_tbl (user_firstname, user_lastname, user_email, user_password)  VALUES (UPPER('willy'), UPPER('luca'), LOWER('drogo@gmail.com'),
AES_ENCRYPT('vendedores', '$205125wio3gy WoSDXCKL4f59VUVV7F0pc1twpon1422fYes/CH1122'));

SELECT *, CAST(AES_DECRYPT(user_password, '$205125wio3gy WoSDXCKL4f59VUVV7F0pc1twpon1422fYes/CH1122')
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 1;

SELECT * FROM users_tbl;

######Nota

Cuando llames a la base de datos de acuerdo al gestor de bases de datos puede ser MariaDB para heidi o MySQL si trabajas con MySQL Worprech.

####EJECUCION

Ya una vez hecha la instalacion y configurado y comprobado el funcionamiento este debera ser el resultado final.

![image](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/78fa6617-2317-4147-8983-6413933a26ce)
![image](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/25752688-d311-4971-9e8f-014a7fa0d4f1)

#### ERRORES COMUNES

Estos son los errores que se presentaron durante el proceso de desarrollo.

1. Revisa que las instrucciones esten bien ingresadas, es decir que esten bien digitados que no falte ni una coma ni punto.
2. No olvides que tienes que encriptar la clave para mayor seguridad.
3. Asegurate que las instrucciones de la tabla esten bien digitadas.
4. En caso de que la no sirva el editor de base de datos te sugiero que busques alternativas como lo pueden ser heidiSQL, Worprech, DBaver o Oracle.

Gracias por su atencion, que tengan buen día.



