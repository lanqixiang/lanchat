import 'package:flutter/material.dart';

import './chat_list_data.dart';
import './chat_show_item.dart';

class MessagePage extends StatefulWidget {
  @override
  MessagePageState createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (BuildContext context, int index) {
            return new MessageItem(messageData[index]);
          }),
    );
  }
}
