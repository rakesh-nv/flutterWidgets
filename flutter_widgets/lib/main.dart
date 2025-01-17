import 'package:flutter/material.dart';
import 'package:flutter_widgets/clones/instaClon.dart';

import 'allWidgets.dart';
import 'clones/clon1.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<tile> Content = [
      tile(
        title: 'widgets',
        (context) => const AllWidgets(),
      ),
      tile(
        title: 'Clone',
        (context) => const Clone1(),
      ),
      tile(
        (context) => const InstaClone(),
        title: 'Insta clone',
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('Examples'),
        backgroundColor: Colors.white70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: Content[index].builder,
                  ),
                );
              },
              child: Card(
                elevation: 2,
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(Content[index].title),
                ),
              ),
            );
          },
          itemCount: Content.length,
        ),
      ),
    );
  }
}

class tile {
  final String title;
  final Widget Function(BuildContext) builder;
  final Icon? icon;

  tile(
    this.builder, {
    required this.title,
    this.icon,
  });
}
