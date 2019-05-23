import 'package:flutter/material.dart';
import 'dart:async';
import 'Constant.dart';
import 'fragments/fourth_fragment.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'splash_screen.dart';

main() {
  runApp(new MaterialApp(
    title: 'Proxta',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        primaryColor: Colors.orange,
        primaryColorDark: Colors.orange[300],
        primarySwatch: Colors.red
    ),

    home: new SplashScreen(),

    routes: <String, WidgetBuilder>{
      //SPLASH_SCREEN: (BuildContext context) => new MapScreen(),
      PROFILE: (BuildContext context) => new LoginPage(),
      HOMEPAGE:(BuildContext context) => new MyHomePage(),
    //  Attend:(BuildContext context) => new FourthFragment(),

    },

  ));

}

