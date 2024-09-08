import 'package:facebook_responsive_user_interface/models/user_model.dart';
import 'package:meta/meta.dart';

class Story
{
  final User user;
  final String userProfileImageUrl;
  final bool isStoryViewed;

  const Story( { this.isStoryViewed = false, required this.user, required this.userProfileImageUrl,} );
}