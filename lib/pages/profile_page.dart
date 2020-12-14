import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabview_with_custom_navbar/components/profile_page/profile_info.dart';
import 'package:tabview_with_custom_navbar/components/profile_page/profile_post.dart';
import 'package:tabview_with_custom_navbar/components/profile_page/sticky_tab_bat.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: [
            ProfileInfo(),
            //TabBar
            StickyTabBar(),

            ProfilePost()
          ],
        ));
  }
}
