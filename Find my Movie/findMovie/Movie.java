package findMovie;

public class Movie {

	private int id;
	private String name;
	private int year;
	private String decade;
	private String actors;
	private String director;
	private String duration;
	private String genre;
	private String summary;
	private String shortsummary;
//	private String langudirector;
	private Double imdbRating;
	private Double findMyMovieRating;
	private String imageurl;
	/**
	 *
	 */
	public Movie( int id, String name, int year, String decade, String actors, String director, String duration, String genre, String summary, String shortsummary, Double imdbRating, Double findMyMovieRating, String imageurl) {
		this.id = id;
		this.name = name;
		this.year = year;
		this.decade = decade;
		this.actors = actors;
		this.director = director;
		this.duration = duration;
		this.genre = genre;
		//this.summary = summary;
	//	this.duration = duration;
		this.summary = summary;
		this.shortsummary=shortsummary;
		//this.langudirector = langudirector;
		this.findMyMovieRating = findMyMovieRating;
		this.imdbRating = imdbRating;
		this.imageurl = imageurl;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getDecade() {
		return decade;
	}

	public void setDecade(String decade) {
		this.decade = decade;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getShortsummary() {
		return shortsummary;
	}

	public void setShortsummary(String shortsummary) {
		this.shortsummary = shortsummary;
	}

	public double getImdbRating() {
		return imdbRating;
	}

	public void setImdbRating(double imdbRating) {
		this.imdbRating = imdbRating;
	}

	public double getFindMyMovieRating() {
		return findMyMovieRating;
	}

	public void setFindMyMovieRating(double findMyMovieRating) {
		this.findMyMovieRating = findMyMovieRating;
	}

	public String getImageurl() {
			return imageurl;
		}

		public void setImageurl(String imageurl) {
			this.imageurl = imageurl;
	}


}//End of class
