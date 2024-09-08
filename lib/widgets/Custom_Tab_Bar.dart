import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:flutter/material.dart';

class Custom_Tab_Bar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final bool isBottomIndicator;
  final Function (int) onTap;

  const Custom_Tab_Bar({super.key, required this.icons, required this.selectedIndex, this.isBottomIndicator = false, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        tabs: icons.asMap().map((number, value) => MapEntry(number, Tab(icon: Icon(value, color: number == selectedIndex ? Palette.facebookBlue : Colors.black45, size: 32.0, ),))).values.toList(),
        indicator: BoxDecoration( border: isBottomIndicator ? Border(bottom: BorderSide( width: 3.0, color: Palette.facebookBlue, ),) : Border(top: BorderSide( width: 3.0, color: Palette.facebookBlue, ),), ),
        indicatorPadding: EdgeInsets.zero,
      onTap: onTap,
    );
  }
}
