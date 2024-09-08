import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:facebook_responsive_user_interface/widgets/Profile_Avatar.dart';
import 'package:facebook_responsive_user_interface/widgets/Responsive.dart';
import 'package:flutter/material.dart';

import '../models/Models.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({super.key, required this.currentUser, required this.stories,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Responsive.isDesktop(context) ? Colors.transparent : Colors.white,
      child: ListView.builder(
        itemBuilder: (buildContext, index){

          if( index == 0 )
            {
              return Padding(padding: const EdgeInsets.symmetric(horizontal: 4.0,),
                child: _Story_Card(
                  isAddStory: true,
                  currentUser: currentUser,
                ),
              );
            }

          final Story story = stories[ index - 1 ];

          return Padding(padding: const EdgeInsets.symmetric(horizontal: 4.0,),
          child: _Story_Card(userStory: story),
          );
        },
        itemCount: 1 + stories.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0,),
      ),
    );
  }
}

class _Story_Card extends StatelessWidget {
  final User? currentUser;
  final Story? userStory;
  final bool isAddStory;

  const _Story_Card( {super.key, this.currentUser, this.userStory, this.isAddStory = false } );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: CachedNetworkImage(imageUrl: isAddStory ? currentUser!.userProfileImageUrl : userStory!.userProfileImageUrl,
          width: 110.0, height: double.infinity, fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 110.0,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: Palette.storyGradient,
            borderRadius: BorderRadius.circular(13.0),
            boxShadow: Responsive.isDesktop(context) ? const [ BoxShadow( color: Colors.black26, blurRadius: 5.0, offset: Offset(0, 2), ), ] : null,
          ),
        ),
        Positioned(
            child: isAddStory ? Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () { print("Add to Story"); },
                icon: const Icon(Icons.add),
                padding: EdgeInsets.zero,
                color: Palette.facebookBlue,
                iconSize: 30.0,
              ),
            ) : Profile_Avatar(
                imageUrl: userStory!.user.userProfileImageUrl,
              hasBorder: userStory!.isStoryViewed,
            ),
          top: 8.0,
          left: 8.0,
        ),

        Positioned(
            bottom: 8.0,
            right: 8.0,
            left: 8.0,
            child: Text( isAddStory ? "Add to Story" : userStory!.user.userName,
              style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white, ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
        ),

      ],
    );
  }
}

