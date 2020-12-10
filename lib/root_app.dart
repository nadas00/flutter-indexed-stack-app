import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/body.dart';
import 'components/bottom_navigation_bar.dart';

class IndexedStackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(context),
      bottomNavigationBar: getNavBar(context),
      body: getBody(context),
    );
  }
}
