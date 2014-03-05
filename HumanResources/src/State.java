import java.sql.*;
import java.util.*;
import java.io.*;

public class State {
	private static Statement instance;

	private State() {
	}

	public static Statement getInstance() {
		if (instance == null) {
			Locale.setDefault(Locale.ENGLISH);
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
				
				Properties p = new Properties();
				p.load(new FileInputStream("settings.ini"));
				Connection conn = DriverManager.getConnection(p.getProperty("Database"), p.getProperty("User"), p.getProperty("Password"));
				instance = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				Logger.printToFile(e);
				e.printStackTrace();
			}
		}
		return instance;
	}
}
