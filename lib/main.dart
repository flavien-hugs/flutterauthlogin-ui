import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/auth/login.dart';

void main() {
  runApp(const MyAuthApp());
}

class MyAuthApp extends StatelessWidget {
  const MyAuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
