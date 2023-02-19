import 'package:flutter/cupertino.dart';

class Post {
  final String? postType;
  final Image? logoImage;
  final String? userName;
  final Image? postImage;
  final String? day;
  final String? numbers;
  final String? loction;
  final String? price;
  final String? postName;

// post types
// type 1 big halles
// type 2 small
// type 3 cloesd
// type 4 open

  Post({
    required this.postType,
    required this.logoImage,
    required this.userName,
    required this.postImage,
    required this.day,
    required this.numbers,
    required this.loction,
    required this.price,
    required this.postName,
  });
}
