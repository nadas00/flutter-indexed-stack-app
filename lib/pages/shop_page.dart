import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/components/search_page/explore.dart';
import 'package:tabview_with_custom_navbar/components/search_page/explore_item.dart';
import 'package:tabview_with_custom_navbar/datas/explore.dart';
import 'package:tabview_with_custom_navbar/datas/posts.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        //Search bar
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
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
        //Category
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(10, (index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 2.0)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 3),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 110,
                                  child: Center(
                                    child: Text(
                                      'Mağazalara Göz at',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 2,
                        runSpacing: 2,
                        children: List.generate(10, (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              posts[0]['postImage'],
                                            ),
                                            fit: BoxFit.cover
                                          ),
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      width: (size.width - 46) / 2,
                                      height: (size.width - 46) / 2,

                                      child:   Container(
                                        child: Column(
                                   children: [Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       children: [
                                         CircleAvatar(backgroundColor: Colors.white,),
                                         SizedBox(
                                           width: 4,
                                         ),
                                         Text('trendyol',style: TextStyle(color: Colors.white),)
                                       ],
                                     ),
                                   ),],
                                        ),
                                        color: Colors.transparent,


                                      ),
                                    ),

                                  ],
                                ),
                                Text(
                                  'hasan',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          );
                        })),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
