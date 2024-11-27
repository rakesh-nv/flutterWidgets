import 'package:flutter/material.dart';
import 'package:flutter_widgets/CustamWidgit/widgits/rounde_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter001',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Demo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: RoundedButton(
                btnName: 'login',
                icon: const Icon(Icons.lock),
                callback: () {
                  print("Logged in!!");
                },
              ),
            ),
            Container(
              child: const RoundedButton(
                btnName: "Signup",
                bgColor: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
