class Movie {
  String? id, title, originalTitle, description, releaseDate, movieBanner;

  Movie(
      {required this.id,
      required this.title,
      required this.originalTitle,
      required this.description,
      required this.releaseDate,
      required this.movieBanner});

  //factory
  factory Movie.formJson(json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        originalTitle: json['original_title'],
        description: json['description'],
        releaseDate: json['release_date'],
        movieBanner: json['movie_banner']);
  }
}
