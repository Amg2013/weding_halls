// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:wedding_halls/features/cleanArc/domain/rebrisotrey/auth_methods.dart';
import 'package:wedding_halls/features/cleanArc/presentation/screens/mainhome/main_homPage.dart';
import 'package:wedding_halls/features/cleanArc/presentation/screens/singup/singup.dart';
import 'package:wedding_halls/features/cleanArc/presentation/widgets/text_field_input.dart';
import 'package:wedding_halls/utils.dart';
import 'package:wedding_halls/utils/app_colors.dart';
//import 'package:wedding_halls/features/cleanArc/domain/entities/post_card.dart';

class AouthScrean extends StatefulWidget {
  const AouthScrean({super.key});

  @override
  State<AouthScrean> createState() => _AouthScreanState();
}

class _AouthScreanState extends State<AouthScrean> {
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
        builder: (context) => const MAINHOME(),
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
            // logo and
            Stack(children: [
              Container(
                  height: 260,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Image.asset('assets/images/logo.png', height: 64))
            ]),
            const SizedBox(height: 20),
            // texts
            TextFieldInput(
                hintText: 'ادخل اسم المستخدم او الايميل',
                textInputType: TextInputType.text,
                textEditingController: _emailController),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
                hintText: ' ادخل كلمة المرور',
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true),
            const SizedBox(height: 24),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MAINHOME(),
                        )),
                    icon: const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    label: const Text('للعريس')),
                // login

                InkWell(
                  onTap: loginUser,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          color: Colors.blue,
                        ),
                        child: !_isLoading
                            ? const Text(
                                'تسجيل الدخول',
                              )
                            : const CircularProgressIndicator(
                                color: Colors.redAccent),
                      )
                    ],
                  ),
                ),
//facebook auth
                ElevatedButton.icon(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MAINHOME(),
                        )),
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    label: const Text('التسجيل بالفيس بوك')),
              ],
            ),

            const SizedBox(height: 12),
            Flexible(child: Container(), flex: 2),
            // final row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text('ليس لديك حساب كا صاحب قاعة ؟'),
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
                      ' انشاء حساب',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
