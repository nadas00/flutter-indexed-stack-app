import 'package:flutter/material.dart';

class IndexedStackApp extends StatefulWidget {
  @override
  _IndexedStackAppState createState() => _IndexedStackAppState();
}

class _IndexedStackAppState extends State<IndexedStackApp> {
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
    return Container();
  }

  Widget getBody() {
    return IndexedStack();
  }
}
