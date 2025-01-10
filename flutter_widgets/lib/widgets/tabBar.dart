import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridView.dart';
import 'dismissible.dart';
import 'listview.buldar.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Whats app'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'chat',
              ),
              Tab(
                icon: Icon(Icons.chat_bubble),
                text: 'status',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'call',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListviewBulder(),
            Gridview(),
            DismissibleWi(),
          ],
        ),
      ),
    );
  }
}
