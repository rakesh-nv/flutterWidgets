import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWi extends StatefulWidget {
  const DrawerWi({super.key});

  @override
  State<DrawerWi> createState() => _DrawerWiState();
}

class _DrawerWiState extends State<DrawerWi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          //color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  //color: Colors.red,
                  padding: EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5W2BqfqBY9OafH2zmvvBjg-sAFRYogwwvUA&s'),
                      ),
                      SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "mark zuckerberg",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "mark@gmail.com",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text("my files"),
                leading: const Icon(Icons.folder),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Shared with me"),
                leading: const Icon(Icons.group),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Starred"),
                leading: const Icon(Icons.star),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Trash"),
                leading: const Icon(Icons.delete),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Uplode"),
                leading: const Icon(Icons.upload),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("logout"),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer widget"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
