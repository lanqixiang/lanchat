import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  MainState createState() => new MainState();
}

class MainState extends State<App> {
  var _currentIndex = 0;
  //Choice _selectCoice = Choice[0];

  void _select(Choice choice) {

  }
  //MessagePage messagePage;
  //Contact contact;

  currentPage(){
    switch(_currentIndex){
      case 0:
     //   if(messagePage == null){
       //   messagePage = new MessagePage();
     //   }
        return ;
      case 1:
        return ;
      case 2:
        return ;
      case 3:
        return ;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });

          }),
          items: [
            new BottomNavigationBarItem(
                title: new Text(
                  '微信',
                  style: TextStyle(
                      color: _currentIndex == 0
                          ? Color(0xFF46c01b)
                          : Color(0xFF999999)),
                ),
                icon: _currentIndex == 0
                    ? Image.asset(
                  'images/show.jpg',
                  width: 32,
                  height: 28,
                )
                    : Image.asset(
                  'images/unshow.jpg',
                  width: 32,
                  height: 28,
                )),
            new BottomNavigationBarItem(
                title: new Text(
                  '通讯录',
                  style: TextStyle(
                      color: _currentIndex == 1
                          ? Color(0xFF46c01b)
                          : Color(0xFF999999)),
                ),
                icon: _currentIndex == 1
                    ? Image.asset(
                  'images/show.jpg',
                  width: 32,
                  height: 28,
                )
                    : Image.asset(
                  'images/unshow.jpg',
                  width: 32,
                  height: 28,
                )),
            new BottomNavigationBarItem(
                title: new Text(
                  '搜索',
                  style: TextStyle(
                      color: _currentIndex == 2
                          ? Color(0xFF46c01b)
                          : Color(0xFF999999)),
                ),
                icon: _currentIndex == 2
                    ? Image.asset(
                  'images/show.jpg',
                  width: 32,
                  height: 28,
                )
                    : Image.asset(
                  'images/unshow.jpg',
                  width: 32,
                  height: 28,
                )),
            new BottomNavigationBarItem(
                title: new Text(
                  '我的',
                  style: TextStyle(
                      color: _currentIndex == 3
                          ? Color(0xFF46c01b)
                          : Color(0xFF999999)),
                ),
                icon: _currentIndex == 3
                    ? Image.asset(
                  'images/show.jpg',
                  width: 32,
                  height: 28,
                )
                    : Image.asset(
                  'images/unshow.jpg',
                  width: 32,
                  height: 28,
                )),
          ]
      ),
      appBar: AppBar(

        centerTitle: true,

        leading: Icon(Icons.arrow_back),
        title: Text("蓝信"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '汽车',
            onPressed: () {},

          ),
          PopupMenuButton<Choice>(


            color: Colors.white,
            icon: Icon(Icons.more_horiz),
            offset: Offset(100,200),
            itemBuilder: (BuildContext context) {
              return choice.skip(0).map((Choice choice){
                return PopupMenuItem<Choice>(
                  child:new Center(
                    child:new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[


                      new Icon(choice.icon,color: Colors.green,),
                      new Container(
                        margin:const EdgeInsets.only(left: 20.0) ,
                        child:  new Text(
                          choice.title,style: TextStyle( ),
                        ),),

                    ],
                  ),),


                  value: choice,


                );

              }).toList();

            },
          )
        ],


      ),
     // body: new bottomNavigationBarView,
    );
  }
}
class Choice {
  const Choice({
    this.title,this.icon
});
  final String title;
  final IconData icon;
}
const List<Choice> choice = const<Choice>[
  const Choice(title: "发起群聊",icon: Icons.message),
  const Choice(title: "添加朋友",icon: Icons.person_add),
  const Choice(title: "扫一扫",icon: Icons.airplay),

];


