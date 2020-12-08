import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/pages/root_app.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexedStackApp(),
    ),
  );
}
