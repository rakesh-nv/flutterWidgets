import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alartDilogBox extends StatefulWidget {
  const alartDilogBox({super.key});

  @override
  State<alartDilogBox> createState() => _alartDilogBoxState();
}

class _alartDilogBoxState extends State<alartDilogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alart Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text("Show Alart")),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
            title: Text("This is an alart"),
            content: const SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("This a demo"),
                  Text("This is rakesh"),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("approve"),
              ),
            ]);
      });
}
