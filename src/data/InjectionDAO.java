package data;

import java.util.List;

public interface InjectionDAO {
	public List<String> getHeaders(String query);
	public List<List<String>> getSQLResults(String query);
}