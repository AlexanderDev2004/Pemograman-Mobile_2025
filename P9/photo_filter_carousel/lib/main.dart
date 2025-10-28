import 'package:flutter/material.dart';
import 'widget/filter_carousel.dart';

void main() {
  runApp(const FilterApp());
}

class FilterApp extends StatelessWidget {
  const FilterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilterCarousel(),
    );
  }
}
