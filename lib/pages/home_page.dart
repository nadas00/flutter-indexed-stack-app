import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/components/home_page/post/post.dart';
import 'package:tabview_with_custom_navbar/components/home_page/story/story.dart';
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
                  var item = stories[index];
                  return StoryItem(
                    profileName: item["profileName"],
                    profilePicture: item["profilePicture"],
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
                var item = posts[index];
                return Post(
                  profileName: item['profileName'],
                  profileImage: item['profileImage'],
                  postImage: item["postImage"],
                  contextText: item['contextText'],
                  timeAgo: item["timeAgo"],
                  likeCount: item["likeCount"],
                  commentCount: item["commentCount"],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
