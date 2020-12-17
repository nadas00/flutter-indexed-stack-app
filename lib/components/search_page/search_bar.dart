import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            style: TextStyle(color: Colors.white.withOpacity(0.6)),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(0.5),
              ),
              hintText: 'Ara',
              hintStyle: TextStyle(
                  textBaseline: TextBaseline.alphabetic,
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }
}
