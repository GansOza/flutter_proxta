import './fragments/first_fragment.dart';
import './fragments/second_fragment.dart';
import './fragments/third_fragment.dart';
import 'package:flutter/material.dart';

import 'Constant.dart';
import 'fragments/fourth_fragment.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class MyHomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Time Table", Icons.timeline),
    new DrawerItem("Exam Schedule", Icons.view_column),
    new DrawerItem("Attendance", Icons.add_to_home_screen),
    new DrawerItem("Result", Icons.folder_special),
    new DrawerItem("Profile", Icons.person),
    new DrawerItem("Logout", Icons.power_settings_new)
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}
class HomePageState extends State<MyHomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new FirstFragment();
      case 1:
        return new SecondFragment();
      case 2:
        return new ThirdFragment();
      case 3:
        return FourthFragment();

      default:
        return new Text("Error");
    }
  }

  void navigationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FourthFragment()),
    );
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Ganesh Oza"),
                accountEmail: new Text("Software Developer"),
                currentAccountPicture: new FadeInImage(
                  placeholder: new AssetImage("assets/ic_proxta_logo.png"),
                  image: new NetworkImage(
                      'https://www.logolynx.com/images/logolynx/99/99ee3db22b1fd3c57d7072531167117c.jpeddg'),width: 350.0,height: 150.0,
                )
            ),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
