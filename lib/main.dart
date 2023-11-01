import 'package:bookstore_dicoding/pages/home/view/home_view.dart';
// import 'package:bookstore_dicoding/pages/sign_in/view/sign_in_view.dart';
import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3C87CC)),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
