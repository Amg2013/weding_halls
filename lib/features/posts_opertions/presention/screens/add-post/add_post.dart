// ignore_for_file: unused_field, unused_local_variable, non_constant_identifier_names

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_strings.dart';
import '../../../../main_features/domain/providers/userProvider.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  String selected = 'اختار نوع القاعة';
  List checkListItems = [
    {"type": 0, "value": false, "title": AppStrings.smallHall},
    {"type": 1, "value": false, "title": AppStrings.bigHall},
    {"type": 2, "value": false, "title": AppStrings.openHall},
    {"type": 3, "value": false, "title": AppStrings.closHall}
  ];
  Uint8List? _file;
  bool isLoading = false;
  List busyDays = [1, 2, 3];
  List freeDays = [5, 6];
  String photoImag = ' dsadf';
  String photoId = 'asd';
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _postNameController = TextEditingController();
  final TextEditingController _PostTypeController = TextEditingController();
  final TextEditingController _PriceController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _numbersController = TextEditingController();
  final TextEditingController _dataPublishedController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white_1,
        /////////////////////////////////////////////////////////////////////
        automaticallyImplyLeading: true,
        title: const Text('اضافة الي '),
        centerTitle: true,
        elevation: 1,
        actions: <Widget>[
          TextButton(
            onPressed: null,
            //() => postImage(
            //   userProvider.getUser.uid,
            //   userProvider.getUser.username,
            //   userProvider.getUser.photoUrl,
            // ),
            child: Text(AppStrings.post,
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp)),
          )
        ],
      ),
      // POST FORM
      body: ListView(children: [
        Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.width * .95,
            child: Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Column(children: <Widget>[
                        TextField(
                            controller: _PriceController,
                            decoration: const InputDecoration(
                                label: Text(AppStrings.priceOfpost)),
                            keyboardType: TextInputType.number),
                        TextField(
                            controller: _numbersController,
                            decoration: const InputDecoration(
                                label: Text(AppStrings.numberOfPeple)),
                            keyboardType: TextInputType.number),
                        TextField(
                            controller: _PostTypeController,
                            decoration: const InputDecoration(
                                label: Text(AppStrings.postName)),
                            keyboardType: TextInputType.text),
                        TextField(
                          controller: _locationController,
                          decoration: const InputDecoration(
                              label: Text(AppStrings.location)),
                          keyboardType: TextInputType.number,
                        ),
                      ]),
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                  style: BorderStyle.solid),
                              //color: const Color(0xFFF8E2E2),
                            ),

                            //   borderRadius: BorderRadius.circular(10))),
                            margin: const EdgeInsets.only(left: 15),
                            height: 250.h,
                            width: 200.w,
                            child: GestureDetector(
                                onTap: () => null,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(AppStrings.addimageOfpost),
                                      Icon(Icons.add_a_photo, size: 28.r)
                                    ])))), // this is the end of contoer and boxes
                  ]),
              Text(selected,
                  style: const TextStyle(
                    fontSize: 22.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: AppColors.yellwo,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                height: 60.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  itemCount: checkListItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Checkbox(
                              value: checkListItems[index]["value"],
                              onChanged: (value) {
                                setState(() {
                                  for (var element in checkListItems) {
                                    element["value"] = false;
                                  }
                                  checkListItems[index]["value"] = value;
                                  selected =
                                      " ${checkListItems[index]["title"]}";
                                });
                              },
                            ),
                            Text(checkListItems[index]["title"]),
                          ]),
                    );
                  },
                ),
              ),
              TextField(
                  textDirection: TextDirection.rtl,
                  controller: _descriptionController,
                  decoration:
                      const InputDecoration(label: Text('اكتب وصف عن القاعة ')),
                  keyboardType: TextInputType.text),
            ])),
      ]),
    );
  }
}
