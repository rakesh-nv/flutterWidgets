// import 'package:flutter/material.dart';
//
// // Note import intl.dart and
// // update latest version of intl in pubspec.yml
// // the we can get date format
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         textTheme: const TextTheme(headlineLarge: TextStyle(fontSize: 21)),
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var emailText = TextEditingController();
//   var password = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     var time = DateTime.now();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Container(
//           //color: Colors.blue,
//           width: 300,
//           height: 100,
//           child: Column(
//             children: [
//               Text('Curremt Time : ${DateFormat('yMMMd').format(time)}'),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {});
//                   },
//                   child: const Text('Current Time'),
//                   ),
//             ],
//           ),
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
//
// class DateFormat {
//   DateFormat(String s);
//
//   format(DateTime time) {}
// }
