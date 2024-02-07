import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPress, required this.text});
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Platform.isWindows
          ? MediaQuery.of(context).size.width / 2
          : MediaQuery.of(context).size.width * 3.5 / 4,
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Text(text)),
    );
  }
}
