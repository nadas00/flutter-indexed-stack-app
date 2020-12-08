import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
