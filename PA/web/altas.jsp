
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@page import="java.sql.*,java.io.*" %>
        <%
            //declaración de variables
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String nombreusuario = request.getParameter("usuario");
            String contra = request.getParameter("contra");
            String correo = request.getParameter("mail");
            String fechan = request.getParameter("dia");
            String ocupacion = request.getParameter("ocupa");
            String civil = request.getParameter("menutip");
            //variables para la conexion
            Connection con = null;
            //Statement stm = null;
            PreparedStatement pstatement =  null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coins","root","n0m3l0");
                String querystring = "INSERT INTO usuario(nombre,apellidos,nombreusuario,contra,correo,fechan,ocupacion,edoCivil) VALUES(?,?,?,?,?,?,?,?)";
                pstatement = con.prepareStatement(querystring);
                pstatement.setString(1,nombre);
                pstatement.setString(2,apellidos);
                pstatement.setString(3,nombreusuario);
                pstatement.setString(4,contra);
                pstatement.setString(5,correo);
                pstatement.setString(6,fechan);
                pstatement.setString(7,ocupacion);
                pstatement.setString(8,civil);
                pstatement.executeUpdate();
                out.println("<script>alert('Registro dado de alta exitosamente.')</script>");
                out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/PA/'/>");
            }
            catch(SQLException error)
            {
                out.print("<script>alert('El correo o el nombre de usuario ya estan registrados')</script>");
                out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/PA/index.html'/>");
            }
            catch(Exception e)
            {
                out.println(e.getLocalizedMessage());
                e.printStackTrace();
            }
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS1\divRegistro.css" media="screen"/>
        <link rel="stylesheet" type="text/css" href="CSS1\hexagonos.css" media="screen"/>
    </head>
    <body>
       <img alt="full screen background image" src="Imagenes\mexico.jpg" id="full-screen-background-image" />  
       

    </body>
</html>
