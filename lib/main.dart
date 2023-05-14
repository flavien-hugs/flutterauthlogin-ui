import 'package:flutter/material.dart';
import 'pages/auth/login.dart';

void main() {
  runApp(const MyAuthApp());
}

class MyAuthApp extends StatelessWidget {
  const MyAuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
