import 'package:flutter/material.dart';

import './contact_list_data.dart';

class ContactSiderList extends StatefulWidget {
  List<ContactData> item;
final  IndexedWidgetBuilder headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

  ContactSiderList(
      {Key key,
      @required this.item,
      this.headerBuilder,
      @required this.itemBuilder,
      @required this.sectionBuilder})
      : super(key: key);

  ContactSiderListState createState() => ContactSiderListState();
}

class ContactSiderListState extends State<ContactSiderList> implements SectionIndexer {
  Color _pressColor = Colors.transparent;
  final ScrollController _scrollController = new ScrollController();

  bool _onNotification(ScrollNotification notification) {
    return true;
  }

  _isShowHeaderView(index) {
    if (index == null && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, index),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NotificationListener(
              onNotification: _onNotification,
              child: ListView.builder(
                controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                return Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        _isShowHeaderView(index),
                        Offstage(
                          offstage: _shouldShowHeader(index),
                          child: widget.sectionBuilder(context, index),
                        ),
                        Column(
                          children: <Widget>[
                            widget.itemBuilder(context, index)
                          ],
                        )
                      ],
                    ));
              })),
          Positioned(
            right: 0.0,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: 32,
              color: _pressColor,
              child: GestureDetector(
                onTapDown: (TapDownDetails t) {
                  setState(() {
                    _pressColor = Colors.grey;
                  });
                },
                onTapUp: (TapUpDetails t) {
                  setState(() {
                    _pressColor = Colors.transparent;
                  });
                },
                onVerticalDragStart: (DragStartDetails t) {
                  setState(() {
                    _pressColor = Colors.grey;
                  });
                },
                onVerticalDragEnd: (DragEndDetails t) {
                  setState(() {
                    _pressColor = Colors.transparent;
                  });
                },
                onVerticalDragUpdate: (DragUpdateDetails t) {
                  setState(() {
                    _pressColor = Colors.grey;
                  });
                },
                child: ListView.builder(
                  controller: ScrollController(),
                    itemCount: siderBarKey.length,
                    itemBuilder: (BuildContext context ,int index){
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Text(siderBarKey[index]),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  listScrollToPosition(int index) {
    for (var i = 0; i < widget.item.length; i++) {
      if (siderBarKey[index] == "*") {
        _scrollController.jumpTo(0.0);
        setState(() {});
      } else if (widget.item[i].sideKey == siderBarKey[index]) {
        return i;
      }
    }
    return -1;
  }

  bool _shouldShowHeader(int position) {
    if (position <= 0) {
      return false;
    }

    if (position != 0 && widget.item[position].sideKey != widget.item[position - 1].sideKey) {
      return false;
    }
    return true;
  }
}

abstract class SectionIndexer {
  listScrollToPosition(int index);
}

const siderBarKey = <String>[
  "*",
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "X",
  "Y",
  "Z",
  "#"
];
