import 'package:facebook_responsive_user_interface/screens/Navigations_Screen.dart';
import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:flutter/material.dart';

import 'Facebook_App_Home_Screen.dart';

class Facebook_App extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
      title: "Facebook App UI",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      debugShowCheckedModeBanner: false,
      // color: Colors.white,
      // home: Facebook_App_Home_Screen(),
      home: Navigations_Screen(),
    );
  }
}