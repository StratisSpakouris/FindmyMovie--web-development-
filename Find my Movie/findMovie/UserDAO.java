package findMovie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

	public String errorMessages = "";

	public UserDAO() {

	}

	public User authenticateUser(String username, String password) throws Exception {

		Connection con = null;
		DB db = new DB();

		String sqlquery = "SELECT * FROM user WHERE username=? AND password=?;";

		try {

			db.open(); //open connection

			con = db.getConnection(); //get Connection

			PreparedStatement stmt2 = con.prepareStatement(sqlquery);
			stmt2.setString(1, username);
			stmt2.setString(2, password);

			ResultSet rs = stmt2.executeQuery();

			if (!rs.next()) {
				rs.close();
				stmt2.close();
				db.close();
				throw new Exception("Wrong username or password");
			}

			User user = new User(rs.getInt("uid"), rs.getString("name"),rs.getString("surname"),rs.getString("email"),rs.getString("username"), rs.getString("password"), rs.getString("user_image"));

			rs.close();
			stmt2.close();
			db.close(); //close connection

			return user;

		} catch (Exception e) {

			throw new Exception(e.getMessage());

		} finally {

			if(con != null)
				con.close();

		}

	} // End of authenticateUser

public void registerUser(String name, String surname, String email, String username, String password) throws Exception {

		Connection con = null;
		DB db = new DB();
		String sql = "INSERT INTO  user (name, surname, email, username, password) VALUES (?, ?, ?, ?, ?);";

		try {

			db.open(); //open connection
			con = db.getConnection(); //get Connection

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, name);
			stmt.setString(2, surname);
			stmt.setString(3, email);
			stmt.setString(4, username);
			stmt.setString(5, password);

			stmt.executeUpdate();

			stmt.close();
			db.close(); //close connection

		} catch (SQLException e) {

			db.close();
			throw new Exception("User with email: " + email + " already exists");

		} catch (Exception e) {

			db.close();
			throw new Exception("An error occured while inserting user to database: " + e.getMessage());

		} finally {

			if(con != null)
				con.close();

		}

	}// End of registerUser


		public boolean isUserRegistered(String username, String email) {

			Connection con = null;

	        DB db = new DB();

	        boolean flag = false;

			try {
				db.open();

				con = db.getConnection();

				String selectUserQuery = "select * from user where username=? or email=?;";

				PreparedStatement stmt2 = con.prepareStatement(selectUserQuery);

				stmt2.setString(1, username);
				stmt2.setString(2, email);

				ResultSet rs = stmt2.executeQuery();

				while (rs.next()){

					String id1 = rs.getString("username");
					String id2 = rs.getString("email");

					if (id1.equals(username)) {
						flag = true;
						errorMessages += "There is already a user with the username <strong>" +username+ "</strong> registered!<br>";
					}
					if (id2.equals(email)) {
						flag = true;
						errorMessages += "There is already a user with the e-mail <strong>" +email+ "</strong> registered!<br>";
					}
				}

				rs.close();
				stmt2.close();
				db.close();

			} catch (Exception e1) {
				errorMessages = "Error while executing selection query: <br>" + e1.getMessage();
				flag = true;
				return flag;
			}

			return flag;
	} //end of method


public String getErrorMessages() {
		    return errorMessages;
  	}//end of errormessages


}
