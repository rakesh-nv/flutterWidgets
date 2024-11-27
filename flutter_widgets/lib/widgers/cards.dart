import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Cards')),
      body: const Center(
        child: Card(
          shadowColor: Colors.green,
          elevation: 20,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Hello world',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
