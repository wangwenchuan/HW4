

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Player"%>
<%Player player=(Player) request.getAttribute("player");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Player</title>
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
        <h1>Update A Player Record</h1>
        
        <%--make suer the addservlet have a url mapping addPlayer--%>
        <form name="updateForm" action="updatePlayer" method ="get">

            <label> Friend ID:</label>
            <input type="text" name="id" value="<%=player.getPlayerID() %>" readonly/>
            <br>
            <label> Player Name:</label>           
            <input type="text" name="playerName" value="<%=player.getPlayerName() %>"/>      
            <br>            
            <label> Team:</label>         
            <input type="text" name="team" value="<%=player.getTeam() %>"/>
            <br>
            <label> Position:</label>
            <input type="text" name="courtPosition" value="<%= player.getCourtPosition() %>"/>
            <br>
            <label> Points:</label>
            <input type="text" name="points" value="<%= player.getPoints() %>"/>
           
            <br> <br>
            <input type="reset" name="clear"   value="Clear" /> 
            <input type="submit" name="submit"   value="Update" />  
         
        </form>
            
             </div><!--close the main div-->

            <!--footer-->
            <%@include file="includes/footer.jsp" %>
        </div><!--close the wrap div-->
    </body>
</html>
