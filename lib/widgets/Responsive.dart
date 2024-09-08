import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive({super.key, required this.mobile, required this.tablet, required this.desktop,});

  static bool isMobile(BuildContext buildContext) => MediaQuery.of(buildContext).size.width < 800;
  static bool isDesktop(BuildContext buildContext) => MediaQuery.of(buildContext).size.width >= 1200;
  static bool isTablet(BuildContext buildContext) => MediaQuery.of(buildContext).size.width >= 800 && MediaQuery.of(buildContext).size.width < 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if( constraints.maxWidth >= 1200 )
        {
          return desktop;
        }
      else if( constraints.maxWidth >= 800 )
        {
          return tablet ?? mobile;
        }
      else
        {
          return mobile;
        }
    });
  }
}
