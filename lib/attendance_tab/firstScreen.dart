
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: new Image.asset(
          'assets/ic_background.png',

          fit: BoxFit.fill,
        ),
      ),
    );
  }
}