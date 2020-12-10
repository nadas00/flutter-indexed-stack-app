import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/components/post/post.dart';
import 'package:tabview_with_custom_navbar/components/post/post_parts.dart';
import 'package:tabview_with_custom_navbar/components/story/story.dart';
import 'package:tabview_with_custom_navbar/datas/posts.dart';
import 'package:tabview_with_custom_navbar/datas/stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            //Story Boxes
            Container(
              height: 92,
              width: size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(stories.length, (index) {
                  return StoryItem(
                    profileName: stories[index]["profileName"],
                    profilePicture: stories[index]["profilePicture"],
                  );
                })),
              ),
            ),
            Divider(
              color: Colors.white.withOpacity(0.2),
            ),
            //Post
            Column(
              children: List.generate(posts.length, (index) {
                return Post(
                  profileName: posts[index]['profileName'],
                  profileImage: posts[index]['profileImage'],
                  postImage: posts[index]["postImage"],
                  contextText: posts[index]['contextText'],
                  timeAgo: posts[index]["timeAgo"],
                  likeCount: posts[index]["likeCount"],
                  commentCount: posts[index]["commentCount"],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}



