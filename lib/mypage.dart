import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'editprofile.dart';

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(40.0),
                child:
                AppBar(
                    elevation: 0,
                    // leading: IconButton(
                    //   icon: Image.asset("images/이전@4x.png", scale: 4),
                    //   onPressed: () {
                    //     Navigator.push(
                    //         context,
                    //         PageRouteBuilder(
                    //           pageBuilder: (context, animation1, animation2) => SignIn(),
                    //           transitionDuration: Duration(seconds: 0),
                    //         )
                    //     );
                    //   },
                    // ),
                    backgroundColor: const Color(0xff6990FF),
                    centerTitle: true,
                    title:
                    Text("MyPage", style: TextStyle(
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    )
                )
            ),
            body: BodyWidget()
        )
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyWidget();
}

class _BodyWidget extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.only(top:7),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(30,40,0,40)),
                Image.asset("images/크랑이_1@4x.png", scale: 2),
                Padding(padding: EdgeInsets.only(right:20)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("크랑이", style:TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                    Padding(padding: EdgeInsets.only(bottom:5)),
                    Text("20000000", style:TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w300))
                  ]
                )
              ],
            ),
            SizedBox(
              width:size.width * 0.95,
              height:40,
              child: RaisedButton(
                elevation: 0,
                padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  side: BorderSide(color: const Color(0xff6990FF))
                ),
                child: Text('프로필 수정', textScaleFactor:1.17),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => EditProfile(),
                        transitionDuration: Duration(seconds: 0),
                      )
                  );
                }
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            Container(
              child: SizedBox(
                  width:size.width * 0.93,
                  height:40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('키워드 알림: ',textScaleFactor: 1.3),
                          Text('농협',textScaleFactor: 1.3, style: TextStyle(backgroundColor: const Color(0x48ffc107)))
                        ]
                      ),
                      GestureDetector(
                          onTap: (){
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) => SignIn(),
                              transitionDuration: Duration(seconds: 0),
                            )
                        );
                      },
                          child: Image.asset("images/설정@4x.png", scale: 10)
                      )
                    ],
                  ),
                ),
            ),
            Divider(
              indent:size.width * 0.025,
              endIndent: size.width * 0.025,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width:size.width * 0.93,
                  height:40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('내 글 보기',textScaleFactor: 1.5),
                      Image.asset("images/다음@4x.png", scale: 3)
                    ],
                  ),
                ),
                SizedBox(
                  width:size.width * 0.95,
                  height:40,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.transparent,
                    onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   PageRouteBuilder(
                    //     pageBuilder: (context, animation1, animation2) => MyPage(),
                    //     transitionDuration: Duration(seconds: 0),
                    //   )
                    // );
                    }
                  ),
                ),
              ],
            ),
            Divider(
              indent:MediaQuery.of(context).size.width * 0.025,
              endIndent: MediaQuery.of(context).size.width * 0.025,
            ),
          ],
        )
    );
  }
}