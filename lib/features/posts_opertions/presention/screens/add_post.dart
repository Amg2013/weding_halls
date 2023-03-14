import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:wedding_halls/utils/app_colors.dart';
import 'package:wedding_halls/utils/app_strings.dart';
import '../../../../config/constants/utils.dart';
import '../../../main_features/domain/providers/userProvider.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
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
              child: Text("نشر",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp)),
            )
          ],
        ),
        // POST FORM
        body: Container(
          padding: const EdgeInsets.all(20),
          color: AppColors.blue,
          height: 500.h,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Expanded(
              child: Column(children: <Widget>[
                SizedBox(height: 25.h),
                Wrap(children: [
                  ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.add, size: 20.r),
                      label: const Text(AppStrings.smallHall)),
                  ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.add, size: 20.r),
                      label: const Text(AppStrings.bigHall)),
                  ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.add, size: 20.r),
                      label: const Text(AppStrings.openHall)),
                  ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.add, size: 20.r),
                      label: const Text(AppStrings.closHall)),
                ]),
                TextField(
                  controller: _PriceController,
                  decoration: const InputDecoration(
                      hintText: "السعر", border: InputBorder.none),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: _numbersController,
                  decoration: const InputDecoration(
                      hintText: "العدد", border: InputBorder.none),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: _PostTypeController,
                  decoration: const InputDecoration(
                      hintText: AppStrings.postType, border: InputBorder.none),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: _locationController,
                  decoration: const InputDecoration(
                      hintText: AppStrings.location, border: InputBorder.none),
                  keyboardType: TextInputType.number,
                ),
              ]),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 250.h,
                  width: 200.w,
                  child: ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(
                        Icons.add,
                        size: 50.r,
                      ),
                      label: const Text(AppStrings.addporstType))),
            )
          ]),
        ));
  }
}
