import 'package:flutter/material.dart';
import 'package:tabview_with_custom_navbar/datas/posts.dart';
import 'package:tabview_with_custom_navbar/datas/stories.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
          Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Profile picture
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      posts[0]['profileImage']),
                                  fit: BoxFit.cover)),
                          width: 80,
                          height: 80,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Followers
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '9',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                              Text(
                                'Gönderi',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '9',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                              Text(
                                'Takipçi',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '9',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                              Text(
                                'Takip',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          //Bio
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hasan Çiftçi',
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.white),
                  ),
                  Text(
                    'YU, Software Engineer 💻',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Çevirisine Bak',
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          //Button
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    border:
                    Border.all(color: Colors.white.withOpacity(0.4))),
                height: 30.0,
                child: Center(
                  child: Text(
                    'Profili Düzenle',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          //BioStories
          Container(
            height: 85,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                    children: List.generate(stories.length, (index) {
                      var item =  stories[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                   item['profilePicture']),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      );
                    })),
              ),
            ),
          ),
        ]));
  }
}