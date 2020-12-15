import 'package:flutter/material.dart';

class ReelsItem extends StatelessWidget {
  const ReelsItem({
    Key key,
    @required this.profileName,
    @required this.reelsSound,
    @required this.reelsContext,
    @required this.likeCount,
    @required this.commentCount,
    @required this.reelsImage,
    @required this.profileImage,
  }) : super(key: key);

  final String reelsImage;
  final String profileImage;
  final String profileName;
  final String reelsSound;
  final String reelsContext;
  final String likeCount;
  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(reelsImage), fit: BoxFit.cover)),
      ),
      bottomNavigationBar:Container(
        height: 130,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profileImage),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  profileName,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Takip Et',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              reelsContext,
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Icon(Icons.surround_sound_outlined, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Text(
                  reelsSound,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite,
                          size: 30, color: Colors.white.withOpacity(0.8)),
                      Icon(Icons.chat_bubble_rounded,
                          size: 30, color: Colors.white.withOpacity(0.8)),
                      Icon(Icons.send,
                          size: 30, color: Colors.white.withOpacity(0.8)),
                      Icon(Icons.more_horiz,
                          size: 30, color: Colors.white.withOpacity(0.8))
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite, size: 15, color: Colors.white),
                      Text(
                        likeCount,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.chat_bubble_rounded,
                          size: 15, color: Colors.white),
                      Text(
                        commentCount,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 3,
            ),
          ],
        ),
      ),
    );
  }
}
