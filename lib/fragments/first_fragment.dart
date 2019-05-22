import 'package:flutter/material.dart';

class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      Size size = MediaQuery.of(context).size;
        return new Scaffold(
      backgroundColor: Colors.white,
      body:  Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/ic_background.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: new Image.asset("assets/ic_proxta_logo.png",
              width:  190,
              height: 190,
            ), /* add child content here */
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("ATTEND"),
              Text("  |"),
              Text("  LEARN"),
              Text("  |"),
              Text("  PERFORM"),
            ],

          )
        ],
      ),
    );
  }

}