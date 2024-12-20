import 'package:flutter/material.dart';
import 'package:flutter_widgets/responsive/desktop_body.dart';
import 'package:flutter_widgets/responsive/mobile_body.dart';
import 'package:flutter_widgets/responsive/responsice_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiceLayout(
      mobileBody: MobileBody(),
      desktopBody: MyDesktopBody(),
    );
  }
}
