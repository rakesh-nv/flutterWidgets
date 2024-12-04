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
      body: Center(
        child: SizedBox(
          height: 200,
          width: 150,
          child: InkWell(
            onTap: () {
              print('hello');
            },
            child: const Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              shadowColor: Colors.green,
              elevation: 20,
              child: Center(
                child: Text(
                  'Hello world',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
