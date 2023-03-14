// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wedding_halls/features/main_features/domain/resources/auth_methods.dart';
import 'package:wedding_halls/features/authantcaion/presentaion/loging/widgets/text_field_input.dart';
import 'package:wedding_halls/utils/app_strings.dart';
import 'package:wedding_halls/utils/assets_valeus.dart';
import 'package:wedding_halls/utils/media_query_values.dart';
import 'package:wedding_halls/config/constants/utils.dart';
import 'package:wedding_halls/utils/app_colors.dart';

import '../../../main_features/presentation/screens/home_viwer/home_viwer.dart';
import 'widgets/singup_bottom_row.dart';
//import 'package:wedding_halls/features/cleanArc/domain/entities/post_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);

    if (res == "success") {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeViwer(),
      ));
      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      // ignore: use_build_context_synchronously
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Stack(children: [
              Container(
                  width: double.infinity,
                  height: 260.h,
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Image.asset(AssetsValues.singinImg, height: 64.h))
            ]),
            SizedBox(height: AppSizes.a5_OfHeight),
            // texts
            TextFieldInput(
                hintText: AppStrings.uesrNameHint,
                textInputType: TextInputType.text,
                textEditingController: _emailController),
            SizedBox(height: 15.h),
            TextFieldInput(
                hintText: AppStrings.passwHint,
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true),
            // SizedBox(height: AppSizes.a5_OfHeight),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: loginUser,
                        child: Container(
                          width: 300.w,
                          height: 40.h,
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(20.sp),
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            color: Colors.blue,
                          ),
                          child: !_isLoading
                              ? Text(
                                  AppStrings.login,
                                  style: TextStyle(fontSize: 15.sp),
                                )
                              : const CircularProgressIndicator(
                                  color: Colors.redAccent),
                        )),
                    SizedBox(
                      width: 300.w,
                      child: ElevatedButton.icon(
                          onPressed: () => Navigator.of(context)
                              .pushNamed(AppRoutes.homeScreen),
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                          label: Text(
                            AppStrings.loginByFacebook,
                            style: TextStyle(fontSize: 15.sp),
                          )),
                    ),
                  ],
                ),

                SizedBox(height: AppSizes.a5_OfHeight),
                SizedBox(
                    width: 200.w,
                    child: ElevatedButton.icon(
                        onPressed: () => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const HomeViwer(),
                            )),
                        icon: Icon(
                          Icons.people_alt_outlined,
                          color: AppColors.blue,
                        ),
                        label: Text(
                          AppStrings.forPepole,
                          style: TextStyle(fontSize: 15.sp),
                        ))),
                // SizedBox(height: AppSizes.a5_OfHeight),
              ],
            ),

            Flexible(child: Container(), flex: 2),
            // final row
            const MoveToSingUp(),
          ],
        ),
      ),
    );
  }
}
