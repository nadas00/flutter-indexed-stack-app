import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          'Reels',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
