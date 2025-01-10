import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/stack.dart';

import 'GridView.dart';
import 'cards.dart';
import 'dismissible.dart';

class bottomNabBar extends StatefulWidget {
  const bottomNabBar({super.key});

  @override
  State<bottomNabBar> createState() => _bottomNabBarState();
}

class _bottomNabBarState extends State<bottomNabBar> {
  int selectedindex = 0;

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const Gridview(),
      const stackWidget(),
      const DismissibleWi(),
      const Cards()
    ];
    return Scaffold(
      body: SafeArea(child: screens[selectedindex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
