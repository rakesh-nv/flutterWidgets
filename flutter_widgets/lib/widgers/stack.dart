import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stackWidget extends StatefulWidget {
  const stackWidget({super.key});

  @override
  State<stackWidget> createState() => _stackState();
}

class _stackState extends State<stackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
            ), Positioned(
              left: 21,
              top: 21,

              child: Container(
                height: 200,
                width: 200,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
