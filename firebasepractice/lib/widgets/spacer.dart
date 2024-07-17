import 'package:flutter/material.dart';

class Spacerr extends StatelessWidget {
  final double? spHeight;
  final double? spWidth;
  const Spacerr({super.key, this.spHeight, this.spWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spHeight,
      width: spWidth,
    );
  }
}
