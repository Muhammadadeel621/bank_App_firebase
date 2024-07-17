import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:firebasepractice/constants/colors.dart';
import 'package:firebasepractice/pages/login_screen.dart';
import 'package:firebasepractice/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text("Post Page"),
        actions: [
          IconButton(
              onPressed: () {
                auth.signOut().then((value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const loginScreen()));
                }).onError((error, StackTrace) {
                  utils().toastmessage(error.toString());
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Center hai WIdget",
              style: TextStyle(color: AppColors.textColor, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
