library adaptive_screen_flutter;

import 'package:flutter/material.dart';

part 'screen_init.dart';

class AdaptiveScreen extends StatelessWidget {
  final Widget? web;
  final Widget? tablet;
  final Widget? mobile;
  const AdaptiveScreen({
    Key? key,
    this.web,
    this.tablet,
    this.mobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the width of the screen
    var screenWidth = MediaQuery.of(context).size.width;
    // When the screenWidth is more then web breakpoint the widget will return web widget
    if (screenWidth > ScreenInit.webBreakPoint) {
      // if the web widget null, the it will returns tablet or mobile
      return web ?? tablet ?? mobile!;
      // When the screenWidth is more then tablet breakpoint the widget will return tablet
    } else if (screenWidth > ScreenInit.tabletBreakPoint) {
      return tablet ?? web ?? mobile!;
    }
    // if the screenWidth is not in the condition the widget will return mobile
    return mobile ?? tablet ?? web!;
  }
}
