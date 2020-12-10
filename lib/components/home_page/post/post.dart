import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/components/home_page/post/post_parts.dart';

class Post extends StatelessWidget {
  final String profileName;
  final String profileImage;
  final String postImage;
  final String contextText;
  final String timeAgo;
  final String likeCount;
  final String commentCount;

  const Post({
    Key key,
    @required this.profileName,
    @required this.profileImage,
    @required this.postImage,
    @required this.contextText,
    @required this.timeAgo,
    @required this.likeCount,
    @required this.commentCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Icon, Name, More Icon
          PostHeader(profileName: profileName, profileImage: profileImage),
          //Post Image
          PostImage(postImage: postImage),
          //Below Post Image Field
          PostFooter(
            contextText: contextText,
            timeAgo: timeAgo,
            likeCount: likeCount,
            commentCount: commentCount,
            contextProfileName: profileName,
          )
        ],
      ),
    );
  }
}
