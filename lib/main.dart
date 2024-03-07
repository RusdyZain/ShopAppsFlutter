import 'package:flutter/material.dart';
import 'package:shopapps/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
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
      home: const LoginPage(),
    );
  }
}