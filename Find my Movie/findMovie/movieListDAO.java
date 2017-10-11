package findMovie;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.LinkedHashMap;


public class movieListDAO {

	public movieListDAO() {

	}

	public List<Movie> findMovieList(String genre, String decade, Double imdbRating, Double findMyMovieRating) throws Exception {

		Connection con = null;
		List<Movie> movieList = new ArrayList<Movie>();
		Map<String, String> parameters = new LinkedHashMap<String, String>();

		DB db = new DB();

		//String queryMovieList = "SELECT * FROM movies WHERE genre = ? AND decade= ?  AND imdbRating =? AND findMyMovieRating= ? ;";
		String queryMovieList = "SELECT * FROM movies ";
		int counter = 0;

		if( !genre.equals("any") || !decade.equals("any") || imdbRating!= 0 || findMyMovieRating != 0) {
			queryMovieList = queryMovieList + " WHERE ";
		}

		if( !genre.equals("any")) {
			queryMovieList = queryMovieList + " genre LIKE ? ";
			parameters.put("genre", genre);

			counter++;
		}

		if (!decade.equals("any")) {

			if( counter > 0) {
				queryMovieList = queryMovieList + " AND ";
			}

			queryMovieList = queryMovieList + " decade= ?  ";
			parameters.put("decade", decade);
			counter++;
		}
		if( imdbRating != 0) {

			if( counter > 0) {
				queryMovieList = queryMovieList + " AND ";
			}

			queryMovieList = queryMovieList + " imdbRating > ?  ";
			parameters.put("imdbRating", Double.toString(imdbRating));
			counter++;
		}

		if( findMyMovieRating != 0) {

			if( counter > 0) {
				queryMovieList = queryMovieList + " AND ";
			}

			queryMovieList = queryMovieList + " findMyMovieRating > ?  ";
			parameters.put("findMyMovieRating", Double.toString(findMyMovieRating));
			counter++;
		}

		try {

			db.open(); //open connection

			con = db.getConnection(); //get Connection

			PreparedStatement stmt1 = con.prepareStatement(queryMovieList);
			Integer i = 1;

			for (String key : parameters.keySet()) {
				String value = parameters.get(key);
				if (key.equals("genre")) {
					stmt1.setString(i, "%" + value + "%");
				}else if (key.equals("decade")) {
					stmt1.setString(i, value);
				} else{
					stmt1.setDouble(i, Double.parseDouble(value));
				}
				++i;
			}
			ResultSet rs = stmt1.executeQuery();



			while (rs.next()) {

				movieList.add(new Movie(rs.getInt("id"), rs.getString("name"), rs.getInt("year"), rs.getString("decade"), rs.getString("actors"),
						rs.getString("director"), rs.getString("duration"),rs.getString("genre"),rs.getString("summary"),
						rs.getString("shortsummary"), rs.getDouble("imdbRating"),rs.getDouble("findMyMovieRating"), rs.getString("imageurl")));

			}

			rs.close();
			stmt1.close();

			db.close(); //close connection

			return movieList;

		} catch (Exception e) {

			throw new Exception("An error occured while getting Movies from database: " + e.getMessage());

		} finally {

			if(con != null)
				con.close();

		}

	}// End of findMovieList

	//public static void main (String args[]) {

	//	movieListDAO ff = new movieListDAO();

		//findMovieList(String genre, int year, double imdbRating, double findMyMovieRating)

	//	try {
	//		List<Movie> lmovie = ff.findMovieList(null, 2013, 0, 5);

	//	} catch (Exception e) {
	//		System.out.println(e.getMessage());
	//	}



	//}


} //End of class
