// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../resources/auth_methods.dart';
import '../../../authantcaion/data/user.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user!;
  Future<void> refreshUser() async {
    // ignore: unused_local_variable
    User user = await _authMethods.getUserDetails();
    notifyListeners();
  }
}
