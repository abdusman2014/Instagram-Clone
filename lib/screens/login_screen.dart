import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/app_button.dart';
import 'package:instagram_clone/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(),
            ),
            SvgPicture.asset(
              "assets/images/ic_instagram.svg",
              color: primaryColor,
              height: 67,
            ),
            const SizedBox(
              height: 60,
            ),
            InputField(
              onChange: (value) {},
              prefixIcon: Icons.email_outlined,
              hintText: "enter your email",
            ),
            const SizedBox(
              height: 24,
            ),
            InputField(
              onChange: (value) {},
              prefixIcon: Icons.password,
              hintText: "enter your password",
              isPassword: true,
            ),
            const SizedBox(
              height: 24,
            ),
            AppButton(onPress: () {}, text: "Log In"),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text("Don't have an account?")),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 60,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
