import 'package:flutter/material.dart';
import 'package:shopapps/pages/HomePage.dart';
import 'package:shopapps/widgets/Pallete.dart';

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
        scaffoldBackgroundColor: Pallete.bgColor,
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => HomePage(),
        "homePage": (context) => HomePage(),
      },
    );
  }
}
