import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/datas/exploreCategories.dart';

class ExploreCategoryStories extends StatelessWidget {
  const ExploreCategoryStories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: List.generate(exploreCategories.length, (index) {
              var item = exploreCategories[index];
              return Padding(
                padding: EdgeInsets.only(right: 10.0, top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.white.withOpacity(0.5))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 10.0),
                    child: Text(item['exploreCategoryName'],
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
