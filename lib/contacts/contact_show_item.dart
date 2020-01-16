import 'package:flutter/material.dart';

import './contact_list_data.dart';

class ContactItem extends StatelessWidget {
  ContactData contactData;
String title;
String localImage;
  ContactItem(this.contactData,this.title,this.localImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 20,
            color: Colors.grey,
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                contactData.sideKey,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: contactData!=null &&contactData.imageUrl!=null? Image.network(contactData.imageUrl,height: 30,width: 30,):Image.asset(localImage,height: 30,width: 30,),
                ),
                Text(
                  contactData!=null &&contactData.title!=null? contactData.title:title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
