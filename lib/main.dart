import 'package:flutter/material.dart';

import './modules/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        fontFamily: 'IBM Plex Sans',
        appBarTheme: const AppBarTheme(color: Color(0xFFFAFAFA)),
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      ),
      home: const HomeScreen(),
    );
  }
}
