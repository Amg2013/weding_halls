import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../main_features/domain/providers/userProvider.dart';

class BodyOfAddPostSctreen extends StatelessWidget {
  const BodyOfAddPostSctreen({
    Key? key,
    required this.isLoading,
    required this.userProvider,
    required TextEditingController descriptionController,
    required Uint8List? file,
  })  : _descriptionController = descriptionController,
        _file = file,
        super(key: key);

  final bool isLoading;
  final UserProvider userProvider;
  final TextEditingController _descriptionController;
  final Uint8List? _file;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        isLoading
            ? const LinearProgressIndicator()
            : const Padding(padding: EdgeInsets.only(top: 0.0)),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                userProvider.getUser.photoUrl,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                    hintText: "Write a caption...", border: InputBorder.none),
                maxLines: 8,
              ),
            ),
            SizedBox(
              height: 45.h,
              width: 45.w,
              child: AspectRatio(
                aspectRatio: 487 / 451,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    alignment: FractionalOffset.topCenter,
                    image: MemoryImage(_file!),
                  )),
                ),
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
