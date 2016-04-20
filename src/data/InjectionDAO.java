package data;

import java.util.List;

public interface InjectionDAO {
	public List<List<String>> getSQLResults(String query);
}