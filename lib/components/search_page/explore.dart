import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/datas/explore.dart';
import 'explore_item.dart';

class Explore extends StatelessWidget {
  const Explore({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: size.width,
          child: Wrap(
              direction: Axis.horizontal,
              spacing: 2,
              runSpacing: 2,
              children: List.generate(explore.length, (index) {
                return ExploreItem(
                  exploreImage: explore[index]['exploreImage'],
                );
              })),
        ),
      ),
    );
  }
}