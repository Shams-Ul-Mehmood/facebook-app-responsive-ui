import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:flutter/material.dart';

import '../data/Data.dart';

class Profile_Avatar extends StatelessWidget {

  final String imageUrl;
  final bool isActive;
  final bool hasBorder;

  const Profile_Avatar({super.key, required this.imageUrl, this.hasBorder = false, this.isActive = false,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 21.0,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? 18.5 : 21.0,
            backgroundColor: Colors.grey[300],
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
        ),
        isActive ? Positioned(
            right: 0.0,
            bottom: 0.0,
            child: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.white,),
                color: Palette.online,
                shape: BoxShape.circle,
              ),
            ),
        ) : SizedBox.shrink(),
      ],
    );
  }
}
