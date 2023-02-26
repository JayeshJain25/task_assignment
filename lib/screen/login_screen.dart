import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:task_assignment/routes/route_name.dart';
import 'package:task_assignment/utils/common_function.dart';

import '../utils/constants.dart';
import '../widget/common_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _isObscure = true;

  @override
  void dispose() {
    passController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: bgClr,
          body: Padding(
            padding: const EdgeInsets.all(22.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 0.12.sh,
                  ),
                  Center(
                    child: Image.asset(
                      logo,
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 65.h,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    elevation: 4,
                    child: inputTextFieldWithIcon(
                      hintTxt: "Email Address",
                      icon: const Icon(
                        Iconsax.sms4,
                      ),
                      type: TextInputType.emailAddress,
                      controller: emailController,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(18),
                    elevation: 4,
                    child: passwordField(
                      controller: passController,
                      type: TextInputType.visiblePassword,
                      icon: IconButton(
                        icon: Icon(
                          _isObscure ? Iconsax.eye4 : Iconsax.eye_slash5,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      isObscure: _isObscure,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  textBtn(
                    bgClr: btnBgClr,
                    primaryClr: btnBgClr,
                    color: Colors.white,
                    text: "Login",
                    function: () {
                      moveToNextScreen(context, RouteName.homeScreen);
                    },
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        text: "Signup",
                        color: smallTextClr,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      text(
                        text: "Forgot Password?",
                        color: smallTextClr,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
