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
        child: Row(
          children: [
            Flexible(
              //Search bar
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.rectangle),
                height: 45.0,
                width: size.width,
                child: TextField(
                  style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        color: Colors.white.withOpacity(0.5)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            //qR Icon
            Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
