import 'package:flutter/material.dart';
import 'package:flutter_proxta/attendance_tab/firstScreen.dart';
import 'package:flutter_proxta/attendance_tab/secondScreen.dart';

class FourthFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.orange,
            title:   TabBar(
              tabs: [
                Tab(child: Text("Attendance",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white),),),
                Tab(child: Text("Exams",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white),),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
            ],
          ),
        ),
      ),
    );

  }

}