import 'package:flutter/material.dart';
import 'package:ktm_apps/pages/homePage.dart';

class Menus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListMenus(),
    );
  }
}

class ListMenus extends StatefulWidget {
  @override
 State<StatefulWidget> createState() {
    return _ListMenusState();
  }
}

class _ListMenusState extends State<ListMenus> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(Colors.grey),
    HomePage(Colors.red),
    HomePage(Colors.orange),
  ];
void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(
    //    title: Text('My Flutter App'),
    //  ),
     body: _children[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped,
       currentIndex: _currentIndex,
       selectedItemColor: Colors.amber[800],
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.calendar_today),
           title: new Text('Events'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.info),
           title: Text('News')
         )
       ],
     ),
   );
  }
}
