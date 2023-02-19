import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../data/models/post.dart';
import '../../presentation/screens/post/body.dart';

// ignore: camel_case_types
class Model_view extends StatefulWidget {
  const Model_view({super.key});
  @override
  State<Model_view> createState() => _Model_viewState();
}

// ignore: camel_case_types
class _Model_viewState extends State<Model_view> {
  var firestoreDB = FirebaseFirestore.instance;
  var postEX = Post(
      postType: 'larg',
      logoImage: Image.asset('assets/images/a_1.jpg'),
      userName: 'sdfasd',
      postImage: Image.asset('assets/images/a_2.jpg'),
      day: '9',
      numbers: '90',
      loction: 'bine suife',
      price: '500',
      postName: 'al masa');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' all ')),
      body: SingleChildScrollView(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const BodyPost();
          },
        ),
      ),
    );
  }
}
