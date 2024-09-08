import 'package:facebook_responsive_user_interface/models/user_model.dart';
import 'package:facebook_responsive_user_interface/widgets/CircleButton.dart';
import 'package:facebook_responsive_user_interface/widgets/Custom_Tab_Bar.dart';
import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:facebook_responsive_user_interface/widgets/User_Card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Custom_AppBar extends StatelessWidget {
  final List<IconData> icons;
  final User currentUser;
  final int selectedIndex;
  final Function(int) onTap;

  const Custom_AppBar({super.key, required this.icons, required this.selectedIndex, required this.currentUser, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22.0,),
      height: 65.0,
      decoration: BoxDecoration(
        boxShadow: const [ BoxShadow(blurRadius: 4.0, offset: Offset(0, 2), color: Colors.black45,), ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text("facebook", style: const TextStyle( fontWeight: FontWeight.bold, color: Palette.facebookBlue, letterSpacing: -1.2, fontSize: 35.0, ),)),
          Container(
            height: double.infinity,
            width: 600.0,
            child: Custom_Tab_Bar(icons: icons, isBottomIndicator: true, selectedIndex: selectedIndex, onTap: onTap,),
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  User_Card(user: currentUser),
                  const SizedBox(width: 14.0,),
                  CircleButton(icon: Icons.search, iconSize: 30.0, onPressed: () => print("Search"),),
                  CircleButton(icon: MdiIcons.facebookMessenger, iconSize: 30.0, onPressed: () => print("Messenger"),),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
