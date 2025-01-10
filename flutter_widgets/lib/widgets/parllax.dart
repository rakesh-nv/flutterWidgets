import 'package:flutter/material.dart';

class MyParllax extends StatefulWidget {
  @override
  _MyParllaxState createState() => _MyParllaxState();
}

class _MyParllaxState extends State<MyParllax> {
  double rateZero = 0;
  double rateOne = 10;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 9;
  double rateSeven = 25;
  double rateEight = 50;

  late String asset;
  late double top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            //only if scroll update notification is triggered
            setState(() {
              rateEight -= v.scrollDelta! / 1;
              rateSeven -= v.scrollDelta! / 1.5;
              rateSix -= v.scrollDelta! / 2;
              rateFive -= v.scrollDelta! / 2.5;
              rateFour -= v.scrollDelta! / 3;
              rateThree -= v.scrollDelta! / 3.5;
              rateTwo -= v.scrollDelta! / 4;
              rateOne -= v.scrollDelta! / 4.5;
              rateZero -= v.scrollDelta! / 5;
            });
            return true;
          }
          return false;
        },
        child: Stack(
          children: <Widget>[
            ParallaxWidget(top: rateZero, asset: "parallax0@2x"),
            ParallaxWidget(top: rateOne, asset: "parallax1@2x"),
            //ParallaxWidget(top: rateTwo, asset: "parallax2@2x"),
            ParallaxWidget(top: rateThree, asset: "parallax3@2x"),
            ParallaxWidget(top: rateFour, asset: "parallax4@2x"),
            ParallaxWidget(top: rateFive, asset: "parallax5@2x"),
            ParallaxWidget(top: rateSix, asset: "parallax6@2x"),
            ParallaxWidget(top: rateSeven, asset: "parallax7@2x"),
            ParallaxWidget(top: rateEight, asset: "parallax8@2x"),
            ListView(
              children: <Widget>[
                Container(
                  height: 600,
                  color: Colors.transparent,
                ),
                Container(
                  color: Color(0xff210002),
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 70),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Made By",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Montserrat-Extralight",
                          letterSpacing: 1.3,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      Text(
                        "N V RAKESH",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Montserrat-Regular",
                          letterSpacing: 1.8,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Parallax In",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "MontSerrat-ExtraLight",
                            letterSpacing: 1.8,
                            color: Color(0xffffaf00)),
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                            fontSize: 51,
                            fontFamily: "MontSerrat-Regular",
                            letterSpacing: 1.8,
                            color: Color(0xffffaf00)),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 190,
                        child: Divider(
                          height: 1,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ParallaxWidget extends StatelessWidget {
  final double top;
  final String asset;

  const ParallaxWidget({
    super.key,
    required this.top,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Positioned(
      left: -100,
      top: top,
      child: Container(
        height: 600,
        width: currentWidth < 600 ? 750 : 1540,
        child: Image.asset("assets/parllax/$asset.png", fit: BoxFit.cover),
      ),
    );
  }
}

// class ParallaxWidget extends StatelessWidget {
//   final double top;
//   final String asset;
//   const ParallaxWidget({
//     super.key,
//     required this.top,
//     required this.asset,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//         left: -45,
//         top: top,
//         child: Container(
//           height: 550,
//           width: 900,
//           child: Image.asset("assets/$asset/parllax.png", fit: BoxFit.cover),
//         ));
//   }
// }
