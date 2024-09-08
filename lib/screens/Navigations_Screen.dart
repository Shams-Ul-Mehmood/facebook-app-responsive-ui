import 'package:facebook_responsive_user_interface/data/Data.dart';
import 'package:facebook_responsive_user_interface/screens/Facebook_App_Home_Screen.dart';
import 'package:facebook_responsive_user_interface/widgets/Custom_AppBar.dart';
import 'package:facebook_responsive_user_interface/widgets/Custom_Tab_Bar.dart';
import 'package:facebook_responsive_user_interface/widgets/Responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Navigations_Screen extends StatefulWidget
{
  @override
  State<Navigations_Screen> createState() => Navigations_Screen_State();
}

class Navigations_Screen_State extends State<Navigations_Screen>
{
  final List<Widget> screens = [
    Facebook_App_Home_Screen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext buildContext)
  {
    final Size screenSize = MediaQuery.of(buildContext).size;

    return DefaultTabController(
        length: icons.length,
        child: Scaffold(
          appBar: Responsive.isDesktop(buildContext) ? PreferredSize(preferredSize: Size(screenSize.width, 100.0), child: Custom_AppBar(
            icons: icons,
            currentUser: currentUser,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() {
              _selectedIndex = index;
            }),
          ),
          ) : null,
          body: // screens[_selectedIndex],
          // TabBarView(children: screens, physics: NeverScrollableScrollPhysics(),),
          IndexedStack(
            children: screens,
            index: _selectedIndex,
          ),
          bottomNavigationBar: !Responsive.isDesktop(buildContext) ? Container(
            padding: const EdgeInsets.only(bottom: 12.0,),
            child: Custom_Tab_Bar(icons: icons, selectedIndex: _selectedIndex, onTap: (index) => setState(() {
              _selectedIndex = index;
            }),
            ),
          ) : const SizedBox.shrink(),
        ),
    );
  }
}