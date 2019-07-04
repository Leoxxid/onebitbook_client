class Book {
  Book({
    this.id,
    this.name,
    this.author,
  });

  final String id;
  final String name;
  final String author;

  Book.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      author = json['author'];

  Map<String, dynamic> toJson() =>
    {
      'id': id,
      'name': name,
      'author': author,
    };
}
