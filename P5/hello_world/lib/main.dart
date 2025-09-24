// // import 'package:flutter/material.dart';
// // import 'package:hello_world/basic_widgets/text_widget.dart';
// // import 'package:hello_world/basic_widgets/image_widget.dart';
// // import 'package:hello_world/basic_widgets/loading_cupertino.dart';
// // import 'package:hello_world/basic_widgets/fab_widget.dart';
// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         // This is the theme of your application.
// //         //
// //         // TRY THIS: Try running your application with "flutter run". You'll see
// //         // the application has a purple toolbar. Then, without quitting the app,
// //         // try changing the seedColor in the colorScheme below to Colors.green
// //         // and then invoke "hot reload" (save your changes or press the "hot
// //         // reload" button in a Flutter-supported IDE, or press "r" if you used
// //         // the command line to start the app).
// //         //
// //         // Notice that the counter didn't reset back to zero; the application
// //         // state is not lost during the reload. To reset the state, use hot
// //         // restart instead.
// //         //
// //         // This works for code too, not just values: Most code changes can be
// //         // tested with just a hot reload.
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //       ),
// //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// //     );
// //   }
// // }

// // // Definition for MyHomePage widget
// // class MyHomePage extends StatefulWidget {
// //   final String title;
// //   const MyHomePage({Key? key, required this.title}) : super(key: key);

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;
// //   int _selectedIndex = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       _counter++;
// //     });
// //   }

// //   // Untuk BottomNavigationBar
// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // ✅ AppBar
// //       appBar: AppBar(
// //         backgroundColor: Theme.of(context).colorScheme.primary,
// //         title: Text(widget.title),
// //         actions: [
// //           IconButton(
// //             icon: const Icon(Icons.info),
// //             onPressed: () {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 const SnackBar(content: Text("Ini AppBar Action!")),
// //               );
// //             },
// //           ),
// //         ],
// //       ),

// //       // ✅ Drawer (menu samping)
// //       drawer: Drawer(
// //         child: ListView(
// //           children: const [
// //             DrawerHeader(
// //               decoration: BoxDecoration(color: Colors.deepPurple),
// //               child: Text("Menu Drawer",
// //                   style: TextStyle(color: Colors.white, fontSize: 20)),
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.home),
// //               title: Text("Home"),
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.settings),
// //               title: Text("Settings"),
// //             ),
// //           ],
// //         ),
// //       ),

// //       // ✅ Body konten utama
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const MyImageWidget(),
// //             const MyTextWidget(),
// //             const MyCupertinoApp(),
// //             const MyFabWidget(),
// //             Text(
// //               'Counter: $_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //             const SizedBox(height: 20),
// //             Text("Tab aktif: $_selectedIndex"),
// //           ],
// //         ),
// //       ),

// //       // ✅ BottomNavigationBar
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: const [
// //           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
// //           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
// //           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
// //         ],
// //         currentIndex: _selectedIndex,
// //         onTap: _onItemTapped,
// //       ),

// // // ✅ FloatingActionButton
// // floatingActionButton: FloatingActionButton(
// //   onPressed: _incrementCounter,
// //   tooltip: 'Increment',
// //   child: const Icon(Icons.add),
// // ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }

// // class MyAlertApp extends StatelessWidget {
// //   const MyAlertApp({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       home: Scaffold(
// //         body: MyLayout(),
// //       ),
// //     );
// //   }
// // }

// // class MyLayout extends StatelessWidget {
// //   const MyLayout({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(8.0),
// //       child: ElevatedButton(
// //         child: const Text('Show alert'),
// //         onPressed: () {
// //           showAlertDialog(context);
// //         },
// //       ),
// //     );
// //   }
// // }

// // showAlertDialog(BuildContext context) {
// //   // set up the button
// //   Widget okButton = TextButton(
// //     child: const Text("OK"),
// //     onPressed: () {
// //       Navigator.pop(context);
// //     },
// //   );

// //   // set up the AlertDialog
// //   AlertDialog alert = AlertDialog(
// //     title: const Text("My title"),
// //     content: const Text("This is my message."),
// //     actions: [
// //       okButton,
// //     ],
// //   );

// //   // show the dialog
// //   showDialog(
// //     context: context,
// //     builder: (BuildContext context) {
// //       return alert;
// //     },
// //   );
// // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const InputSelectionApp());
// }

// class InputSelectionApp extends StatelessWidget {
//   const InputSelectionApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: InputSelectionPage(),
//     );
//   }
// }

// class InputSelectionPage extends StatefulWidget {
//   const InputSelectionPage({super.key});

//   @override
//   State<InputSelectionPage> createState() => _InputSelectionPageState();
// }

// class _InputSelectionPageState extends State<InputSelectionPage> {
//   // State untuk TextField
//   final TextEditingController _nameController = TextEditingController();

//   // State untuk Checkbox
//   bool _isChecked = false;

//   // State untuk Radio Button
//   String _gender = "Laki-laki";

//   // State untuk Switch
//   bool _isDarkMode = false;

//   // State untuk Dropdown
//   String _selectedItem = "Flutter";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Input & Selection Widgets")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             // ✅ TextField
//             TextField(
//               controller: _nameController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Nama",
//                 hintText: "Masukkan nama anda",
//               ),
//             ),
//             const SizedBox(height: 20),

//             // ✅ Checkbox
//             CheckboxListTile(
//               title: const Text("Saya setuju dengan syarat & ketentuan"),
//               value: _isChecked,
//               onChanged: (bool? value) {
//                 setState(() {
//                   _isChecked = value ?? false;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),

//             // ✅ Radio Buttons
//             const Text("Pilih Jenis Kelamin:"),
//             RadioListTile<String>(
//               title: const Text("Laki-laki"),
//               value: "Laki-laki",
//               groupValue: _gender,
//               onChanged: (String? value) {
//                 setState(() {
//                   _gender = value!;
//                 });
//               },
//             ),
//             RadioListTile<String>(
//               title: const Text("Perempuan"),
//               value: "Perempuan",
//               groupValue: _gender,
//               onChanged: (String? value) {
//                 setState(() {
//                   _gender = value!;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),

//             // ✅ Switch
//             SwitchListTile(
//               title: const Text("Aktifkan Dark Mode"),
//               value: _isDarkMode,
//               onChanged: (bool value) {
//                 setState(() {
//                   _isDarkMode = value;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),

//             // ✅ Dropdown
//             DropdownButtonFormField<String>(
//               value: _selectedItem,
//               items: ["Flutter", "Dart", "React", "Vue"].map((String value) {
//                 return DropdownMenuItem(value: value, child: Text(value));
//               }).toList(),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   _selectedItem = newValue!;
//                 });
//               },
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Pilih Teknologi",
//               ),
//             ),
//             const SizedBox(height: 20),

//             // ✅ Tampilkan hasil input
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text(
//                       "Nama: ${_nameController.text}\n"
//                       "Checkbox: $_isChecked\n"
//                       "Gender: $_gender\n"
//                       "DarkMode: $_isDarkMode\n"
//                       "Pilihan: $_selectedItem",
//                     ),
//                   ),
//                 );
//               },
//               child: const Text("Submit"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date & Time Picker',
      home: MyHomePage(title: 'Contoh Date & Time Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  // ✅ Date Picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // ✅ Time Picker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: selectedTime);
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = "${selectedDate.toLocal()}".split(' ')[0];
    String formattedTime = selectedTime.format(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Tanggal: $formattedDate"),
            Text("Waktu: $formattedTime"),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: const Text('Pilih Tanggal'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                _selectTime(context);
              },
              child: const Text('Pilih Waktu'),
            ),
          ],
        ),
      ),
    );
  }
}
