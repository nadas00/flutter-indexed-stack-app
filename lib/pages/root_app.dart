import 'package:flutter/material.dart';

class IndexedStackApp extends StatefulWidget {
  @override
  _IndexedStackAppState createState() => _IndexedStackAppState();
}

class _IndexedStackAppState extends State<IndexedStackApp> {
  var pageIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      bottomNavigationBar: getNavBar(),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar();
  }

  Widget getNavBar() {
    var size = MediaQuery.of(context).size;

    List navBarItems = [
      Icons.home_outlined,
      Icons.search,
      Icons.movie_filter_outlined,
      Icons.shopping_bag_outlined,
    ];

    List activeNavBarItems = [
      Icons.home_filled,
      Icons.saved_search,
      Icons.movie_filter,
      Icons.shopping_bag,
    ];

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Container(
          width: size.width,
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return IconButton(
                  icon: index == pageIndex
                      ? Icon(activeNavBarItems[index])
                      : Icon(navBarItems[index]),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack();
  }
}
