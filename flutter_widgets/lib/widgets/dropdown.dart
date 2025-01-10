import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String selectedValue = "Orange";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blueGrey,
                child: DropdownButton<String>(
                  isExpanded: true,
                  // dropdownColor: Colors.grey,
                  value:selectedValue,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  ),
                  // items: const [
                  //   DropdownMenuItem(
                  //       value: "Bengaluru",
                  //       child: Text("Bengaluru")),
                  //   DropdownMenuItem(value: "Deli", child: Text("Dei")),
                  //   DropdownMenuItem(value: "Mumbai", child: Text("Mumbai")),
                  //   DropdownMenuItem(value: " pune", child: Text("pune")),
                  // ],
                  items:<String>[
                    'Orange','apple','Banana','Mango','Grapes'
                  ].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(value:value,child: Text(value));
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue=value!;
                    });
                    if(value is String){
                      print(value);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
