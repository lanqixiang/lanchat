import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'lanchat',
  theme: themeData,
  routes: <String,WidgetBuilder>{
    "app":(BuildContext context)=> new App(),
    "/friends":(_)=>new WebviewScaffold(
        url: "https://weixin.qq.com/",
         appBar: new AppBar(
           title: Text("微信朋友圈"),

         ),
      withZoom: true,
      withLocalStorage: true,//本地存储

    )
// 'search':(BuildContext context)=> new search(),
  },
  home: new LoadingPage(),
)

);

final ThemeData themeData =new ThemeData(
  //primaryColor: Color(0xff303030),//导航栏
  //scaffoldBackgroundColor: Color(0xffebebeb),
    primaryColor: Colors.blue,//导航栏
    scaffoldBackgroundColor: Colors.red,

  cardColor: Color(0xff303030)
);