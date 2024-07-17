import 'package:firebasepractice/constants/colors.dart';
import 'package:flutter/material.dart';

class TextWidgett extends StatelessWidget {
  final String labelTitle;

  const TextWidgett({super.key, required this.labelTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelTitle,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.textFieldlabelText,
        fontSize: 12,
        fontFamily: "assets/fonts/Poppins-Regular.ttf",
      ),
    );
  }
}
