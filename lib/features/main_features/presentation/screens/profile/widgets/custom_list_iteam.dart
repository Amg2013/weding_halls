import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
