package findMovie;
import java.sql.*;
import java.io.*;
import java.util.List;
import java.util.ArrayList;


public class Lists { // favorites + want to watch

	private List <Movie> favorites;
	private List<Movie> wantToWatch;

	/*public void favoritesList() {
		this.favorites = favorites;

	}*/


	public boolean isMovieFavorite(int movieId ) throws Exception {

		Connection con = null;

        DB db = new DB();

        boolean flag = false;

		try {
			db.open();

			con = db.getConnection();

			String sqlQuery = "select * from favorites where movieId=? ;";

			PreparedStatement stmt2 = con.prepareStatement(sqlQuery);

			stmt2.setInt(1, movieId);


			ResultSet rs = stmt2.executeQuery();

			while (rs.next()){

				String id1 = rs.getString("movieId");



				if(id1.equals(movieId) ){
					throw new Exception("This movie is already in your Favorites!<br>" );
					}




			}



			rs.close();
			stmt2.close();
			db.close();

		} catch (Exception e1) {

			throw new Exception(e1.getMessage());


		}

		return flag;
	}// end of isMovieFavorite










	public List<Movie> favoritesList(Integer userId)throws Exception { //returns favoritesList of a specific user

		Connection con = null;
		DB db = new DB();
		String sqlquery = "SELECT DISTINCT movieId FROM favorites WHERE uid = ? ;";


		List<Movie> favoritesList = new ArrayList <Movie>();
		MovieDAO dao = new MovieDAO();

		try {

					db.open();
					con = db.getConnection();

					PreparedStatement stmt1 = con.prepareStatement(sqlquery);
					stmt1.setInt(1, userId);
					ResultSet rs = stmt1.executeQuery();

					while (rs.next()) {


						Movie mov = dao.findMovie(rs.getInt("movieId"));
						favoritesList.add(mov);

					}

					rs.close();
					stmt1.close();
					db.close();

					return favoritesList;

				} catch (Exception e) {

					throw new Exception("An error occured while getting favorites from database: " + e.getMessage());

				} finally {

					if(con != null)
						con.close();

				}


	}//end of method favoritesList



	public List<Movie> wantToWatchList(Integer userId)throws Exception { //returns wantToWatchList of a specific user

			Connection con = null;
			DB db = new DB();
			String sqlquery1 = "SELECT DISTINCT movieId FROM wantToWatch WHERE uid = ? ;";

			List<Movie> wantToWatchList = new ArrayList <Movie>();
			MovieDAO dao = new MovieDAO();

			try {

						db.open();
						con = db.getConnection();

						PreparedStatement stmt1 = con.prepareStatement(sqlquery1);
						stmt1.setInt(1, userId);
						ResultSet rs = stmt1.executeQuery();

						while (rs.next()) {


							Movie mov = dao.findMovie(rs.getInt("movieId"));
							wantToWatchList.add(mov);

						}

						rs.close();
						stmt1.close();
						db.close();

						return wantToWatchList;

					} catch (Exception e) {

						throw new Exception("An error occured while getting 'Want To Watch' List from database: " + e.getMessage());

					} finally {

						if(con != null)
							con.close();

					}


	}//end of method wantToWatch


	public void newFavorite (int userId, int movieId)throws Exception {// adds a fave to the database

		Connection con = null;
				DB db = new DB();
				String queryInsert = "INSERT INTO favorites (uid, movieId) VALUES (?,?);";
				try {

				db.open(); //open connection
				con = db.getConnection(); //get Connection
				PreparedStatement stmt1 = con.prepareStatement(queryInsert);
				stmt1.setInt(1, userId);
				stmt1.setInt(2,movieId);


				stmt1.executeUpdate();
				stmt1.close();
				db.close(); //close connection


					} catch (Exception e) {

						throw new Exception("An error occured while creating favorite: " + e.getMessage());

		}//end of catch

		}// end of newFavorite



		public void newWantToWatch (int userId, int movieId)throws Exception {// adds a wantToWatch to the database

				Connection con = null;
						DB db = new DB();
						String queryInsert = "INSERT INTO wantToWatch (uid, movieId) VALUES (?,?);";
						try {

						db.open(); //open connection
						con = db.getConnection(); //get Connection
						PreparedStatement stmt1 = con.prepareStatement(queryInsert);
						stmt1.setInt(1, userId);
						stmt1.setInt(2,movieId);


						stmt1.executeUpdate();
						stmt1.close();
						db.close(); //close connection


							} catch (Exception e) {

								throw new Exception("An error occured while creating newWantToWatch: " + e.getMessage());

				}//end of catch

		}// end of newWantToWatch



}//End of class
