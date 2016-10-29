<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>


<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("usuari") == null) {
%><META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/COINS/'/><%
            }
%>

<html>
    <head>
        <title>Principal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            @import url(https://fonts.googleapis.com/css?family=Roboto+Condensed);
        </style>
    </head>
    <body>
        <div style = " display:table; width: 100%; height:100%;">

            <div style = "float: left; width:100%; height:100%; background-color:#183028; font-family: Roboto Condensed;"> 
                <br><br><br><br>
                <center>
                    <Font color="white" size="12">BIENVENIDO
                    <BR><BR><BR>
                    <a href='logout.jsp'  target='_parent' class='btn btn-2' id='cs'>CERRAR SESIÓN</a>
                    </font>
                </center>
            </div>
        </div>
    </body>
</html>