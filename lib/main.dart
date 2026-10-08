import 'package:flutter/material.dart';
import 'package:izinku/login.dart';
import 'package:izinku/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/login':(_) => const Login(), 
        '/home':(_) => const HomePage(),
      },
    );
  }
}
