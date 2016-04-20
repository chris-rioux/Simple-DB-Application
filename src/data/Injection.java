package data;

import java.util.List;

public class Injection {
	private String query;
	private List<List<String>> results;

	public Injection(String query) {
		super();
		this.query = query;
	}
	
	public String getQuery() {
		return query;
	}
	public List<List<String>> getResults() {
		return results;
	}

	public void setQuery(String query) {
		this.query = query;
	}
	public void setResults(List<List<String>> results) {
		this.results = results;
	}

	@Override
	public String toString() {
		return "Injection [query=" + query + "]";
	}

}