import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.api.jdbc.Statement;
import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {
    private Connection connection;
    private Config config;

    public MySQLAdsDao() throws SQLException{
        DriverManager.registerDriver(new Driver());
        this.config = new Config();
        this.connection = DriverManager.getConnection(
            this.config.getUrl(),
            this.config.getUsername(),
            this.config.getPassword()
        );
    }

    public List<Ad> all(){
        String selectQuery = "SELECT * FROM ads";
        List<Ad> ads = new ArrayList<>();

        try{

            Statement stmt = (Statement) this.connection.createStatement();
            ResultSet rs = stmt.executeQuery(selectQuery);

            while(rs.next()){
                ads.add(
                    new Ad( //adds the data into the bean
                        rs.getInt("id"), 
                        rs.getInt("user_id"), 
                        rs.getString("title"), 
                        rs.getString("description")
                    )
                );
            };
            
        }catch(SQLException err){
            err.printStackTrace();
        }
        
        return ads;
    }

    public Long insert(Ad ad){
        return null;
    }
}
