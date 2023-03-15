// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wedding_halls/config/constants/utils.dart';
import 'package:wedding_halls/utils/app_strings.dart';

class PostMethodes extends StatefulWidget {
  const PostMethodes({super.key});

  @override
  State<PostMethodes> createState() => _PostMethodesState();
}

class _PostMethodesState extends State<PostMethodes> {
  _selectImage(BuildContext parentContext) async {
    return showDialog(
      context: context,
      builder: (context) {
        return ChoseImageDialgo(
          file: null,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ChoseImageDialgo extends StatelessWidget {
  Uint8List? file;
  ChoseImageDialgo({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text(AppStrings.addporstType),
      children: [
        SimpleDialogOption(
          padding: const EdgeInsets.all(20),
          child: const Text('التقط صورة '),
          onPressed: () async {
            file = await pickImage(ImageSource.camera);
          },
        ),
        SimpleDialogOption(
          padding: const EdgeInsets.all(20),
          child: const Text('اختار من المعرض '),
          onPressed: () async {
            file = await pickImage(ImageSource.gallery);
          },
        )
      ],
    );
  }
}
