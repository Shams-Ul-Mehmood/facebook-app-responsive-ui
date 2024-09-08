import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive_user_interface/models/Models.dart';
import 'package:facebook_responsive_user_interface/widgets/Profile_Avatar.dart';
import 'package:facebook_responsive_user_interface/widgets/Responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreatePostContainer extends StatelessWidget
{
  final User currentUser;

  // const CreatePostContainer( { required Key key, required this.currentUser  } ) : super( key: key );

  const CreatePostContainer( { super.key, required this.currentUser } );

  @override
  Widget build( BuildContext buildContext)
  {
    final bool isDesktop = Responsive.isDesktop(buildContext);

    return Card(
      shape: isDesktop ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) : null,
      elevation: isDesktop ? 1.0 : 0.0,
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 6.0),
        child: Column(
          children: [
            Row(
              children: [
                Profile_Avatar(imageUrl: currentUser.userProfileImageUrl),
                const SizedBox(width: 10.0,),
                Expanded(
                    child: TextField( decoration: InputDecoration.collapsed( hintText: "What\'s on your mind?" ), ),),
              ],
            ),
            const Divider(height: 10.0, thickness: 0.5,),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   // ElevatedButton.icon(onPressed: () => print("Live"), label: Text("Live"), icon: const Icon(Icons.videocam, color: Colors.red,),)
                     // Or
                      InkWell(
                        onTap: () => print("Live"),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.videocam, color: Colors.red,),
                              const SizedBox(width: 10.0,),
                              Text("Live")
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(width: 10.0,),

                  InkWell(
                    onTap: () => print("Photo"),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.photo_library, color: Colors.green,),
                          const SizedBox(width: 10.0,),
                          Text("Photo")
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(width: 10.0,),

                  InkWell(
                    onTap: () => print("Room"),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.video_call, color: Colors.purpleAccent,),
                          const SizedBox(width: 10.0,),
                          Text("Room")
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}