import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabview_with_custom_navbar/main.dart';


Widget getAppBar(BuildContext context) {
  List appBarIcons = [
    Icons.add_box_outlined,
    Icons.favorite_border,
    Icons.chat_bubble_outline
  ];

  var currentPage = Provider.of<PageIndex>(context).pageIndex;
  if (currentPage == 0) {
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
  else if (currentPage == 4){
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Text('hasanc35'),
            Icon(Icons.keyboard_arrow_down)
          ],),
          Row(children: [
            Icon(Icons.add,size: 30,),
            SizedBox(width: 15,),
            Icon(Icons.menu,size: 30,)
          ],)
        ],
      ),
    );
  }
  else{
  return null;
  }
}
