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
        //color: Colors.red,
        width: 500,
        height: 400,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
            ),Positioned(
              left: 40,
              top: 40,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),Positioned(
              left: 70,
              top: 70,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
            ),
            Positioned(
              left: 100,
              top: 100,
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
