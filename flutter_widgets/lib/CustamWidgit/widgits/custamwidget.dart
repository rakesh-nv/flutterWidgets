import 'package:flutter/material.dart';
import 'package:flutter_widgets/CustamWidgit/widgits/rounde_btn.dart';

class CustamWidgets extends StatelessWidget {
  const CustamWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Demo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: RoundedButton(
                btnName: 'login',
                icon: const Icon(Icons.lock),
                callback: () {},
              ),
            ),
            const RoundedButton(
              btnName: "Signup",
              bgColor: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
