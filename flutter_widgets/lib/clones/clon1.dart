
import 'package:flutter/material.dart';

class Clone1 extends StatefulWidget {
  const Clone1({super.key});

  @override
  State<Clone1> createState() => _Clone1State();
}

class _Clone1State extends State<Clone1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(
                          child: SizedBox(
                            height: 400,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              child: Image.asset(
                                'assets/clone1/monkeyd.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 370,
                  left: 280,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/clone1/luffy.png'),
                    radius: 35,
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monkey d luffy',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text('Madrid city tour for designers'),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('20'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.favorite),
                          ],
                        ),
                        Row(
                          children: [
                            Text('20'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.ios_share_rounded),
                          ],
                        ),
                        Row(
                          children: [
                            Text('20'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.comment),
                          ],
                        ),
                        Row(
                          children: [
                            Text('20'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.face),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Git is released under the General Public’s License(GPL)and hence it is available for free.• Git creates a clone of the central repository on thelocal machine and hence, all the operations areperformed on the local machine of the developerbefore pushing it on to the central repository.• Pushing is done only after the version on the localmachine is working perfectly and is ready to be pushedon the central server.• No experimenting is done with the files on the centralserver.Git is released under the General Public’s License(GPL)and hence it is available for free.• Git creates a clone of the central repository on thelocal machine and hence, all the operations areperformed on the local machine of the developerbefore pushing it on to the central repository.• Pushing is done only after the version on the localmachine is working perfectly and is ready to be pushedon the central server.• No experimenting is done with the files on the centralserver.',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
