import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class animatedText extends StatefulWidget {
  const animatedText({super.key});

  @override
  State<animatedText> createState() => _animatedTextState();
}

class _animatedTextState extends State<animatedText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  "TypewriterAnimatedText",
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 300),
                )
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  RotateAnimatedText(
                    " RotateAnimatedText",
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                pause: Duration(milliseconds: 200),
                totalRepeatCount: 5,
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                WavyAnimatedText(
                  "WavyAnimatedText",
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            SizedBox(height: 30),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                ColorizeAnimatedText(
                  "hello world",
                  textStyle: TextStyle(fontSize: 20),
                  colors: [Colors.red, Colors.greenAccent],
                )
              ],
              totalRepeatCount: 4,
            ),
            SizedBox(
              height: 50,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FadeAnimatedText(
                    "FadeAnimatedText",
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
                pause: Duration(milliseconds: 200),
              ),
            ),
            SizedBox(
              height: 50,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  ScaleAnimatedText(
                    " ScaleAnimatedText",
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: AnimatedTextKit(
                repeatForever: true,
                pause:const Duration(milliseconds: 300),
                animatedTexts: [
                  FlickerAnimatedText(
                    "Hello world",
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
