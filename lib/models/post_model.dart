import 'package:facebook_responsive_user_interface/models/user_model.dart';
import 'package:meta/meta.dart';

class Post
{
  final User user;
  final int like;
  final int comments;
  final int share;
  final String timeAgo;
  final String caption;
  final String userProfileImageUrl;

  const Post( { required this.user, required this.like, required this.comments, required this.share, required this.timeAgo, required this.caption, required this.userProfileImageUrl, } );
}