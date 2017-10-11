package findMovie;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Comment {

	private int id;
	private String content;
	private int userId;
	private int movieId;
	private String commentDate;
	private String username;


	public Comment(int id, String content, int userId, int movieId, String commentDate, String username) {
		this.id = id;
		this.content = content;
		this.userId = userId;
		this.movieId = movieId;
		this.commentDate = commentDate;
		this.username = username;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

		public int getMovieId() {
			return movieId;
		}

		public void setMovieId(int movieId) {
			this.movieId = movieId;
	}

	public String getCommentDate() {
			return commentDate;
		}

		public void setCommentDate(String commentDate) {
			this.commentDate = commentDate;
	}

	public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
	}

	/*public int getReplycommentId() {
			return replycommentId;
		}

		public void setReplycommentId(int replycommentId) {
			this.replycommentId = replycommentId;
	} */



}//End of class
