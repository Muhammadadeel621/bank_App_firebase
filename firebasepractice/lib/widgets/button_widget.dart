import 'package:firebasepractice/constants/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String textt;
  const ButtonWidget({
    super.key,
    required this.textt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.onboardingbtn,
      ),
      child: Center(
        child: Text(
          textt,
          style: const TextStyle(
              fontSize: 16,
              color: AppColors.textColor,
              fontFamily: "assets/fonts/Poppins-Bold.ttf"),
        ),
      ),
    );
  }
}
