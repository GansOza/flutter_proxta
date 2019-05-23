
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: new Image.asset(
          'assets/ic_proxta_logo.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}