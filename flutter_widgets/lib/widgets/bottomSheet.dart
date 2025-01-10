import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomSheet extends StatefulWidget {
  const bottomSheet({super.key});

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const SingleChildScrollView(
                 child: Column(
                  children: [
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("This is orange"),
                    ),
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("This is orange"),
                    ),
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("This is orange"),
                    ),
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("This is orange"),
                    ),
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("This is orange"),
                    ),  ListTile(
                      title: Text("Orange"),
                      subtitle: Text("This is orange"),
                    ),
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("This is orange"),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Text("Bottom Sheet"),
      ),
    );
  }
}
