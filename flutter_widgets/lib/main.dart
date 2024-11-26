import 'package:flutter/material.dart';

import 'onbordScreen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<widgetExample> example = [
    widgetExample(
      title: 'PageView.builder',
      builder: (context) => const Onbordscreen(),
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('Examples'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 9,
        ),
        itemCount: example.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              child: Center(
                child: Text(
                  example[index].title,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Onbordscreen(),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class FullScreen extends StatelessWidget {
  final widgetExample example;

  const FullScreen({super.key, required this.example});

  @override
  Widget build(BuildContext context) {
    return example.builder(context);
  }
}

class DetailScreen extends StatelessWidget {
  final widgetExample example;

  const DetailScreen({super.key, required this.example});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(example.title),
        elevation: 0,
        backgroundColor: example.appBarColor ?? Theme.of(context).primaryColor,
      ),
      body: Hero(
          tag: 'example_${example.title}', child: example.builder(context)),
    );
  }
}

class widgetExample {
  final String title;
  final Widget Function(BuildContext) builder;
  final Color? appBarColor;
  final bool isFullScreen;

  widgetExample({
    required this.title,
    required this.builder,
    this.appBarColor,
    this.isFullScreen = false,
  });
}
