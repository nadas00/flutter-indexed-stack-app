import 'package:flutter/material.dart';
class StoryItem extends StatelessWidget {
  final String profilePicture;
  final String profileName;

  const StoryItem({
    Key key,
    @required this.profilePicture,
    @required this.profileName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Gradient Border
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF9B2282), Color(0xFFEEA863)]),
                color: Colors.red,
                shape: BoxShape.circle),
            //Story Image
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 3.5),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: profilePicture != null
                        ? NetworkImage(profilePicture)
                        : null,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          //Story Text
          SizedBox(
            width: 74,
            height: 15,
            child: Text(
              profileName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}