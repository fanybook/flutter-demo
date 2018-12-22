class Slider {
  final String title;
  final String thumbnailUrl;

  Slider({this.title, this.thumbnailUrl});

  factory Slider.fromJson(Map<String, dynamic> json) {
    return Slider(
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}