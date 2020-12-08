import 'package:flutter/material.dart';

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
