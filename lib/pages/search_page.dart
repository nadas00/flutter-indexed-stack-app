import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabview_with_custom_navbar/components/search_page/category_stories.dart';
import 'package:tabview_with_custom_navbar/components/search_page/explore.dart';
import 'package:tabview_with_custom_navbar/components/search_page/explore_item.dart';
import 'package:tabview_with_custom_navbar/components/search_page/search_bar.dart';
import 'package:tabview_with_custom_navbar/datas/explore.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        ExploreCategoryStories(),
        SizedBox(height: 15.0),
        Explore(),
      ],
    );
  }
}


