
import 'package:flutter/material.dart';

import 'Friends.dart';
import 'chatPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List<Widget> pages = [
    ChatPage(),
    FriendsPage(),
  ];
  int _currentIndex = 0; //选中Item时发生变化
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            //点击事件,代理方法
            _currentIndex = index; //赋值当前索引
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          //设置系统样式
          fixedColor: Colors.red,
          //设置选中颜色
          currentIndex: _currentIndex,
          //当前索引
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Message')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Friends')),
          ],
        ),
      ),
    );
  }
}




/*
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Message"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text("Friends"),
          ),
        ],
      ),
*/
/*
      bottomSheet: Container(
        padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children:  <Widget>[
            SizedBox(width: 15,),

            SizedBox(width: 15,),
          ],
        ),
      ),*//*

    );
  }
}*/
