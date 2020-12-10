import 'package:flutter/material.dart';

class ExploreItem extends StatelessWidget {
  final String exploreImage;

  const ExploreItem({
    Key key,
    @required this.exploreImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: exploreImage != null ? DecorationImage(
            image: NetworkImage(
                exploreImage),
            fit: BoxFit.cover) : null,
        color: Colors.white,
      ),
      width: (size.width - 4) / 3,
      height: (size.width - 4) / 3,
    );
  }
}
