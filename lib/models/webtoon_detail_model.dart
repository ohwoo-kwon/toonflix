class WebtoonDetailModel {
  final String title, about, genre, age;

  WebtoonDetailModel.fromJson(Map<String, dynamic> json)
    : about = json['about'],
      genre = json['genre'],
      age = json['age'],
      title = json['title'];
}
