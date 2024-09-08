import 'package:facebook_responsive_user_interface/models/user_model.dart';
import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:facebook_responsive_user_interface/widgets/Profile_Avatar.dart';
import 'package:facebook_responsive_user_interface/widgets/Responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/story_model.dart';

class Rooms extends StatelessWidget
{
  final List<User> onLineUsers;

  const Rooms({ super.key, required this.onLineUsers });

  @override
  Widget build(BuildContext buildContext)
  {
    final bool isDesktop = Responsive.isDesktop(buildContext);

    return Card(
      shape: isDesktop ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) : null,
      elevation: isDesktop ? 1.0 : 0.0,
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      child: Container(
        height: 50.0,
        color: Color(0xFFFFFFFF),
        child: ListView.builder( itemBuilder: (buildContext, index) {

          if( index == 0 )
            {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _Create_Rooms_Button(),
              );
            }

          final User user = onLineUsers[index-1];

          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,),
            child: Profile_Avatar(imageUrl: user.userProfileImageUrl, isActive: true,),
          );
        }, itemCount: 1 + onLineUsers.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0,),
        ),
      ),
    );
  }
}

class _Create_Rooms_Button extends StatelessWidget {
  const _Create_Rooms_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){ print("Create Rooms"); },
      child: Container(
        width: 100.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            /*
            ShaderMask(
              shaderCallback: (reaction) => Palette.create_Room_Gradient.createShader(reaction),
              child: Icon(
                Icons.video_call,
                size: 40.0,
                color: Colors.purpleAccent,
              ),
            ),
            */
            Icon(
              Icons.video_call,
              size: 40.0,
              color: Colors.purpleAccent,
            ),
            const SizedBox(width: 4.0,),
            Text("Create\nRoom")
          ],
        ),
        ),
      );
  }
}
