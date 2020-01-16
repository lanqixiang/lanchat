import 'package:flutter/material.dart';
import './contact_header.dart';
import './contact_show_item.dart';

class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ContactItem(null,'新朋友','images/image_test1.png'),
        ContactItem(null,'群聊','images/image_test2.png'),
        ContactItem(null,'公众号','images/image_test3.png'),
      ],
    );
  }
}
