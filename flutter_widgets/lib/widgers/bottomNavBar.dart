// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentIndex = 0;
//
//   final List<Widget> _children = [
//
//   ];
//
//   void onTabTapped(int index) {
//     if (index == 1 && _currentIndex == 1) {
//       // If already on Favorites, pop to go back to Home
//       Navigator.pop(context);
//     } else {
//       setState(() {
//         _currentIndex = index;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: onTabTapped,
//         currentIndex: _currentIndex,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
//           // Add other items here
//         ],
//       ),
//     );
//   }
// }
//
// class _buildHomeContent {
//
// }