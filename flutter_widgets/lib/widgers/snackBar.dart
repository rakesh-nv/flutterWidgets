import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class snackBar extends StatefulWidget {
  const snackBar({super.key});

  @override
  State<snackBar> createState() => _snackBarState();
}

class _snackBarState extends State<snackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack bar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    print("undo");
                  },
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                content: Text("This is an error"),
                duration: const Duration(milliseconds: 3000),
                backgroundColor: Colors.red,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text("show snack bar"),
          ),
        ),
      ),
    );
  }
}
