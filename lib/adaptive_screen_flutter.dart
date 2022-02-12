library adaptive_screen_flutter;

import 'package:adaptive_screen_flutter/screen_init.dart';
import 'package:flutter/material.dart';

class AdaptiveScreen extends StatelessWidget {
  final Widget? web;
  final Widget? tab;
  final Widget? mobile;
  const AdaptiveScreen({
    Key? key,
    this.web,
    this.tab,
    this.mobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > ScreenInit.tabBreakPoint) {
      return tab ?? web ?? mobile!;
    } else if (screenWidth > ScreenInit.webBreakPoint) {
      return web ?? tab ?? mobile!;
    }
    return mobile ?? tab ?? web!;
  }
}
