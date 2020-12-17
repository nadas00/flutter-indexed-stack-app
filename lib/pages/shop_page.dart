import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/datas/marketItems.dart';
import 'package:tabview_with_custom_navbar/datas/marketStories.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(marketStories.length, (index) {
                      var item = marketStories[index];
                      return Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: MarketStory(
                          marketStoryImage:
                              item['marketStoryImage'],
                          marketStoryTitle: item['marketStoryTitle'],
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
                        children: List.generate(marketItems.length, (index) {
                          var item = marketItems[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MarketItem(
                              marketName: item["marketName"],
                              itemImage: item["itemImage"],
                              itemName: item["itemName"],
                              marketProfileImage: item["marketProfileImage"],
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

class MarketStory extends StatelessWidget {
  final String marketStoryTitle;
  final String marketStoryImage;

  const MarketStory(
      {Key key,
      @required this.marketStoryTitle,
      @required this.marketStoryImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                child: ClipOval(
                    child: Image.network(
              marketStoryImage,
              fit: BoxFit.cover,
            ))),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 110,
              child: Center(
                child: Text(
                  marketStoryTitle,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.start,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MarketItem extends StatelessWidget {
  final String marketProfileImage;
  final String marketName;
  final String itemImage;
  final String itemName;

  const MarketItem(
      {Key key,
      @required this.marketProfileImage,
      @required this.marketName,
      @required this.itemImage,
      @required this.itemName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    itemImage,
                  ),
                  fit: BoxFit.cover),

              borderRadius: BorderRadius.circular(10.0)),
          width: (size.width - 46) / 2,
          height: (size.width - 46) / 2,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                    backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(marketProfileImage),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        marketName,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            color: Colors.transparent,
          ),
        ),
        SizedBox(
          width:(size.width - 46) / 2,

          child: Text(
            itemName,
            style: TextStyle(color: Colors.white),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
