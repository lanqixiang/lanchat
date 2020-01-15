import 'package:flutter/material.dart';
import 'dart:async';
class LoadingPage extends StatefulWidget{
  @override
  _LoadingState createState() =>_LoadingState();

}
class _LoadingState extends State<LoadingPage>{
  @override
  void initState(){
    super.initState();
    new Future.delayed(Duration(seconds: 3),(){
      print("启动ling");
      Navigator.of(context).pushReplacementNamed("app");
          
    });
  }
  @override
  Widget build(BuildContext context){
    return new Container(
     child: Image.asset("images/lan_weixin.jpg"), 
    );
    
  }
}
