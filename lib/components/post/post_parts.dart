import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String postImage;

  const PostImage({
    Key key,
    @required this.postImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 350,
      decoration: BoxDecoration(
        image: postImage != null
            ? DecorationImage(
                image: NetworkImage(
                  postImage,
                ),
                fit: BoxFit.cover)
            : null,
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  final String profileImage;
  final String profileName;

  const PostHeader({
    Key key,
    @required this.profileImage,
    @required this.profileName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          children: [
            //Icon
            Container(
              decoration: BoxDecoration(
                  image: profileImage != null
                      ? DecorationImage(
                          image: NetworkImage(profileImage), fit: BoxFit.fill)
                      : null,
                  shape: BoxShape.circle),
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            //Name
            Text(
              profileName,
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            // More Icon
            IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}

class PostFooter extends StatelessWidget {
  final String likeCount;
  final String contextProfileName;
  final String contextText;
  final String commentCount;
  final String timeAgo;

  const PostFooter({
    Key key,
    @required this.likeCount,
    @required this.contextProfileName,
    @required this.contextText,
    @required this.commentCount,
    @required this.timeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Like, Comment, Share, Bookmark
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.send_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.bookmark_border,
                      size: 30,
                      color: Colors.white,
                    )
                  ]),
            ),
            //Like Count
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$likeCount beğenme',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  //Profile name, Context
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: '$contextProfileName ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '$contextText'),
                    ]),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  //Show Comments
                  Text('$commentCount yorumun tümünü gör',
                      style: TextStyle(color: Colors.white.withOpacity(0.5))),
                  SizedBox(
                    height: 2.0,
                  ),
                  //Minute Ago
                  Text('$timeAgo dakika önce',
                      style: TextStyle(color: Colors.white.withOpacity(0.5))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
