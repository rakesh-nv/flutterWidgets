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
                  color: Colors.red,
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
                          Text("mark zuckerberg",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                          Text("mark@gmail.com",style: TextStyle(fontSize: 12),)

                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                title: Text("my files"),
                leading: Icon(Icons.folder),
              ),
              const ListTile(
                title: Text("Shared with me"),
                leading: Icon(Icons.group),
              ),
              const ListTile(
                title: Text("Starred"),
                leading: Icon(Icons.star),
              ),
              const ListTile(
                title: Text("Trash"),
                leading: Icon(Icons.delete),
              ),
              const ListTile(
                title: Text("Uplode"),
                leading: Icon(Icons.upload),
              ),
              const ListTile(
                title: Text("logout"),
                leading: Icon(Icons.logout),
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
