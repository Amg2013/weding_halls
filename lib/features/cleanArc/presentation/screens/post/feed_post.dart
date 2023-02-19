import 'package:flutter/material.dart';
import '../../../../../utils/app_colors.dart';

class FeedPost extends StatefulWidget {
  const FeedPost({super.key});

  @override
  State<FeedPost> createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  //ImageSource =ImageSource.gallery ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'اضافة قاعة جديدة ',
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 400,
        color: AppColors.cyan,
        width: double.infinity,
        child:
            //for uploding images
            Column(children: [
          SizedBox(
            width: 200,
            height: 400,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: ElevatedButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.add_a_photo),
                        label: const Text(' اضف  الصورة الرئيسية للقاعة')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: ElevatedButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.add_a_photo),
                        label: const Text(' اضف بعض  صور القاعة')),
                  ),
                ]),
          ),
          SizedBox(
            width: 200,
            height: 400,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: ElevatedButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.add_a_photo),
                        label: const Text(' اضف  الصورة الرئيسية للقاعة')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: ElevatedButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.add_a_photo),
                        label: const Text(' اضف بعض  صور القاعة')),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
