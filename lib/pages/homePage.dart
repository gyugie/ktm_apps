import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Color color;
  HomePage(this.color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('test'),
      backgroundColor: color,
    );
  }
}