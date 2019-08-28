import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomMenus(),
    );
  }
}

class BottomMenus extends StatefulWidget {
  BottomMenus({Key key}) : super(key: key);

  @override
  _BottomMenusState createState() => _BottomMenusState();
}

class _BottomMenusState extends State<BottomMenus> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = 
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget> [
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Event',
      style: optionStyle
    ),
    Text(
      'Index 2: News',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Events')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            title: Text('News')
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}