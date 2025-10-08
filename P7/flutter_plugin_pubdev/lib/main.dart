import 'package:flutter/material.dart';
import 'red_text_widget.dart'; 

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellowAccent,
              width: 150,
              padding: const EdgeInsets.all(8.0),
              child: const RedTextWidget(
                text: 'You have pushed the button this many times:',
              ),
            ),
            const SizedBox(height: 16),
            Container(
              color: Colors.greenAccent,
              width: 200,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'You have pushed the button this many times:',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
