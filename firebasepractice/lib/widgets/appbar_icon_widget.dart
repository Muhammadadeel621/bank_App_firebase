import 'package:firebasepractice/constants/colors.dart';
import 'package:flutter/material.dart';

class CircleHome extends StatelessWidget {
  const CircleHome(
      {super.key, this.homeIcon, this.navigatorr, this.isBackIcon = true});

  final IconData? homeIcon;
  final Widget? navigatorr;
  final bool isBackIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
          color: AppColors.homeCircleClr,
          borderRadius: BorderRadius.circular(50)),
      child: InkWell(
        onTap: () {
          if (isBackIcon) {
            Navigator.pop(context);
          } else if (navigatorr != null) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => navigatorr!));
          }
        },
        child: Center(
            child: Icon(
          homeIcon,
          color: AppColors.textColor,
          size: 15,
        )),
      ),
    );
  }
}
