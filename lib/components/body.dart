import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabview_with_custom_navbar/pages/home_page.dart';
import 'package:tabview_with_custom_navbar/pages/profile_page.dart';
import 'package:tabview_with_custom_navbar/pages/reels_page.dart';
import 'package:tabview_with_custom_navbar/pages/search_page.dart';
import 'package:tabview_with_custom_navbar/pages/shop_page.dart';
import '../main.dart';

Widget getBody(context) {
  return IndexedStack(
    index: Provider.of<PageIndex>(context).pageIndex,
    children: [
      HomePage(),
      SearchPage(),
      ReelsPage(),
      ShopPage(),
      ProfilePage(),
    ],
  );
}
