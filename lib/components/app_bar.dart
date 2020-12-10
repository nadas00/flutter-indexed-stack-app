import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabview_with_custom_navbar/main.dart';

Widget getAppBar(BuildContext context) {
  List appBarIcons = [
    Icons.add_box_outlined,
    Icons.favorite_border,
    Icons.chat_bubble_outline
  ];

  if (Provider.of<PageIndex>(context).pageIndex == 0){
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
  }else{
    return null;
  }


}
