<%-- 
    Document   : add
    Created on : Oct 15, 2016, 2:33:42 PM
    Author     : Wenchuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Player</title>
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

                <h1>Add A New Player</h1>

                <%--make suer the addservlet have a url mapping addPlayer--%>
                <form name="addForm" action="addPlayer" method ="get">

                    <label> Player Name:</label>           
                    <input type="text" name="playerName" value=""/>      
                    <br>            
                    <label> Team:</label>         
                    <input type="text" name="team" value=""/>
                    <br>
                    <label> Position:</label>
                    <input type="text" name="courtPosition" value=""/>
                    <br>
                    <label> Points:</label>
                    <input type="text" name="points" value=""/>

                    <br> <br>
                    <input type="reset" name="clear"   value="Clear" /> 
                    <input type="submit" name="submit"   value="Submit" />  

                </form>
            </div><!--close the main div-->

            <!--footer-->
            <%@include file="includes/footer.jsp" %>
        </div><!--close the wrap div-->
    </body>
</html>
