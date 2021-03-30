import 'package:flutter/material.dart';
import 'package:responsive_layout_web/style/colors/colors.dart';
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
        primaryColor:primaryColor ,
        accentColor: accentColor,
        iconTheme:IconThemeData(color:iconColor) ,
      ),
      home: HomeScreen(),
    );}}