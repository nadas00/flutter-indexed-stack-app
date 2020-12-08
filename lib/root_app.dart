import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabview_with_custom_navbar/pages/home_page.dart';
import 'package:tabview_with_custom_navbar/pages/reels_page.dart';
import 'package:tabview_with_custom_navbar/pages/search_page.dart';
import 'package:tabview_with_custom_navbar/pages/shop_page.dart';

import 'components/app_bar.dart';
import 'components/body.dart';
import 'components/bottom_navigation_bar.dart';
import 'main.dart';

class IndexedStackApp extends StatefulWidget {
  @override
  _IndexedStackAppState createState() => _IndexedStackAppState();
}

class _IndexedStackAppState extends State<IndexedStackApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      bottomNavigationBar: getNavBar(context),
      body: getBody(context),
    );
  }
}
