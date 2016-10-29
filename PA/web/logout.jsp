<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        HttpSession sesion = request.getSession();
        
        sesion.invalidate();
        
        out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/PA/index.html'/>");
        %>
    </body>
</html>
