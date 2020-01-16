import 'package:flutter/material.dart';

class FoundItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Icon icon;

  FoundItem({Key key, @required this.title, this.imageUrl, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),

            child: imageUrl != null
                ? Image.asset(
                    imageUrl,
                    height: 30,
                    width: 30,
                  )
                : SizedBox(
                    child: icon,
                    height: 30,
                    width: 30,
                  ),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}
