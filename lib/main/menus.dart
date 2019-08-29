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
       backgroundColor: Colors.orange,
       type: BottomNavigationBarType.fixed,
       onTap: onTabTapped,
       currentIndex: _currentIndex,
      //  selectedItemColor: Colors.amber[50],
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home, color: Colors.white),
           title: new Text('Home', style: TextStyle(color: Colors.white)),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.calendar_today, color: Colors.white),
           title: new Text('Events', style: TextStyle(color: Colors.white)),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.new_releases, color: Colors.white),
           title: Text('News', style: TextStyle(color: Colors.white))
         ),
          BottomNavigationBarItem(
           icon: Icon(Icons.new_releases, color: Colors.white),
           title: Text('News', style: TextStyle(color: Colors.white))
         ),
       ],
     ),
   );
  }
}
