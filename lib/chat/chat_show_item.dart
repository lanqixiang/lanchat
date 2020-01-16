import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

import './chat_list_data.dart';

class MessageItem extends StatelessWidget {
  MessageData messageData;

  MessageItem(this.messageData);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
      height: 64,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 13, right: 13),
            child: Image.network(
              messageData.imageUrl,
              width: 48,
              height: 48,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  messageData.title,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(padding: const EdgeInsets.only(top: 6)),
                Text(
                  messageData.subTitle,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: const EdgeInsets.only(right: 12, top: 12),
            child: Text(
              formatDate(messageData.time, [HH, ':', nn, ':', 'ss']).toString(),
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
