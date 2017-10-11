package findMovie;

public class User {

	private int uid;
	private String name;
	private String surname;
	private String email;
	private String username;
	private String password;
	private String user_image;





	public int getUid() {
			return uid;
		}

		public void setUid(int uid) {
			this.uid = uid;
	}


	public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}



		public String getSurname() {
					return surname;
				}

				public void setSurname(String surname) {
					this.surname = surname;
				}


public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
				this.password = password;
		}




	public String getUser_image() {
			return user_image;
		}

		public void setUser_image(String user_image) {
			this.user_image = user_image;
	}




	public User(int uid, String name,String surname,String email,String username, String password, String user_image ) {
		this.uid=uid;
		this.name=name;
		this.surname=surname;
		this.email = email;
		this.username = username;
		this.password = password;
		this.user_image=user_image;

	}

} //End of class