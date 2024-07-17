import 'package:firebasepractice/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomtextFormField extends StatefulWidget {
  const CustomtextFormField({
    Key? key,
    required this.hinttextt,
    this.controlText,
    this.textFieldIcon,
    this.textFieldIConn,
    this.obscureText = false,
    this.fontweightt,
    this.validateText,
  }) : super(key: key);

  final bool obscureText;
  final String hinttextt;
  final Icon? textFieldIcon;
  final Widget? textFieldIConn;
  final FontWeight? fontweightt;
  final TextEditingController? controlText;
  final String? Function(String?)? validateText;

  @override
  _CustomtextFormFieldState createState() => _CustomtextFormFieldState();
}

class _CustomtextFormFieldState extends State<CustomtextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.textfieldborder)),
      ),
      child: TextFormField(
        validator: widget.validateText,
        controller: widget.controlText,
        obscureText: widget.obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: widget.hinttextt,
          hintStyle: TextStyle(
              color: AppColors.textColor,
              fontWeight: widget.fontweightt,
              fontSize: 10),
          prefixIcon: Container(
            child: widget.textFieldIcon,
          ),
          suffixIcon: widget.textFieldIConn != null
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: widget.textFieldIConn,
                )
              : null,
        ),
      ),
    );
  }
}
