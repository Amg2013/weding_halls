import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import '../../../domain/rebrisotrey/auth_methods.dart';
import '../loging/login.dart';
import '../../../../../utils/app_colors.dart';
import '../../widgets/text_field_input.dart';
import '../../../../../utils.dart';
import '../mainhome/main_homPage.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  bool _isLoading = false;
  Uint8List? _image;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _bioController.dispose();
  }

  void signUpUser() async {
    // set loading to true
    setState(() {
      _isLoading = true;
    });

    // signup user using our authmethodds
    String res = await AuthMethods().signUpUser(
        email: _emailController.text,
        password: _passwordController.text,
        username: _usernameController.text,
        bio: _bioController.text,
        file: _image!);
    // if string returned is sucess, user has been created
    if (res == "success") {
      setState(() {
        _isLoading = true;
      });
      // navigate to the home screen
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const MAINHOME()),
      );
    } else {
      setState(() {
        _isLoading = false;
      });
      // show the error
      showSnackBar(context, res);
    }
  }

  selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    // set state because we need to display the image we selected on the circle avatar
    setState(() {
      _image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        backgroundColor: AppColors.blue,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(flex: 2, child: Container()),
                SvgPicture.asset('assets/icons/cart.svg', height: 64),
                const SizedBox(height: 64),
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 64, backgroundImage: MemoryImage(_image!))
                        : const CircleAvatar(
                            radius: 64,
                            //backgroundImage: Image.asset('assets/images/a_1.jpg'),
                            backgroundImage: NetworkImage(
                                'data:image/jpeg;base64,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'),
                          ),
                    Positioned(
                        bottom: -10,
                        left: 80,
                        child: IconButton(
                            onPressed: selectImage,
                            icon: const Icon(Icons.add_a_photo)))
                  ],
                ),
                const SizedBox(height: 24),
                TextFieldInput(
                    hintText: '                      ادخل اسم المستخدم',
                    textInputType: TextInputType.text,
                    textEditingController: _usernameController),
                const SizedBox(height: 24),
                TextFieldInput(
                  hintText: '                                   ادخل ايميل',
                  textInputType: TextInputType.emailAddress,
                  textEditingController: _emailController,
                ),
                const SizedBox(height: 24),
                TextFieldInput(
                    hintText: '                       ادخل كلمة مرور',
                    textInputType: TextInputType.text,
                    textEditingController: _passwordController,
                    isPass: true),
                const SizedBox(height: 24),
                TextFieldInput(
                    hintText: '                    ادخل وصف عنك',
                    textInputType: TextInputType.text,
                    textEditingController: _bioController),
                const SizedBox(height: 24),
                InkWell(
                  onTap: signUpUser,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        color: Color.fromARGB(255, 247, 246, 246)),
                    child: !_isLoading
                        ? const Text(
                            'انشا حساب',
                          )
                        : CircularProgressIndicator(color: darkBlue),
                  ),
                ),
                const SizedBox(height: 12),
                Flexible(flex: 2, child: Container()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text('تسجيل دخول ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AouthScrean(),
                      )),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text(' !بالفعل لدي حساب '),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
