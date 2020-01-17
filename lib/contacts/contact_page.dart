import 'package:flutter/material.dart';

import './contact_header.dart';
import './contact_list_data.dart';
import './contact_show_item.dart';
import './contact_sider_list.dart';

class ContactPage extends StatefulWidget {
  ContactPageState createState() => ContactPageState();
}

class ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ContactSiderList(
        item: contactDataList,
        itemBuilder: (BuildContext c, int index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(contactDataList[index], null, null),
          );
        },
        headerBuilder: (BuildContext c, int index) {
          return Container(
            child: ContactHeader(),
          );
        },
        sectionBuilder: (BuildContext c, int index) {
          return Container(
            height: 32,
            color: Colors.grey,
            padding: EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              contactDataList[index].sideKey,
              style: TextStyle(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
