import 'package:cookies_app/pages/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CookiesApp());
}

class CookiesApp extends StatelessWidget {
  const CookiesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cookies',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
