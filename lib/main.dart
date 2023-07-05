import 'package:consultancy/layout/responsive.dart';
import 'package:consultancy/screens/home_desktop.dart';
import 'package:flutter/material.dart';
import 'package:consultancy/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveWidget(
          phoneBuilder: HomeScreen_Mobile(),
          iPadMiniBuilder: HomeScreen_Mobile(),
          iPadProBuilder: HomeScreen_Mobile(),
          desktopBuilder: HomeScreen_Desktop()),
    );
  }
}
