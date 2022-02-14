class ScreenInit {
  // This is the default tabletBreakPoint value
  static double tabletBreakPoint = 600;
  // This is the default webBreakPoint value
  static double webBreakPoint = 950;

  // This method to customize breakpoint for tablet
  static void setTabletBreakPoint(double value) {
    tabletBreakPoint = value;
  }

  // This method to customize breakpoint for web
  static void setWebBreakPoint(double value) {
    webBreakPoint = value;
  }
}
