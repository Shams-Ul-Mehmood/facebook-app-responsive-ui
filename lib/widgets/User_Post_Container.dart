import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive_user_interface/models/post_model.dart';
import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:facebook_responsive_user_interface/widgets/Profile_Avatar.dart';
import 'package:facebook_responsive_user_interface/widgets/Responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UserPostContainer extends StatelessWidget {
  final Post userPost;

  const UserPostContainer({super.key, required this.userPost});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);

    return Card(
      shape: isDesktop ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) : null,
      elevation: isDesktop ? 1.0 : 0.0,
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0, vertical: 5.0,),
      child: Container(
        // margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _Post_Header( userPost : userPost ),
                  const SizedBox(height: 4.0,),
                  Text( userPost.caption ),
                  userPost.userProfileImageUrl != null ? const SizedBox.shrink() : const SizedBox(height: 8.0,),
                ],
              ),
            ),
            userPost.userProfileImageUrl != null ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CachedNetworkImage(imageUrl: userPost.userProfileImageUrl),
            ) : const SizedBox.shrink(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: _Post_State(userPost : userPost),
            ),

          ],
        ),
      ),
    );
  }
}

class _Post_Header extends StatelessWidget
{
  final Post userPost;
  const _Post_Header( { super.key, required this.userPost } );

  @override
  Widget build(BuildContext buildContext)
  {
    return Row(
      children: [
        Profile_Avatar(imageUrl: userPost.user.userProfileImageUrl,),
        const SizedBox(width: 8.0,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( userPost.user.userName , style: TextStyle( fontWeight: FontWeight.w600, ), ),
              Row(
                children: [
                  Text("${userPost.timeAgo} * ", style: TextStyle( fontSize: 12.0, color: Colors.grey[600], ),),
                  Icon(Icons.public, color: Colors.grey[600], size: 12.0,),
                ],
              ),
            ],
          ),
        ),
        IconButton(onPressed: () => print("More") , icon: Icon(Icons.more_horiz, size: 20.0, )),
      ],
    );
  }
}

class _Post_State extends StatelessWidget {
  final Post userPost;

  const _Post_State({super.key, required this.userPost});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Palette.facebookBlue,
              ),
              padding: const EdgeInsets.all(4.0),
              child: const Icon(Icons.thumb_up, color: Colors.white, size: 20.0,),
            ),
            const SizedBox(width: 4.0,),
            Expanded(child: Text("${userPost.like} Likes", style: TextStyle( color: Colors.grey[700], ),)),
            const SizedBox(width: 4.0,),
            Text("${userPost.comments} Comments", style: TextStyle( color: Colors.grey[700], ),),
            const SizedBox(width: 4.0,),
            Text("${userPost.share} Shares", style: TextStyle( color: Colors.grey[700], ),)
          ],
        ),
        const Divider(),
        Row(
          children: [
            _Post_Button(icon : Icon(MdiIcons.thumbUpOutline, color: Colors.grey[700], size: 28.0,), label: "Like", onTap: () => print("Like"),),
            _Post_Button(icon : Icon(MdiIcons.commentOutline, color: Colors.grey[700], size: 28.0,), label: "Comment", onTap: () => print("Comment"),),
            _Post_Button(icon : Icon(MdiIcons.shareOutline, color: Colors.grey[700], size: 28.0,), label: "Share", onTap: () => print("Share"),),
          ],
        ),
      ],
    );
  }
}

class _Post_Button extends StatelessWidget {
  final String label;
  final Icon icon;
  final Function onTap;
  const _Post_Button({super.key, required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () => print("Like"),
          child: Container(
            height: 25.0,
            padding: const EdgeInsets.symmetric(horizontal: 12.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 4.0,),
                Text( label ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


