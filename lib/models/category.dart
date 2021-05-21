class Category {
  final String id;
  final String title;
  final String image;

  Category({this.id,this.image,this.title});
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['_id'],
      title: json['title'],
      image: json['image'],
    );
  }
}