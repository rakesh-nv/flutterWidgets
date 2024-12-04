import 'package:flutter/material.dart';

class Listwiew extends StatefulWidget {
  const Listwiew({super.key});

  @override
  State<Listwiew> createState() => _ListwiewState();
}

class _ListwiewState extends State<Listwiew> {
  final List<tile> Content = [
    tile(
      name: 'Rakesh',
    ),
    tile(
      name: 'Ramesh',
    ),
    tile(
      name: 'Ramesh',
    ),
    tile(
      name: 'Ramesh',
    ),
    tile(
      name: 'Ramesh',
    ),
    tile(
      name: 'Ramesh',
    ),
    tile(
      name: 'Ramesh',
    ),
    tile(
      name: 'Ramesh',
    ),
    tile(
      name: 'Ramesh',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('listview'),
      ),

      body: ListView.builder(
        itemCount: Content.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Content[index].name,
            ),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class tile {
  final String name;

  tile({
    required this.name,
  });
}
