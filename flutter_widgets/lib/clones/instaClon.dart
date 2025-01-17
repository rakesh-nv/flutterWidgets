import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaClone extends StatefulWidget {
  const InstaClone({super.key});

  @override
  State<InstaClone> createState() => _InstaCloneState();
}

class _InstaCloneState extends State<InstaClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Remove back button
        automaticallyImplyLeading: false,
        // leading:Icon(Icons.arrow_back_ios),
        title: const Text(
          'wanda.s',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 170,
              //color: Colors.grey,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 160,
                    //color: Colors.purple,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              AssetImage('assets/clone1/luffy.png'),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Monkey d luffy.',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Photographer.NewYork',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                profileDetailes('100', 'Posts'),
                                const SizedBox(width: 10),
                                profileDetailes('5k', 'Followers'),
                                const SizedBox(width: 10),
                                profileDetailes('100', 'Following'),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 45,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue),
                                      onPressed: () {},
                                      child: const Text(
                                        'Fallow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Colors.blue,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/clone1/luffy.png')),
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text('data')
                    ],
                  );
                },
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue,
            ),
            Expanded(
                child: Container(
              // color: Colors.green,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget profileDetailes(String text1, text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 14),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
