import 'package:flutter/material.dart';
import 'package:shopapps/pages/HomePage.dart';
import 'package:shopapps/pages/ItemPage.dart';
import 'package:shopapps/pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop Apps',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFCEDDEE),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
