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
            var item = reels[index];
            return RotatedBox(
                quarterTurns: -1,
                child: ReelsItem(
                  profileName: item['profileName'],
                  reelsSound: item['reelsSound'],
                  reelsContext: item['reelsContext'],
                  likeCount: item['likeCount'],
                  commentCount: item['commentCount'],
                  reelsImage: item['reelsImage'],
                  profileImage: item["profileImage"],
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


