<%-- 
    Document   : read
    Created on : Oct 9, 2016, 8:29:41 PM
    Author     : Wenchuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NBA Players</title>
        <link rel="stylesheet" type="text/css" href="./css/format.css"/>
          
        <% String table = (String) request.getAttribute("table");%>    
        
    </head>
    <body>
       <h1> NBA Players</h1>
       <br><br>
              
        <%= table %>
        <a href ="add"> Add A New Player</a>
    </body>
</html>
