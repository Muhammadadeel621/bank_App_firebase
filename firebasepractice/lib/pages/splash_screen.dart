import 'package:firebasepractice/constants/colors.dart';
import 'package:firebasepractice/utils/check_login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  islogin splashScreen = islogin();

  @override
  @override
  void initState() {
    super.initState();
    islogin().isLogin(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Text(
          "Firebase Tutorials Begins",
          style: TextStyle(color: AppColors.textColor),
        ),
      ),
    );
  }
}
