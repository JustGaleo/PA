
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.sql.*, java.io.*"%>
<%
    if (request.getParameter("ok") != null) {
        

        String user;
        String conE;
        
        Connection c = null;
        Statement s = null;
        ResultSet r = null;

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/coins", "root", "n0m3l0");
            s = c.createStatement();
        } catch (SQLException error) {
            out.print(error.toString());
        }
        String id = " ";
        try {
            user = request.getParameter("usua");
            conE = request.getParameter("cont");
            r = s.executeQuery("select * from usuario where nombreusuario ='" + user + "';");
            if (r.next()) {
                String con = r.getString("contra");
                 id = r.getString("idusuario");
                if (conE.equals(con)) {
                    HttpSession sesion = request.getSession();
                    sesion.setAttribute("usuari", request.getParameter("usua"));
                    sesion.setAttribute("contra", request.getParameter("cont"));
                    sesion.setAttribute("IDUSU", id);
                    out.println("<meta http-equiv='refresh' content='.0000001;URL=http://localhost:8080/PA/principal.jsp'/>");
                } else {
                    out.println("<script>alert('Contraseña incorrecta')</script>");
                    out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/PA/'/>");
                }
            } else {
                out.println("<script>alert('Usuario no existe')</script>");
                out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/PA/'/>");
            }
        } catch (SQLException error) {
            out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/PA/'/>");
        }
    }
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesión.</title>
        <link rel="stylesheet" type="text/css" href="css/Registro.css">
    </head>
    <body>

    </body>
</html>
