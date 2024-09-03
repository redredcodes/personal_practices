import 'package:fiixplz/home_screen.dart';
import 'package:flutter/material.dart';

class SumApp extends StatelessWidget {
  const SumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      color: Colors.purple,
    );
  }
}