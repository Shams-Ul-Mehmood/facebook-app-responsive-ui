import 'package:facebook_responsive_user_interface/models/user_model.dart';
import 'package:facebook_responsive_user_interface/widgets/Profile_Avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_Card extends StatelessWidget {
  final User user;
  const User_Card({super.key, required this.user,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Profile_Avatar(imageUrl: user.userProfileImageUrl,),
          const SizedBox(width: 8.0,),
          Flexible(child: Text( user.userName, style: TextStyle( fontSize: 18.0, ), overflow: TextOverflow.ellipsis, )),
        ],
      ),
    );
  }
}
