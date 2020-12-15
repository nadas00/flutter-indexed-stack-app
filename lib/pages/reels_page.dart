import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/components/body.dart';
import 'package:tabview_with_custom_navbar/components/reels_page/reels_item.dart';
import 'package:tabview_with_custom_navbar/datas/reels.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({
    Key key,
  }) : super(key: key);

  @override
  _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage>
    with SingleTickerProviderStateMixin {
  TabController _reelsTabController;

  @override
  void initState() {
    super.initState();
    _reelsTabController = TabController(length: reels.length, vsync: this);
  }

  Widget getReels() {
    return RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
          controller: _reelsTabController,
          children: List.generate(reels.length, (index) {
            return RotatedBox(
                quarterTurns: -1,
                child: ReelsItem(
                  profileName: reels[index]['profileName'],
                  reelsSound: reels[index]['reelsSound'],
                  reelsContext: reels[index]['reelsContext'],
                  likeCount: reels[index]['likeCount'],
                  commentCount: reels[index]['commentCount'],
                  reelsImage: reels[index]['reelsImage'],
                  profileImage: reels[index]["profileImage"],
                ));
          })),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Reels'),
            Icon(Icons.camera_alt_outlined),
          ],
        ),
      ),
      body: getReels(),
    );
  }
}


