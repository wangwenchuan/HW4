
package model;


public class Player {
    private int playerID;
    private String playerName;
    private String team;
    private String courtPosition;
    private int points;

    public Player() {
        this.playerID = 0;
        this.playerName = "";
        this.team = "";
        this.courtPosition = "";
        this.points = 0;
    }
    
    public Player(int playerID, String playerName, String team, String courtPosition, int points) {
        this.playerID = playerID;
        this.playerName = playerName;
        this.team = team;
        this.courtPosition = courtPosition;
        this.points = points;
    }

    public int getPlayerID() {
        return playerID;
    }

    public void setPlayerID(int playerID) {
        this.playerID = playerID;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public String getCourtPosition() {
        return courtPosition;
    }

    public void setCourtPosition(String courtPosition) {
        this.courtPosition = courtPosition;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }
    
    
    
}
