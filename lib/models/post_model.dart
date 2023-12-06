// import 'dart:convert';

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// class Post {
//   Post({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.body,
//   });

//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   Post copyWith({
//     int? userId,
//     int? id,
//     String? title,
//     String? body,
//   }) {
//     return Post(
//       userId: userId ?? this.userId,
//       id: id ?? this.id,
//       title: title ?? this.title,
//       body: body ?? this.body,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'userId': userId,
//       'id': id,
//       'title': title,
//       'body': body,
//     };
//   }

//   factory Post.fromMap(Map<String, dynamic> map) {
//     return Post(
//       userId: map['userId'] as int,
//       id: map['id'] as int,
//       title: map['title'] as String,
//       body: map['body'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Post.fromJson(String source) => Post.fromMap(json.decode(source) as Map<String, dynamic>);
// }

class Post {
  int? userId;
  int? id;
  String? title;
  String? body;

  Post({this.userId, this.id, this.title, this.body});

  Post.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}
