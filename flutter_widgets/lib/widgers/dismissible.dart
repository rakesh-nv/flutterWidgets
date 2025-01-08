import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DismissibleWi extends StatefulWidget {
  const DismissibleWi({super.key});

  @override
  State<DismissibleWi> createState() => _DismissibleWiState();
}

class _DismissibleWiState extends State<DismissibleWi> {
  List<String> fruits = ['Orange', 'Apple', 'mango', 'Grapes', 'Banana'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (directon) {
              if (directon == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                    duration: const Duration(milliseconds: 600),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                    duration: const Duration(milliseconds: 600),
                  ),
                );
              }
            },
            key: Key(fruit),
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2),
              ),
              child: ListTile(
                title: Text(fruits[index]),
              ),
            ),
          );
        },
        itemCount: fruits.length,
      ),
    );
  }
}
