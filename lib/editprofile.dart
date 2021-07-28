import 'package:flutter/material.dart';
import 'package:sign_in/mypage.dart';
import 'bottombar.dart';

class EditProfile extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  // static const String _title = 'HisFinder';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: _title,
        debugShowCheckedModeBanner: false,
        home: MyStatefulWidget()
    );
  }
}
class MyStatefulWidget extends StatefulWidget {

  // const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}
// int _selectedIndex = 0;
class MyStatefulWidgetState extends State<MyStatefulWidget> {

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child:
            AppBar(
              elevation: 0,
              leading: IconButton(
                icon: Image.asset("images/back@4x.png", scale: 4),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => ChattingList(),
                        transitionDuration: Duration(seconds: 0),
                      )
                  );
                },
              ),
              // actions: [
              // TextButton(onPressed: () {
              // Navigator.push(
              // context,
              // PageRouteBuilder(
              // pageBuilder: (context, animation1, animation2) => ChattingList(),
              // transitionDuration: Duration(seconds: 0),
              // )
              // );
              // },
              // child: Text('완료', style: TextStyle(color: Colors.white), textScaleFactor: 1.25))
              // ],
              backgroundColor: const Color(0xff6990FF),
              centerTitle: true,
              title:
                Text("프로필 수정", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
            )
          ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30)),
            Image.asset("images/크랑이_1@4x.png", scale: 0.5),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("학번", textScaleFactor: 2, style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.only(bottom:30)),
                    Text("닉네임", textScaleFactor: 2, style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Padding(padding: EdgeInsets.only(right: 90),),
                Column(
                  children: [
                    Text("20000000", textScaleFactor: 2, style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.only(bottom:30)),
                    // Text("크랑이", textScaleFactor: 2, style: TextStyle(fontWeight: FontWeight.bold)),
                    // TextFormField(
                    //   decoration: new InputDecoration(
                    //     contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
                    //     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
                    //     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
                    //     hintText: 'student ID'
                    //   )
                    // )
                  ],
                )
              ],
            ),
          ],
        )
      )

    );
  }
}