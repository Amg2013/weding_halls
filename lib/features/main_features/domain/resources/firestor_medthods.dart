import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'package:wedding_halls/features/posts_opertions/data/post.dart';
import 'package:wedding_halls/features/main_features/domain/resources/storage_methods.dart';

class FireStoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<dynamic> uploadPost(
    Uint8List file,
    String userName,
    String uid,
    String profImage,
    // post
    String postName,
    int numbers,
    String description,
    String postId,
    // int postType,
    // String photoUrl,

    // var datePublished,
    // String price,
    // String loction,

    // // calender
    // final List? busyDays,
    // final List? freeDays,
  ) async {
    // asking uid here because we dont want to make extra calls to firebase auth when we can just get from our state management
    String res = "Some error occurred";
    try {
      String photoUrl =
          await StorageMethods().uploadImageToStorage('posts', file, true);
      String postId = const Uuid().v1(); // creates unique id based on time
      Post post = Post(
          //postType: postType,
          //price: price,
          postName: postName,
          //photoUrl: photoUrl,
          description: description,
          uid: uid,
          // busyDays: [],
          // freeDays: [],
          postId: postId,
          // datePublished: DateTime.now(),
          profImage: profImage,
          //loction: loction,
          numbers: numbers,
          userName: userName);
      _firestore.collection('posts').doc(postId).set(post.toJson());
      res = "success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
