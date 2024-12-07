import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgers/DateAndTime.dart';
import 'package:flutter_widgets/widgers/GridView.dart';
import 'package:flutter_widgets/widgers/cards.dart';
import 'package:flutter_widgets/widgers/listview.buldar.dart';
import 'package:flutter_widgets/widgers/parllax.dart';
import 'package:flutter_widgets/widgers/stack.dart';
import 'widgers/onbordScreen.dart';
import 'widgers/listwiew.dart';

void main() {
  return runApp(MyApp());
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
      //home: HomeScreen(),
      home: MyParllax(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<widgetExample> example = [
    widgetExample(
      title: 'Stack',
      builder: (context) => const stackWidget(),
    ),
    widgetExample(
      title: 'PageView.builder',
      builder: (context) => const Onbordscreen(),
    ),
    widgetExample(
      title: 'ListView',
      builder: (context) => const Listwiew(),
    ),
    widgetExample(
      title: 'ListViewBulder',
      builder: (context) => const ListviewBulder(),
    ),
    widgetExample(
      title: 'GridView',
      builder: (context) => const Gridview(),
    ),
    widgetExample(
      title: 'DateTimeFormet',
      builder: (context) => const Dateandtime(),
    ),
    widgetExample(
      title: 'Cards',
      builder: (context) => const Cards(),
    ),
    widgetExample(
      title: 'parallax',
      builder: (p0) => MyParllax(),
    )
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
                    builder: example[index].builder,
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
