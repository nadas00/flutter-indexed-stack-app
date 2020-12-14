import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/datas/posts.dart';

class ProfilePost extends StatelessWidget {
  const ProfilePost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: List.generate(posts.length, (index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(posts[index]['postImage']),
                  fit: BoxFit.cover),
            ),
          );
        }));
  }
}
