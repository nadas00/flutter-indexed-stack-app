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
    List appBarIcons = [
      Icons.add_box_outlined,
      Icons.favorite_border,
      Icons.chat_bubble_outline
    ];

    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Instagram', style: TextStyle(color: Colors.white)),
          Row(
            children: List.generate(appBarIcons.length, (index) {
              return IconButton(
                icon: Icon(appBarIcons[index]),
                color: Colors.white,
                onPressed: () {},
              );
            }),
          ),
        ],
      ),
    );
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

      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        child: Container(
          width: size.width,
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(width: 0.1,color: Colors.white)
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
    return IndexedStack(
      index: pageIndex,
      children: [
        Container(
          color: Colors.black,
          child: Center(
            child: Text('Home Page',style: TextStyle(color: Colors.white,fontSize: 30),),
          ),
        ),
        Container(
          color: Colors.black,
          child: Center(
            child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 30),),
          ),
        ),
        Container(
          color: Colors.black,
          child: Center(
            child: Text('Reels',style: TextStyle(color: Colors.white,fontSize: 30),),
          ),
        ),
        Container(
          color: Colors.black,
          child: Center(
            child: Text('Shop',style: TextStyle(color: Colors.white,fontSize: 30),),
          ),
        ),
      ],
    );
  }
}
