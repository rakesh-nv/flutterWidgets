import 'package:flutter/material.dart';

class Listwiew extends StatefulWidget {
  const Listwiew({super.key});
  @override
  State<Listwiew> createState() => _ListwiewState();
}

class _ListwiewState extends State<Listwiew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('listview'),
      ),

      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'one',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'two',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'three',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'four',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'five',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
