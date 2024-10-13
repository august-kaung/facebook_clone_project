import 'dart:convert';

class User {
  String? className;
  String? path;
  int? userId;
  int? id;
  String? title;
  String? body;
  String? list;

  User({
    this.className,
    this.path,
    this.userId,
    this.id,
    this.title,
    this.body,
    this.list,
  });

  @override
  String toString() {
    return 'User(className: $className, path: $path, userId: $userId, id: $id, title: $title, body: $body, list: $list)';
  }

  factory User.fromK(Map<String, dynamic> data) => User(
        className: data['__className'] as String?,
        path: data['__path'] as String?,
        userId: data['userId'] as int?,
        id: data['id'] as int?,
        title: data['title'] as String?,
        body: data['body'] as String?,
        list: data['List'] as String?,
      );

  Map<String, dynamic> toK() => {
        '__className': className,
        '__path': path,
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
        'List': list,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [User].
  factory User.fromJson(String data) {
    return User.fromK(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [User] to a JSON string.
  String toJson() => json.encode(toK());

  User copyWith({
    String? className,
    String? path,
    int? userId,
    int? id,
    String? title,
    String? body,
    String? list,
  }) {
    return User(
      className: className ?? this.className,
      path: path ?? this.path,
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      list: list ?? this.list,
    );
  }
}
