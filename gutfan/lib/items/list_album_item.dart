class Album {
  final String title;
  final String thumbnailUrl;

  Album({this.title, this.thumbnailUrl});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}