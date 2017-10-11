package findMovie;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;



public class commentDAO {

	public commentDAO() {

	}

	public List<Comment> getComments(int movieId) throws Exception {//gets comments to show on a movie page

		Connection con = null;
		DB db = new DB();
		String sqlquery = "SELECT * FROM comment WHERE movieId = ? ;";

		List<Comment> commentList = new ArrayList<Comment>();

		try {

			db.open();
			con = db.getConnection();

			PreparedStatement stmt1 = con.prepareStatement(sqlquery);
			stmt1.setInt(1, movieId);
			ResultSet rs = stmt1.executeQuery();

			while (rs.next()) {

				commentList.add(new Comment(rs.getInt("id"), rs.getString("content"),rs.getInt("uid"),rs.getInt("movieId"), rs.getString("date"),rs.getString("username")));

			}

			rs.close();
			stmt1.close();
			db.close();

			return commentList;

		} catch (Exception e) {

			throw new Exception("An error occured while getting comments from database: " + e.getMessage());

		} finally {

			if(con != null)
				con.close();

		}

	}// End of getComments



	public void newComment (String content, int userId, int movieId, String commentDate, String username) throws Exception{

		Connection con = null;
		DB db = new DB();
		String queryInsert = "INSERT INTO comment (content,date,username,movieId,uid) VALUES (?,?,?,?,?);";
		try {

		db.open(); //open connection
		con = db.getConnection(); //get Connection
		PreparedStatement stmt1 = con.prepareStatement(queryInsert);
		stmt1.setString(1,content);
		stmt1.setString(2,commentDate);
		stmt1.setString(3,username);
		stmt1.setInt(4,movieId);
		stmt1.setInt(5, userId);





		stmt1.executeUpdate();
		stmt1.close();
		db.close(); //close connection


			} catch (Exception e) {

				throw new Exception("An error occured while creating comment: " + e.getMessage());

		}//end of catch
		}//end of new Comment



		/*

			public Comment getReplyComment(int replycommentId) throws Exception {//gets the reply comment of a comment if it exists

					Connection con = null;
					boolean flag = true; //there is a reply comment

					DB db = new DB();
					String sqlquery = "SELECT * FROM comment WHERE id = ?;";

					//Comment replyComment = new Comment(0,"",1,1,02-04-2013 11:35:42,"",2);
					Comment replyComment = null;
					try {

						db.open(); //open connection
						con = db.getConnection(); //get Connection

						PreparedStatement stmt1 = con.prepareStatement(sqlquery);
						stmt1.setInt(1, replycommentId);
						ResultSet rs = stmt1.executeQuery();

						while (rs.next()) {

							new Comment(rs.getInt("id"), rs.getString("content"), rs.getInt("userId"),rs.getInt("movieId"),rs.getDate("commentDate"),rs.getString("username"), rs.getInt("replycommentId"));

						}
						if (replyComment == null){
							flag = false;
							}

						rs.close();
						stmt1.close();
						db.close();

						return replyComment;

					} catch (Exception e) {

						throw new Exception("An error occured while getting reply comments from database: " + e.getMessage());

					} finally {

						if(con != null)
							con.close();

					}

	}// End of getreplycomment  */



	} //End of class
