import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String userName;
  final String uid;
  final String profImage;
  // post
  final String postName;
  final int numbers;
  final String description;

  // final int postType;
  // final String photoUrl;

  final String postId;
  // final datePublished;
  // final String price;
  // final String loction;

  // // calender
  // final List? busyDays;
  // final List? freeDays;

// post types
// type 1 big halles
// type 2 small
// type 3 cloesd
// type 4 open

  Post({
    required this.uid,
    required this.profImage,
    required this.userName,
    //
    // required this.datePublished,
    required this.postId,
    required this.description,
    // required this.freeDays,
    // required this.postType,
    // required this.photoUrl,
    // required this.busyDays,
    required this.numbers,
    // required this.loction,
    // required this.price,
    required this.postName,
  });

  Map<String, dynamic> toJson() => {
        "username": userName,
        "uid": uid,
        "profImage": profImage,
        ////post

        "postName": postName,
        "numbers": numbers,
        "description": description,
        // "photoUrl": photoUrl,
        // "postType": postType,

        // "loction": loction,
        // "price": price,
        "postId": postId,
        // "datePublished": datePublished,

        //calender
        // "busyDays": busyDays,
        // "freeDays": freeDays,
      };
  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<dynamic, dynamic>;
    return Post(
      uid: snapshot["uid"],
      userName: snapshot["userName"],
      profImage: snapshot["profImage"],

      ///

      postName: snapshot["postName"],
      numbers: snapshot["numbers"],
      description: snapshot["description"],
      ////
      ///

      // datePublished: snapshot["datePublished"],
      postId: snapshot["postId"],
      // price: snapshot["price"],
      // postType: snapshot["postType"],
      // photoUrl: snapshot["photoUrl"],

      // busyDays: snapshot["busyDays"],
      // freeDays: snapshot["freeDays"],

      // loction: snapshot["loction"],
    );
  }
}
