import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

Widget getNavBar(BuildContext context) {
  var size = MediaQuery.of(context).size;

  List navBarItems = [
    Icons.home_outlined,
    Icons.search,
    Icons.movie_filter_outlined,
    Icons.shopping_bag_outlined,
    Icons.person_outline,
  ];

  List activeNavBarItems = [
    Icons.home_filled,
    Icons.saved_search,
    Icons.movie_filter,
    Icons.shopping_bag,
    Icons.person,
  ];

  return Container(
    height: 80.0,
    decoration: BoxDecoration(
        color: Colors.black,
      border: Border(
        top: BorderSide(color: Colors.white.withAlpha(50),width: 1)
      )
),
    child: Padding(
      padding: EdgeInsets.only(right: 20.0,left: 20,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(navBarItems.length, (index) {
          return IconButton(
            icon: index == Provider.of<PageIndex>(context).pageIndex
                ? Icon(activeNavBarItems[index])
                : Icon(navBarItems[index]),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {
              Provider.of<PageIndex>(context, listen: false)
                  .updatePageIndex(index);
            },
          );
        }),
      ),
    ),
  );
}
