<%-- 
    Document   : search
    Created on : Oct 22, 2016, 11:24:32 PM
    Author     : Wenchuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Players</title>
        <link rel="stylesheet" type="text/css" href="./css/format.css"/>
    </head>
    <body>
        <div class="wrap">  <!--div to hold all other divs-->
            <!--header-->
            <%@include file="includes/header.jsp" %>

            <!--menu-->
            <%@include file="includes/menu.jsp" %>

            <!--main-->    
            <div class="main">  <!--div main-->
                <h1>Search Players</h1>
                <form name="searchForm" action="search" method="get">

                    <input type="text" name="searchVal" value=""/> 
                    <br><br>
                    <input type="submit" name="submit"   value="Submit" />  


                </form>
            </div><!--close the main div-->

            <!--footer-->
            <%@include file="includes/footer.jsp" %>
        </div><!--close the wrap div-->
    </body>
</html>
