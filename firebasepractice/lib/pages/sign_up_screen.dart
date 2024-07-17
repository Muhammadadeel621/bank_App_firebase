import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:firebasepractice/constants/colors.dart';
import 'package:firebasepractice/pages/login_screen.dart';
import 'package:firebasepractice/utils/utils.dart';
import 'package:firebasepractice/widgets/appbar_widget.dart';
import 'package:firebasepractice/widgets/button_widget.dart';
// import 'package:firebasepractice/widgets/appbar_widget.dart';
// import 'package:firebasepractice/widgets/button_widget.dart';
import 'package:firebasepractice/widgets/spacer.dart';
import 'package:firebasepractice/widgets/text_form_field.dart';
import 'package:firebasepractice/widgets/text_widget.dart';
import 'package:firebasepractice/widgets/text_widget_mod.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String name = "", email = '', password = '';
  int number = 0;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Spacerr(spHeight: 30),
              const AppbarWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidget(
                          textt: "Sign Up",
                          textSize: 32,
                          textColor: AppColors.textColor,
                          fonttext: "assets/fonts/Poppins-Medium.ttf",
                        ),
                      ],
                    ),
                    const Spacerr(spHeight: 10, spWidth: 0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidgett(labelTitle: "Full Name"),
                      ],
                    ),
                    CustomtextFormField(
                      // validateText: (value) {
                      //   if (value!.isEmpty) {
                      //     return "Enter your Full name";
                      //   }
                      //   return null;
                      // },
                      obscureText: false,
                      controlText: nameController,
                      hinttextt: "Dennis Nzioki",
                      textFieldIcon: const Icon(
                        Icons.mail_outline,
                        color: AppColors.textColor,
                      ),
                    ),
                    const Spacerr(spHeight: 10, spWidth: 0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidgett(labelTitle: "Phone Number"),
                      ],
                    ),
                    CustomtextFormField(
                      // validateText: (value) {
                      //   if (value!.isEmpty) {
                      //     return "Enter your Mobile Number";
                      //   }
                      //   return null;
                      // },
                      controlText: numberController,
                      obscureText: false,
                      hinttextt: "+923331234567",
                      textFieldIcon: const Icon(
                        Icons.call,
                        color: AppColors.textColor,
                      ),
                    ),
                    const Spacerr(spHeight: 10, spWidth: 0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidgett(labelTitle: "Email Address"),
                      ],
                    ),
                    CustomtextFormField(
                      // validateText: (value) {
                      //   if (value!.isEmpty) {
                      //     return "Enter your mail";
                      //   }
                      //   return null;
                      // },
                      controlText: emailController,
                      obscureText: false,
                      hinttextt: "denisnzioki@gmail.com",
                      textFieldIcon: const Icon(
                        Icons.mail_outline,
                        color: AppColors.textColor,
                      ),
                    ),
                    const Spacerr(spHeight: 10, spWidth: 0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidgett(labelTitle: "Password"),
                      ],
                    ),
                    CustomtextFormField(
                      obscureText: true,
                      // validateText: (value) {
                      //   if (value!.isEmpty) {
                      //     return "Enter the Password";
                      //   }
                      //   return null;
                      // },
                      controlText: passwordController,
                      hinttextt: "........",
                      fontweightt: FontWeight.w900,
                      textFieldIcon: const Icon(
                        Icons.lock_open_sharp,
                        color: AppColors.textColor,
                      ),
                      textFieldIConn: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColors.textColor,
                      ),
                    ),
                    const Spacerr(spHeight: 25, spWidth: 0),
                    InkWell(
                      onTap: () {
                        if (_formkey.currentState!.validate()) {
                          _auth
                              .createUserWithEmailAndPassword(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString(),
                              )
                              .then((Value) {})
                              .onError((error, stackTrace) {
                            utils().toastmessage(error.toString());
                          });
                        }

                        if (nameController.text.isEmpty ||
                            passwordController.text.isEmpty ||
                            emailController.text.isEmpty ||
                            numberController.text.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  "All fields are required",
                                  style: TextStyle(fontSize: 14),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("OK"),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  "Sign Up Done",
                                  style: TextStyle(fontSize: 14),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("OK"),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: const ButtonWidget(
                        textt: "Sign Up",
                      ),
                    ),
                    const Spacerr(spHeight: 25, spWidth: 0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextWidget(
                          textt: "Already have an account.",
                          textSize: 14,
                          textColor: AppColors.sstext,
                          fonttext: "assets/fonts/Poppins-Regular.ttf",
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const loginScreen(),
                              ),
                            );
                          },
                          child: const TextWidget(
                            textt: "Sign In",
                            textSize: 14,
                            textColor: AppColors.ssstext,
                            fonttext: "assets/fonts/Poppins-Regular.ttf",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
