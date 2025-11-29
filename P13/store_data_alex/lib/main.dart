import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure Storage Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late File myFile;
  String fileText = '';
  String documentPath = '';
  String tempPath = '';

  final storage = const FlutterSecureStorage();
  final pwdController = TextEditingController();
  String myPass = '';

  final String myKey = "myPass";

  @override
  void initState() {
    super.initState();
    getPaths().then((_) {
      myFile = File('$documentPath/pizzas.txt');
      writeFile();
    });
  }

  Future<void> getPaths() async {
    final docDir = await getApplicationDocumentsDirectory();
    final tmpDir = await getTemporaryDirectory();

    setState(() {
      documentPath = docDir.path;
      tempPath = tmpDir.path;
    });
  }

  Future<bool> writeFile() async {
    try {
      await myFile.writeAsString('Margherita, Capricciosa, Napoli');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> readFile() async {
    try {
      String content = await myFile.readAsString();
      setState(() {
        fileText = content;
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> writeToSecureStorage() async {
    await storage.write(key: myKey, value: pwdController.text);
  }

  Future<void> readFromSecureStorage() async {
    String secret = await storage.read(key: myKey) ?? '';
    setState(() {
      myPass = secret;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Path Provider - Alex"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 10),

            // INPUT TEXT
            TextField(
              controller: pwdController,
              decoration: const InputDecoration(
                hintText: "Super Secret String!",
              ),
            ),
            const SizedBox(height: 20),

            // SAVE VALUE BUTTON
            ElevatedButton(
              onPressed: () async => await writeToSecureStorage(),
              child: const Text("Save Value"),
            ),
            const SizedBox(height: 15),

            // READ VALUE BUTTON
            ElevatedButton(
              onPressed: () async => await readFromSecureStorage(),
              child: const Text("Read Value"),
            ),

            const SizedBox(height: 20),

            // SHOW VALUE
            Text(
              myPass,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
