package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class InjectionDbDAO implements InjectionDAO {
	private static final String DRIVER_CLASS_NAME = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/companydb";

	@Override
	public List<List<String>> getSQLResults(String query) {
		List<List<String>> allData = new ArrayList<List<String>>();
		
		try {
			Class.forName(DRIVER_CLASS_NAME);
			Connection conn = DriverManager.getConnection(URL, "student", "student");
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			// get headers and add to ListList
			List<String> allHeaders = new ArrayList<String>();
			ResultSetMetaData rsmd = rs.getMetaData();
			for (int i = 1; i <= rsmd.getColumnCount(); i++) {
				allHeaders.add(rsmd.getColumnName(i));
			}
			allData.add(allHeaders);
			
			// get column values and add to ListList
			while (rs.next()) {
				List<String> allValues = new ArrayList<String>();
				for (int i = 1; i <= rsmd.getColumnCount(); i++) {
					allValues.add(rs.getString(i));
				}
				allData.add(allValues);
			}
			
			rs.close();
			statement.close();
			conn.close();
		}
		catch (Exception e) {
			System.err.println(e);
		}
		return allData;
	}
}