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
    color: Colors.black,
    child: Padding(
      padding: EdgeInsets.only(right: 15.0,left: 15.0, bottom: 20.0,top: 10),
      child: Container(
        width: size.width,
        height: 70.0,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(width: 0.1, color: Colors.white)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
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
      ),
    ),
  );
}
