import 'package:flutter/material.dart';
import 'package:responsive_layout_web/ui/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "responsive_layout",
      theme: ThemeData(
        primaryColor:Color(0xFF283C63) ,
        accentColor:Color(0xFFE7E9F5) ,
        iconTheme:IconThemeData(color: Colors.black.withOpacity(0.4)) ,
      ),
      home: HomeScreen(),
    );}}