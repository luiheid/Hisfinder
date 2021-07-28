import 'package:flutter/material.dart';
import 'lost_list.dart';
import 'chatting_list.dart';
import 'write.dart';
import 'mypage.dart';
import 'got_list.dart';

class ChattingList extends StatelessWidget{
  // int i;
  // ChattingList({Key? key, required this.i}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
   }
  }

  class MyStatefulWidget extends StatefulWidget{
    @override
    State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
  }

  class _MyStatefulWidgetState extends State<MyStatefulWidget> {
    int _selectedIndex = 0;

    List<Widget> _widgetOptions = <Widget>[
      GotList(),
      LostList(),
      WritePage(),
      Got(),
      MyPage()
    ];

    // List<Widget> _appBar = <Widget>[
    //   PreferredSize(
    //       preferredSize: Size.fromHeight(40.0),
    //       child:
    //       AppBar(
    //           leading: IconButton(
    //             icon: Image.asset("images/이전@4x.png", scale: 4),
    //             onPressed: () {
    //               Navigator.push(
    //                 context,
    //                 MaterialPageRoute(builder: (context) => SignIn()),
    //               );
    //             },
    //           ),
    //           backgroundColor: const Color(0xff6990FF),
    //           centerTitle: true,
    //           title:
    //           Text("Chatting", style: TextStyle(
    //             fontFamily: 'avenir',
    //             fontWeight: FontWeight.w500,
    //             color: Colors.white,
    //           ),
    //           )
    //       )
    //   ),
    // ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        if(_selectedIndex == 2){
          Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => WritePage(),
                transitionDuration: Duration(seconds: 0),
              )
          );
        }
      });
    }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
          // selectedItemColor: const Color(0xff6990FF),
          // selectedIconTheme: IconThemeData(color: const Color(0xff6990FF)),
          // unselectedIconTheme: IconThemeData(color: const Color(0xff6990FF)),
          // fixedColor: const Color(0xff6990FF),
          // type: BottomNavigationBarType.fixed,
          // onTap: (index) => {},
          // currentIndex: 3,
          items: [
        new BottomNavigationBarItem(
          icon: Image.asset("images/주웠어요@4x.png", scale: 4),
          // icon: IconButton(icon: Image.asset("images/주웠어요@4x.png", scale: 4),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //         PageRouteBuilder(
          //         pageBuilder: (context, animation1, animation2) => SignIn(),
          //         transitionDuration: Duration(seconds: 0),
          //         )
          //     );
          //   },
          // ),
          title: Text('주웠어요'),
        ),
        new BottomNavigationBarItem(
          icon: Image.asset("images/찾아요@4x.png", scale: 4),
          title: Text('찾아요'),
        ),
        new BottomNavigationBarItem(
          icon: Image.asset("images/글쓰기@4x.png", scale: 4),
          title: Text('글쓰기'),
        ),
        new BottomNavigationBarItem(
          icon: Image.asset("images/채팅말풍선@4x.png", scale: 4),
          title: Text('채팅방'),
        ),
        new BottomNavigationBarItem(
          icon: Image.asset("images/크랑이_1@4x.png", scale: 4),
          title: Text('내계정'),
        )],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff6990FF),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed
      )

          // body: Stack(
          //   children: [
          //     // list()
          //   ]
          // )
        );
  }

  // Widget list(){
  //
  // }

}