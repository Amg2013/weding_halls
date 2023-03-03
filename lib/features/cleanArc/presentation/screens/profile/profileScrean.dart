// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_halls/utils/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white_1,
        title: const Text("حسابي"),
        centerTitle: true,
        actions: const [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.settings_rounded),
          // )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            // COLUMN THAT WILL CONTAIN THE PROFILE
            Column(
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80",
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "علاء سيد",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("صاحب قاعة قاعة الماسة")
              ],
            ),
            const SizedBox(height: 25),

            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    "اكمل معلومات حسابك",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // continer decortion
            Row(
                children: List.generate(
              6,
              (index) {
                return Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 6),
                    height: 7,
                    width: 5,
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                    ),
                  ),
                );
              },
            )),
            const SizedBox(height: 10),
            // row for add image and conect the developer
            SizedBox(
              height: 180,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final card = profileCompletionCards[index];
                  return SizedBox(
                    width: 160,
                    child: Card(
                      shadowColor: Colors.black12,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              card.icon,
                              size: 30,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              card.title,
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              child: Text(card.buttonText),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const Padding(padding: EdgeInsets.only(right: 5)),
                itemCount: profileCompletionCards.length,
              ),
            ),
            const SizedBox(height: 35),
            ...List.generate(
              customListTiles.length,
              (index) {
                final tile = customListTiles[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.black12,
                    child: ListTile(
                      leading: Icon(tile.icon),
                      title: Text(tile.title),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ProfileCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;
  ProfileCompletionCard({
    required this.title,
    required this.buttonText,
    required this.icon,
  });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "لحسابك اضافة قاعة جديدة ",
    icon: CupertinoIcons.person_circle,
    buttonText: "اضافة",
  ),
  ProfileCompletionCard(
    title: "اضافة صورة",
    icon: CupertinoIcons.photo,
    buttonText: "رفع",
  ),
  ProfileCompletionCard(
    title: " تبليغ عن مشكلة",
    icon: CupertinoIcons.square_list,
    buttonText: "تواصل مع المبرج ",
  ),
];

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.insights,
    title: "الحجوزات ",
  ),
  CustomListTile(
    icon: Icons.location_on_outlined,
    title: "اضف عنوانك",
  ),
  CustomListTile(
    title: "الاشعارات ",
    icon: CupertinoIcons.bell,
  ),
  CustomListTile(
    title: "تسجيل خروج",
    icon: CupertinoIcons.arrow_right_arrow_left,
  ),
];
