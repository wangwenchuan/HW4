/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Player;

/**
 *
 * @author Wenchuan
 */
public class SearchQuery {
     private Connection conn;
    
     private ResultSet results;
     
     public SearchQuery() {
        Properties props = new Properties();//MWC
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
     }
     
     public void doSearch(String playerName){
        
        try {
            //set up a string to hold query
            String query ="SELECT * from basketballplayer where UPPER(playerName) like ? order by playerID ASC";
            //create preparedstatement using our query
            PreparedStatement ps = conn.prepareStatement(query);
            //fill in the preparedstatement
            ps.setString(1, "%" + playerName.toUpperCase() + "%");
            
            //execute the query
            this.results=ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(DeleteQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
     
        public String getHTMLtable(){
        String table="";
        table += "<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/format.css\"/> <table>";
        table +="<tr>";
        table +="<th>PlayerID</th>";
        table +="<th>TeamPlayer Name</th>";
        table +="<th>Team</th>";
        table +="<th>Position</th>";
        table +="<th>Points</th>";
        table +="<th>   </th>";
        
        
        
        table +="</tr>";
        try {
            while (this.results.next()){
                Player player =new Player();
                player.setPlayerID(this.results.getInt("playerID"));
                player.setPlayerName(this.results.getString("playerName"));
                player.setTeam(this.results.getString("team"));
                player.setCourtPosition(this.results.getString("courtPosition"));
                player.setPoints(this.results.getInt("points"));
                
                table +="<tr>";
                
                table +="<td>";
                table += player.getPlayerID();      
                table +="</td>";
                
                table +="<td>";
                table += player.getPlayerName();      
                table +="</td>";
                
                table +="<td>";
                table += player.getTeam();      
                table +="</td>";
                
                table +="<td>";
                table += player.getCourtPosition();      
                table +="</td>";
                
                table +="<td>";
                table += player.getPoints();      
                table +="</td>";
                
                table +="<td>";
                table +=  "<a href=update?playerID="+ player.getPlayerID()+ "> Update </a>" + "<a href=delete?playerID=" + player.getPlayerID()+ "> Delete </a>";
                table +="</td>";
                
                
                table +="</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table+="</table>";
        
        return table;
        
    }
        
        
}
