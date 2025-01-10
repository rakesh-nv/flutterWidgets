import 'package:flutter/material.dart';

import 'cards.dart';

class ListviewBulder extends StatefulWidget {
  const ListviewBulder({super.key});

  @override
  State<ListviewBulder> createState() => _ListviewBulderState();
}

class _ListviewBulderState extends State<ListviewBulder> {
  @override
  Widget build(BuildContext context) {
    
    final List<tile> Content = [
      tile(
        name: 'Rakesh',
      ),
      tile(
        name: 'Rakesh',
      ),
      tile(
        name: 'Rakesh',
      ),
      tile(
        name: 'Rakesh',
      ),
      tile(
        name: 'Rakesh',
      ),
      tile(
        name: 'Rakesh',
      ),
      tile(
        name: 'Rakesh',
      ),
      tile(
        name: 'Rakesh',
      ),
      tile(
        name: 'Rakesh',
      ),
    ];
    return Scaffold(
      // ... existing code ...
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cards(),
                ),
              );
            },
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        Content[index].name,
                      ),
                    ) // {{ edit_1 }}: Accessing name by index
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: Content.length,
        itemExtent: 100,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class tile {
  final String name;
  final Icon? icon;

  tile({
    required this.name,
    this.icon,
  });
}
