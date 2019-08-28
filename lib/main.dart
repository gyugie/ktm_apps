import 'package:flutter/material.dart';
import 'package:ktm_apps/auth/login.dart';

void main(){
  runApp(MaterialApp(
    title: 'KTM APPS',
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
    );
  }
}