import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/app_button.dart';
import 'package:instagram_clone/widgets/input_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fHww"),
                ),
                Positioned(
                  bottom: -10,
                  right: -10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo,),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            InputField(
              onChange: (value) {},
              prefixIcon: Icons.person,
              hintText: "Username",
            ),
            const SizedBox(
              height: 24,
            ),
            InputField(
              onChange: (value) {},
              prefixIcon: Icons.email_outlined,
              hintText: "Email",
            ),
            const SizedBox(
              height: 24,
            ),
            InputField(
              onChange: (value) {},
              prefixIcon: Icons.password,
              hintText: "Password",
              isPassword: true,
            ),
            const SizedBox(
              height: 24,
            ),
            InputField(
              onChange: (value) {},
              prefixIcon: Icons.details,
              hintText: "Bio",
            ),
            const SizedBox(
              height: 24,
            ),
            AppButton(onPress: () {}, text: "Sign Up"),
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
                    child: const Text("Already have an account?")),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const Text(
                      "Log In",
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
