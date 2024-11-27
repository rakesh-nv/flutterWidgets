import 'package:flutter/material.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.orange,
      Colors.yellow,
      Colors.pink,
      Colors.purple,
      Colors.green,
      Colors.orange,
      Colors.red,
      Colors.blueGrey,
      Colors.black,
      Colors.purple,
      Colors.green,
      Colors.orange,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('GridView'),
      ),

      // Dynamically creating grid and coloring

      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: arrColors[index],
                borderRadius: BorderRadius.circular(20)),
          );
        },
        itemCount: arrColors.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
      ),

      // ####################################################################

      // GridView.count(
      //   crossAxisCount: 4,
      //   crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //     Container(color: arrColors[6]),
      //     Container(color: arrColors[7]),
      //   ],
      // ),

      //  USE GridView.extent or GridView.count
      //########################################################################

      //     GridView.extent(
      //   maxCrossAxisExtent: 100,
      //   crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //f     Container(color: arrColors[6]),
      //     Container(color: arrColors[7]),
      //     Container(color: arrColors[8]),
      //   ],
      // )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
