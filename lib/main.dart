import 'package:bookstore_dicoding/pages/sign_in/view/sign_in_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookStore Dicoding',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3C87CC)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInView(),
    );
  }
}
