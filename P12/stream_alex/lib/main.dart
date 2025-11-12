import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  int lastNumber = 0;
  String values = '';

  late StreamController<int> numberStreamController;
  late NumberStream numberStream;
  late StreamSubscription<int> subscription;

  Color bgColor = Colors.white;

  @override
  void initState() {
    super.initState();

    // 🔹 1. Inisialisasi Stream dan Controller
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    // 🔹 2. Dapatkan Stream dari controller
    Stream<int> stream = numberStreamController.stream;

    // 🔹 3. Dengarkan stream
    subscription = stream.listen(
      (event) {
        setState(() {
          lastNumber = event;
          values += '$event - ';
        });
      },
      onError: (error) {
        setState(() {
          lastNumber = -1;
          values += 'Error! - ';
        });
      },
      onDone: () {
        setState(() {
          values += 'Done';
        });
      },
    );
  }

  void addRandomNumber() {
    final random = Random();
    final myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  void stopStream() {
    // 🔹 Menutup stream & subscription
    numberStreamController.close();
    subscription.cancel();
    setState(() {
      values += 'Stopped - ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Alex')),
      body: Container(
        color: bgColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              lastNumber.toString(),
              style: const TextStyle(fontSize: 32),
            ),
            Text(
              values,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: addRandomNumber,
                  child: const Text('Add Random Number'),
                ),
                ElevatedButton(
                  onPressed: stopStream,
                  child: const Text('Stop Stream'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    numberStreamController.close();
    super.dispose();
  }
}
