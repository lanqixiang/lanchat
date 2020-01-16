import 'package:flutter/material.dart';

import './found_show_item.dart';

class FoundPage extends StatefulWidget {
  FoundPageState createState() => FoundPageState();
}

class FoundPageState extends State<FoundPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: new FoundItem(
                title: '朋友圈',
                imageUrl: 'images/image_test1.png',
              ),
            ),
            Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    new FoundItem(title: '扫一扫', imageUrl: 'images/image_test1.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    new FoundItem(title: '摇一摇', imageUrl: 'images/image_test2.png'),
                  ],
                )),
            Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    new FoundItem(title: '看一看', imageUrl: 'images/image_test3.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    new FoundItem(title: '搜索', imageUrl: 'images/image_test1.png'),
                  ],
                )),
            Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    new FoundItem(title: '购物', imageUrl: 'images/image_test3.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    new FoundItem(title: '游戏', imageUrl: 'images/image_test1.png'),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
