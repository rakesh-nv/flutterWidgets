import 'package:flutter/material.dart';

class ListviewBulder extends StatefulWidget {
  const ListviewBulder({super.key});

  @override
  State<ListviewBulder> createState() => _ListviewBulderState();
}

class _ListviewBulderState extends State<ListviewBulder> {
  @override
  Widget build(BuildContext context) {
    var arrnames = [
      'raman',
      'rakesh',
      'ramesh',
      'naveen',
      'john',
      'james',
      'jah'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ListViewBulder'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              arrnames[index],
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        },
        itemCount: arrnames.length,
        itemExtent: 100,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
