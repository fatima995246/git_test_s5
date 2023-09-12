import 'package:flutter/material.dart';

class Tasbeh_tab extends StatelessWidget {
  double turns = 0.0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(100),
          child: Image.asset('assets/images/head_sebha_logo.png'),
        ),
      ],
    );
  }
}
