class Movie {
  final String title;
  final String thumbnailUrl;

  Movie({this.title, this.thumbnailUrl});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}