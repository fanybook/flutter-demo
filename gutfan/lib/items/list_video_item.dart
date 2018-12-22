class Video {
  final String title;
  final String thumbnailUrl;

  Video({this.title, this.thumbnailUrl});

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}