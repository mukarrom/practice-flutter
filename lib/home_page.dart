import 'package:flutter/material.dart';
import 'package:myapp/responsive/desktop_body.dart';
import 'package:myapp/responsive/mobile_body.dart';
import 'package:myapp/responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MyMobileBody(),
      desktopBody: MyDesktopBody(),
    );
  }
}
