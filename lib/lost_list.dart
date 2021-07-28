import 'package:flutter/material.dart';

class LostList extends StatelessWidget {
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
  // void onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child:
          AppBar(
            elevation: 0,
            leading: IconButton(
              icon: Image.asset("images/카테고리@4x.png", scale: 4),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     PageRouteBuilder(
                //       pageBuilder: (context, animation1, animation2) => SignIn(),
                //       transitionDuration: Duration(seconds: 0),
                //     )
                // );
              },
            ),
            actions: [
              IconButton(
                icon: Image.asset("images/종@4x.png", scale: 4),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     PageRouteBuilder(
                  //       pageBuilder: (context, animation1, animation2) => SignIn(),
                  //       transitionDuration: Duration(seconds: 0),
                  //     )
                  // );
                },
              ),
            ],
            backgroundColor: const Color(0xff6990FF),
            centerTitle: true,
            title: Text(
              'HisFinder',
              style: TextStyle(
                fontFamily: 'avenir',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
              textScaleFactor: 1.2,
            ),
          )
      ),
      body: BodyWidget(),
    );
  }
}
class HeaderTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 450,
        height: 50,
        color: Color(0xff6990FF),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 450,
              height: 30,
              color: Colors.white,
              child: TextFormField(
                style: TextStyle(
                    color: Colors.black, decorationColor: Colors.black),
                cursorColor: Colors.black,
              ),
            ),
          ),
        ));
  }
}
class Data {
  late String title; // 글 제목
  late String object; // 물품
  late bool isLost; // True => 찾아요 false => 잃어버렸어요
  late String location; // 장소
  late String time; // 습득일
  late Image image; // 사진
  Data(this.title, this.object, this.isLost, this.location, this.time);
}
List<Data> mydata = [
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("텀블러 잃어버렸어요!", "텀블러", true, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
  Data("가방 찾아가세요!!!", "가방", false, "뉴턴홀", "6월 1일"),
];
class DataTile extends StatelessWidget {
  final Data data;
  DataTile(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Icon(
            Icons.image,
            size: 80,
          ),
        ),
        title: Text(data.title),
        subtitle: Text(('\n분실한 물품 : ') +
            data.object +
            '\n\n장소 : ' +
            data.location +
            '\n분실일 : ' +
            data.time),
        trailing: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(
            '2021년 6월 2일',
            textScaleFactor: 0.7,
            style: TextStyle(color: Colors.black54),
          ),
        ]),
        onTap: () {
          // click action
        },
      ),
    );
  }
}
class _BodyWidget extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    List<Data> listData = <Data>[];
    for (int n = 0; n < mydata.length; n++) {
      if(mydata[n].isLost)
        listData.add(mydata[n]);
    }
    return Container(
        color: Color(0xff6990FF),
        child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return Container(color: Colors.white, child: const Divider());
            },
            padding: const EdgeInsets.all(0),
            itemCount: listData.length,
            itemBuilder: (context, int i) {
              if (i == 0)
                return HeaderTile();
              return DataTile(listData[i]);
            }
        )
    );
  }
}
class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyWidget();
}