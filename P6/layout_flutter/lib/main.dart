import 'package:flutter/material.dart';
import 'package:layout_flutter/layout/TitleSection.dart';
import 'package:layout_flutter/layout/ButtonSection.dart';
import 'package:layout_flutter/layout/TextSection.dart';
import 'package:layout_flutter/layout/ImageSection.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Alexander Agung Raya-2341720040',
      home: Scaffold(
        appBar: AppBar(title: const Text('Alexander Agung Raya - 2341720040')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/kunti.png'),
              TitleSection(name: 'Hantu', location: 'Kota Hantu'),
              ButtonSection(),
              TextSection(
                description:
                    'Kuntilanak adlah hantu perempuan dalam mitologi indonesia. ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  final String description;

  const TextSection({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
