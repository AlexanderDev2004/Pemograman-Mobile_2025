import 'package:flutter/material.dart';
import 'layout/hantu_gallery.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alexander Agung Raya (2341720040)',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D0D0D),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B0000),
          titleTextStyle: TextStyle(
            fontFamily: 'Creepster',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            letterSpacing: 1.5,
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: const HantuGalleryPage(
        title: 'Galeri Hantu Indonesia & Internasional BY Alexander Agung Raya (2341720040)',
      ),
    );
  }
}
