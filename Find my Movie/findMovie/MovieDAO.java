package findMovie;
import java.sql.*;
import java.io.*;
import java.util.List;
import java.util.ArrayList;


public class MovieDAO {

public MovieDAO() {

	}


	private String errorMessages = "";

	private Connection con = null;

	private PreparedStatement stmt = null;

	private ResultSet rs = null, rs1 = null;

	private final String queryMovie = "SELECT * FROM movies WHERE id = ? ;";

	Movie mov = null;

		//method returns a movie object based on id (for single movie page)
		public Movie findMovie(int id) throws Exception {

				Connection con = null;

				try {
					DB db = new DB();
					db.open();
					con = db.getConnection();

					stmt = con.prepareStatement(queryMovie);
					stmt.setInt(1, id);

					ResultSet rs = stmt.executeQuery();

					if (!rs.next()){
						rs.close();
						stmt.close();
						db.close();
						throw new Exception ("Wrong movie id.");
					}

									int uid = rs.getInt("id");
									String name = rs.getString("name");
									int year = rs.getInt("year");
									String decade = rs.getString("decade");
									String actors = rs.getString("actors");
									String director = rs.getString("director");
									String duration = rs.getString("duration");
									String genre = rs.getString("genre");
									String summary = rs.getString("summary");
									String shortsummary = rs.getString("shortsummary");
									Double imdbRating = rs.getDouble("imdbRating");
									Double findMyMovieRating = rs.getDouble("findMyMovieRating");
									String imageurl = rs.getString("imageurl");
									Movie mov = new Movie(id, name, year,decade, actors, director, duration, genre, summary, shortsummary, imdbRating, findMyMovieRating,imageurl);


								rs.close();
								stmt.close();
								db.close(); //close connection

								return mov;

					} catch(Exception e) {
						errorMessages = "Error while executing query <br>"
						             + e.getMessage();
	         			throw new SQLException(errorMessages);
						}
		}


}// end of class