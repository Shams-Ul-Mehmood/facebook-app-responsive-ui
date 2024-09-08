import 'dart:ui';

import 'package:facebook_responsive_user_interface/data/Data.dart';
import 'package:facebook_responsive_user_interface/models/post_model.dart';
import 'package:facebook_responsive_user_interface/widgets/CircleButton.dart';
import 'package:facebook_responsive_user_interface/widgets/Contacts_List.dart';
import 'package:facebook_responsive_user_interface/widgets/More_Options_List.dart';
import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:facebook_responsive_user_interface/widgets/Responsive.dart';
import 'package:facebook_responsive_user_interface/widgets/Stories.dart';
import 'package:facebook_responsive_user_interface/widgets/User_Post_Container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/CreatePostContainer.dart';
import '../widgets/Rooms.dart';

class Facebook_App_Home_Screen extends StatefulWidget
{
  @override
  State<Facebook_App_Home_Screen> createState() => Facebook_App_Home_Screen_State();
}

class Facebook_App_Home_Screen_State extends State<Facebook_App_Home_Screen>
{
  final TrackingScrollController _trackingScrollController = TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext)
  {
    return InkWell(
      onTap: (){
        FocusScope.of(buildContext).unfocus();
      },
      child: Scaffold(
        body: Responsive(
          mobile: _Mobile_Home_Screen(tracking_Scroll_Controller: _trackingScrollController),
          desktop: _Desktop_Home_Screen(tracking_Scroll_Controller: _trackingScrollController),
          tablet: _Tablet_Home_Screen(tracking_Scroll_Controller: _trackingScrollController),
        ),
      ),
    );
  }
}

class _Mobile_Home_Screen extends StatelessWidget {

  final TrackingScrollController tracking_Scroll_Controller;

  const _Mobile_Home_Screen({super.key, required this.tracking_Scroll_Controller,});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: tracking_Scroll_Controller,
      slivers: [
        SliverAppBar(
          title: Text("facebook", style: const TextStyle( fontWeight: FontWeight.bold, color: Palette.facebookBlue, letterSpacing: -1.2, fontSize: 30.0, ),),
          backgroundColor: Colors.white,
          centerTitle: false,
          floating: true,
          actions: [

            // 1st Method.

            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: IconButton(onPressed: (){
                print("Search");
              }, icon: Icon(Icons.search_outlined,), iconSize: 30.0, color: Colors.black,),
            ),

            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: IconButton(onPressed: (){ print("Messenger"); }, icon: Icon(MdiIcons.facebookMessenger,), iconSize: 30.0, color: Colors.black,),
            ),

            // 2nd Method.

            // CircleButton(icon: Icons.search_outlined, iconSize: 30.0, onPressed: (){}),
            // CircleButton(icon: MdiIcons.facebookMessenger, iconSize: 30.0, onPressed: (){}),
          ],
        ),

        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Rooms(onLineUsers: onLineUsers),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Stories( currentUser: currentUser, stories: stories ),
          ),
        ),

        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          final Post userPost = posts[index];
          return UserPostContainer( userPost : userPost, );
        },
          childCount: posts.length,
        ),
        ),

      ],
    );
  }
}

class _Desktop_Home_Screen extends StatelessWidget {
  final TrackingScrollController tracking_Scroll_Controller;
  const _Desktop_Home_Screen({super.key, required this.tracking_Scroll_Controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: More_Options_List(current_User: currentUser),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: 600.0,
          child: CustomScrollView(
            controller: tracking_Scroll_Controller,
            slivers: [
              /*
              SliverAppBar(
                title: Text("facebook", style: const TextStyle( fontWeight: FontWeight.bold, color: Palette.facebookBlue, letterSpacing: -1.2, fontSize: 30.0, ),),
                backgroundColor: Colors.white,
                centerTitle: false,
                floating: true,
                actions: [

                  // 1st Method.

                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: IconButton(onPressed: (){
                      print("Search");
                    }, icon: Icon(Icons.search_outlined,), iconSize: 30.0, color: Colors.black,),
                  ),

                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: IconButton(onPressed: (){ print("Messenger"); }, icon: Icon(MdiIcons.facebookMessenger,), iconSize: 30.0, color: Colors.black,),
                  ),

                  // 2nd Method.

                  // CircleButton(icon: Icons.search_outlined, iconSize: 30.0, onPressed: (){}),
                  // CircleButton(icon: MdiIcons.facebookMessenger, iconSize: 30.0, onPressed: (){}),
                ],
              ),
              */

              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                sliver: SliverToBoxAdapter(
                  child: Stories( currentUser: currentUser, stories: stories ),
                ),
              ),

              SliverToBoxAdapter(
                child: CreatePostContainer(currentUser: currentUser),
              ),

              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                  child: Rooms(onLineUsers: onLineUsers),
                ),
              ),

              SliverList(delegate: SliverChildBuilderDelegate((context, index) {
                final Post userPost = posts[index];
                return UserPostContainer( userPost : userPost, );
              },
                childCount: posts.length,
              ),
              ),

            ],
          ),
        ),
        const Spacer(),
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Contacts_List(users: onLineUsers),
            ),
          ),
        ),

      ],
    );
  }
}

class _Tablet_Home_Screen extends StatelessWidget {
  final TrackingScrollController tracking_Scroll_Controller;
  const _Tablet_Home_Screen({super.key, required this.tracking_Scroll_Controller,});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: tracking_Scroll_Controller,
      slivers: [
        SliverAppBar(
          title: Text("facebook", style: const TextStyle( fontWeight: FontWeight.bold, color: Palette.facebookBlue, letterSpacing: -1.2, fontSize: 30.0, ),),
          backgroundColor: Colors.white,
          centerTitle: false,
          floating: true,
          actions: [

            // 1st Method.

            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: IconButton(onPressed: (){
                print("Search");
              }, icon: Icon(Icons.search_outlined,), iconSize: 30.0, color: Colors.black,),
            ),

            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: IconButton(onPressed: (){ print("Messenger"); }, icon: Icon(MdiIcons.facebookMessenger,), iconSize: 30.0, color: Colors.black,),
            ),

            // 2nd Method.

            // CircleButton(icon: Icons.search_outlined, iconSize: 30.0, onPressed: (){}),
            // CircleButton(icon: MdiIcons.facebookMessenger, iconSize: 30.0, onPressed: (){}),
          ],
        ),

        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Rooms(onLineUsers: onLineUsers),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Stories( currentUser: currentUser, stories: stories ),
          ),
        ),

        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          final Post userPost = posts[index];
          return UserPostContainer( userPost : userPost, );
        },
          childCount: posts.length,
        ),
        ),

      ],
    );
  }
}
