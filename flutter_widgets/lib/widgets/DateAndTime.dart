import 'package:flutter/material.dart';

class Dateandtime extends StatefulWidget {
  const Dateandtime({super.key});

  @override
  State<Dateandtime> createState() => _DateandtimeState();
}

class _DateandtimeState extends State<Dateandtime> {
  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('DateTimeformet'),
      ),
      body: Center(
        child: Container(
          //color: Colors.blue,
          width: 300,
          height: 100,
          child: Column(
            children: [
              Text('Current Time: ${time.hour}:${time.minute}:${time.second}',
                  style: const TextStyle(fontSize: 25)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Current Time')),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
