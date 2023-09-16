
| Desarrollo de aplicaciones web dinámicas                                    
| Tema: Java Server Pages
| Intención del aprendizaje o aprendizaje esperado                                 
|    Construye un Servlet que rescata información de un request GET/POST utilizando tecnología Java acorde al estándar J2EE.  Construye una vista JSP que despliega información provista por un Servlet utilizando tags JSTL para el formateo acorde al estándar J2EE.                                    

| Planteamiento del Problema:                                

|   Una empresa de asesorías en prevención de riesgos necesita contar con un sistema de información que le permita administrar los principales procesos que se llevan a cabo en ella día a día.  Hasta el momento se han definido las siguientes funcionalidades en el sistema:  **ID Nombre Detalle Actor(es)** 1 **Inicio** Página de inicio del portal con Cliente / información relevante del proyecto Administrativo / que se está realizando. Profesional 2 **Contacto** Formulario de contacto para realizar Cliente consultas. 3 **Crear Capacitación** Formulario para crear una Cliente capacitación en el sistema. 4 **Listar Capacitaciones** Listado de capacitaciones registradas. Cliente 5 **Listado de Usuarios** Listado con los usuarios existentes en Administrativo plataforma. 6 **Crear Usuario** Formulario que permitirá crear un Administrativo usuario en sistema. 7 **Editar Cliente** Formulario que permite modificar los Administrativo datos de un usuario de tipo cliente. 8 **Editar Administrativo** Formulario que permite modificar los Administrativo datos de un usuario de tipo administrativo. 9 **Editar Profesional** Formulario que permite modificar los Administrativo datos de un usuario de tipo profesional. 

| 10  | **Listado Visitas**            | Lista de todas las visitas realizadas a cada uno de los clientes. Además, posee un formulario que permite agregar nuevas visitas a sistema.                                             | Profesional                            |
| --- | ------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------- |
| 11  | **Responder checklist**        | Listado de chequeos de una visita.                                                                                                                                                      | Profesional                            |
| 12  | **Listado Pago**               | Lista de todos los pagos realizados por los clientes.                                                                                                                                   | Administrativo                         |
| 13  | **Crear Pago**                 | Permitirá agregar un pago al sistema.                                                                                                                                                   | Administrativo                         |
| 14  | **Listado Asesorías**          | Lista con las asesorías realizadas hasta el momento.                                                                                                                                    | Profesional                            |
| 15  | **Crear Asesorías**            | Contiene un formulario para agregar una nueva asesoría.                                                                                                                                 | Profesional                            |
| 16  | **Reportes**                   | Despliega reportes específicos.                                                                                                                                                         | Profesional                            |
| 17  | **Administrar** **Asistentes** | Administración de asistentes a una capacitación; incluye listarlos, poder agregar asistentes y eliminarlos.                                                                             | Cliente                                |
| 18  | **Login**                      | Contendrá un acceso a un usuario al portal a través de un RUT de usuario y una clave.                                                                                                   | Cliente / Administrativo / Profesional |
| 19  | **Gestionar accidentes**       | Listado con todos los accidentes registrados en plataforma. Además, permite editarlos, agregar uno nuevo y eliminarlos. En esta sección cada cliente administra sus propios accidentes. | Cliente                                |
| 20  | **Administrar chequeos**       | Permite mostrar los distintos chequeos realizados a cada cliente en una visita a terreno, y permite agregar uno nuevo, y cambiar su estado.                                             | Administrativo                         |

En el ejercicio de la sesión anterior, se crearon servlets para los siguientes casos de uso:

 Inicio

 Contacto

 Crear Capacitación

 Listar Capacitación

 Login

Como parte de este ejercicio se pide realizar lo siguiente:

1\. En caso de que algún servlet esté generando código HTML directamente, debe modificar este comportamiento utilizando un JSP adecuado al caso.

2\. Debe aplicar estilos CSS a cada sitio. Todos los archivos JSP deben compartir el mismo

archivo de estilos.

3\. En caso de que aplique, implemente funciones Javascript, jQuery o librerías que contengan funcionalidades pertinentes a los casos de uso implementados.

4\. Todas las páginas deben compartir el mismo menú, a excepción del login.

5\. Finalmente, implemente un servlet que permita cerrar la sesión de usuario, y redireccionar al usuario al sitio de login.

![](media/18a8bda8685bf8c553a6f4ef0aff7a57.jpeg)

| El entregable debe ser un proyecto web dinámico Java comprimido en formato RAR o ZIP.   **Nota 1:** Este ejercicio es la continuación del ejercicio grupal del día anterior.                                                                   -|
| El Datos de apoyo al planteamiento                                                                                                                      |
|   **Ejecución**: Grupal (equipo de no más 4 personas)   **Componentes para evaluar**: Se deberá entregar un proyecto Java web dinámico, comprimido en formato ZIP o RAR.                                                                        
| Recursos Bibliográficos:                                                           

|   **Qué es Java Enterprise (J2ee, JEE)** <https://www.fundesem.es/bt/publicacion-java-ee-y-el-desarrollo-web-un-enfoque-de-aprendizaje>  **Qué son los Servlets** [https://users.dcc.uchile.cl/\~jbarrios/servlets/general.html](https://users.dcc.uchile.cl/~jbarrios/servlets/general.html)  **Utilizando métodos post y get** [https://www.ecodeup.com/enviar-parametros-servlet-desde-una-vist a-utilizando-post-get/](https://www.ecodeup.com/enviar-parametros-servlet-desde-una-vist%20a-utilizando-post-get/)  **Sesiones y cookies** <https://ricardogeek.com/manejo-de-sesiones-y-cookies-en-servlets-java/>  **Etiquetas JSTL** <http://www.jtech.ua.es/ayto/ayto2008/jsp/sesion07-apuntes.html> 

<span style="color:red">**Ejercicio Grupal 2 Modulo 5**</span>

## **Integrantes :**

</table>

<tr>

<td><img src="https://img.shields.io/badge/Angelica%20-%20Romero%20-%20violet?cacheSeconds=3200" alt="Texto alternativo 1"></td>

<td><img src="https://img.shields.io/badge/Bastian%20-%20Mariangel%20-%20red?cacheSeconds=3200" alt="Texto alternativo 2"></td\>

<td><img src="https://img.shields.io/badge/Ivan    %20-%20Mieres   %20-%20green?cacheSeconds=3200" *alt*="Texto alternativo 2"></td>

<td><img src="https://img.shields.io/badge/Patricio%20-%20Bonnin%20-%20brown?cacheSeconds=3200" alt="Texto alternativo 2"></td>

<td><img src="https://img.shields.io/badge/Roberto%20-%20Rivas%20-%20blue?cacheSeconds=3200" alt="Texto alternativo 2"></td>

</tr>

</table>

![Alt text](image.png)
![Alt text](image-1.png)
![Alt text](image-2.png)
![Alt text](image-3.png)
![Alt text](image-4.png)
![Alt text](image-5.png)
![Alt text](image-5.png)
![Alt text](image-6.png)
![Alt text](image-7.png)

