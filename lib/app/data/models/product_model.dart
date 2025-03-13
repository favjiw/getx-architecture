class User {
  final String id;
  final String name;
  final String createdAt;

  User(
      this.id,
      this.name,
      this.createdAt
      );

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['id'],
      json['name'],
      json['created_at']
    );
  }
}