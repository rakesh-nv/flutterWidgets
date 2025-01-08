import 'package:flutter/material.dart';
import 'package:flutter_widgets/CustamWidgit/widgits/CustamWidget.dart';
import 'package:flutter_widgets/responsive/homePage.dart';
import 'package:flutter_widgets/widgers/DateAndTime.dart';
import 'package:flutter_widgets/widgers/GridView.dart';
import 'package:flutter_widgets/widgers/alertdialogBox.dart';
import 'package:flutter_widgets/widgers/animated_text.dart';
import 'package:flutter_widgets/widgers/bottomSheet.dart';
import 'package:flutter_widgets/widgers/bottomnav.dart';
import 'package:flutter_widgets/widgers/cards.dart';
import 'package:flutter_widgets/widgers/dismissible.dart';
import 'package:flutter_widgets/widgers/drawer.dart';
import 'package:flutter_widgets/widgers/dropdown.dart';
import 'package:flutter_widgets/widgers/formWidget.dart';
import 'package:flutter_widgets/widgers/listview.buldar.dart';
import 'package:flutter_widgets/widgers/parllax.dart';
import 'package:flutter_widgets/widgers/snackBar.dart';
import 'package:flutter_widgets/widgers/stack.dart';
import 'package:flutter_widgets/widgers/tabBar.dart';
import 'widgers/onbordScreen.dart';

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
      home: HomeScreen(),
      //home: HomePage(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<widgetExample> example = [
    widgetExample(
      title: 'Tab bar',
      builder: (context) => TabBarWidget(),
    ),
    widgetExample(
      title: "Bottom Navbar",
      builder: (context) => bottomNabBar(),
    ),
    widgetExample(
      title: "Form",
      builder: (context) => FormWidget(),
    ),
    widgetExample(
      title: "Dropdown",
      builder: (context) => Dropdown(),
    ),
    widgetExample(
      title: "Alert Dialog",
      builder: (context) => const alartDilogBox(),
    ),
    widgetExample(
      title: "Animated Text",
      builder: (context) => const animatedText(),
    ),
    widgetExample(
      title: "Bottom Sheet",
      builder: (context) => const bottomSheet(),
    ),

    widgetExample(
      title: 'Drawer',
      builder: (context) => const DrawerWi(),
    ),
    widgetExample(
      title: 'SnackBar',
      builder: (context) => const snackBar(),
    ),
    widgetExample(
      title: 'Dismissible',
      builder: (context) => const DismissibleWi(),
    ),
    // widgetExample(
    //   title: 'Bottom Navigation bar',
    //   builder: (context) => BottomNavBar(),
    // ),
    widgetExample(
      title: 'Stack',
      builder: (context) => const stackWidget(),
    ),
    widgetExample(
      title: 'PageView.builder',
      builder: (context) => const Onbordscreen(),
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
      builder: (context) => MyParllax(),
    ),
    widgetExample(
      title: 'Custam widgets',
      builder: (context) => const CustamWidgets(),
    ),
    widgetExample(
      title: 'ResponsiveLayout',
      builder: (context) => const HomePage(),
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
          crossAxisCount: 3,
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

// ignore: camel_case_types
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
