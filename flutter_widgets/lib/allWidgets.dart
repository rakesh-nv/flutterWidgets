import 'package:flutter/material.dart';
import 'package:flutter_widgets/responsive/homePage.dart';
import 'package:flutter_widgets/widgets/DateAndTime.dart';
import 'package:flutter_widgets/widgets/GridView.dart';
import 'package:flutter_widgets/widgets/alertdialogBox.dart';
import 'package:flutter_widgets/widgets/animated_text.dart';
import 'package:flutter_widgets/widgets/bottomSheet.dart';
import 'package:flutter_widgets/widgets/bottomnav.dart';
import 'package:flutter_widgets/widgets/cards.dart';
import 'package:flutter_widgets/widgets/dismissible.dart';
import 'package:flutter_widgets/widgets/drawer.dart';
import 'package:flutter_widgets/widgets/dropdown.dart';
import 'package:flutter_widgets/widgets/formWidget.dart';
import 'package:flutter_widgets/widgets/geoLocator.dart';
import 'package:flutter_widgets/widgets/imagePickerWidget.dart';
import 'package:flutter_widgets/widgets/listview.buldar.dart';
import 'package:flutter_widgets/widgets/onbordScreen.dart';
import 'package:flutter_widgets/widgets/parllax.dart';
import 'package:flutter_widgets/widgets/snackBar.dart';
import 'package:flutter_widgets/widgets/stack.dart';
import 'package:flutter_widgets/widgets/tabBar.dart';

import 'CustamWidgit/widgits/CustamWidget.dart';

class AllWidgets extends StatefulWidget {
  const AllWidgets({super.key});

  @override
  State<AllWidgets> createState() => _AllWidgetsState();
}

class _AllWidgetsState extends State<AllWidgets> {
  final List<widgetExample> example = [
    widgetExample(
      title: 'Geo locator',
      builder: (context) => LocationWidget(),
    ),
    widgetExample(
      title: 'Image picker',
      builder: (context) => ImagePickerWidget(),
    ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('all widgets'),
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
