// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:wedding_halls/features/cleanArc/domain/rebrisotrey/auth_methods.dart';
import 'package:wedding_halls/features/cleanArc/presentation/screens/home_controller/home.dart';
import 'package:wedding_halls/features/cleanArc/presentation/screens/singup/singup.dart';
import 'package:wedding_halls/features/cleanArc/presentation/screens/loging/widgets/text_field_input.dart';
import 'package:wedding_halls/utils/app_strings.dart';
import 'package:wedding_halls/utils/assets_valeus.dart';
import 'package:wedding_halls/utils/media_query_values.dart';
import 'package:wedding_halls/utils/utils.dart';
import 'package:wedding_halls/utils/app_colors.dart';
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
                  height: 260,
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Image.asset(AssetsValues.singinImg, height: 64))
            ]),
            SizedBox(height: AppSizes.a5_OfHeight),
            // texts
            TextFieldInput(
                hintText: AppStrings.uesrNameHint,
                textInputType: TextInputType.text,
                textEditingController: _emailController),
            const SizedBox(height: 20),
            TextFieldInput(
                hintText: AppStrings.passwHint,
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true),
            SizedBox(height: AppSizes.a5_OfHeight),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(AppRoutes.homeScreen),
                        icon: const Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        label: const Text('التسجيل بالفيس بوك')),
                    InkWell(
                        onTap: loginUser,
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            color: Colors.blue,
                          ),
                          child: !_isLoading
                              ? const Text(
                                  'تسجيل الدخول',
                                )
                              : const CircularProgressIndicator(
                                  color: Colors.redAccent),
                        )),
                  ],
                ),

                //SizedBox(height: AppSizes.a5_OfHeight),
                ElevatedButton.icon(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeViwer(),
                        )),
                    icon: Icon(
                      Icons.people_alt_outlined,
                      color: AppColors.blue,
                    ),
                    label: const Text(AppStrings.forPepole)),
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

class MoveToSingUp extends StatelessWidget {
  const MoveToSingUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: const Text(AppStrings.haventAccount),
          padding: const EdgeInsets.symmetric(vertical: 8),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SingUp(),
            ),
          ),
          child: Container(
            child: const Text(
              AppStrings.makeNewAccount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
        ),
      ],
    );
  }
}
