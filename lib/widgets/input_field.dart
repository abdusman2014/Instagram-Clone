import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';

class InputField extends StatefulWidget {
  const InputField(
      {super.key,
      required this.onChange,
      required this.prefixIcon,
      this.hintText = "",
      this.isPassword = false});

  final Function(String value) onChange;
  final IconData prefixIcon;
  final String hintText;
  final bool isPassword;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Platform.isWindows
          ? MediaQuery.of(context).size.width / 2
          : MediaQuery.of(context).size.width * 3.5/4,
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: mobileSearchColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: TextField(
          obscureText: !showPassword && widget.isPassword,
          decoration: InputDecoration(
              prefixIcon: Icon(widget.prefixIcon),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        /* Clear the search field */
                        setState(() {
                          showPassword = !showPassword;
                        });
                        print("change");
                      },
                    )
                  : Container(
                      width: 10,
                    ),
              hintText: widget.hintText,
              border: InputBorder.none),
          onChanged: widget.onChange,
        ),
      ),
    );
  }
}
