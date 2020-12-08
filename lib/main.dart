import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabview_with_custom_navbar/root_app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        return PageIndex();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IndexedStackApp(),
      ),
    ),
  );
}

class PageIndex extends ChangeNotifier {
  var pageIndex = 0;

  updatePageIndex(index) {
    pageIndex = index;
    notifyListeners();
  }
}
