import 'package:flutter/material.dart';

class Data {
  late String name; // 이름
  late String content; // 내용
  late Image image; // 사진
  late String time; //시간
  Data(this.name, this.content, this.time, this.image);
}
List<Data> mydata = [
  Data("크랑이", "안녕하세요", "20:00", Image.asset("images/크랑이_1@4x.png", scale: 3)),
  Data("크랑이", "aaaa", "20:51", Image.asset("images/크랑이_1@4x.png", scale: 3)),
  Data("크랑", "abcdefghijklmnop", "21:00", Image.asset("images/크랑이_1@4x.png", scale: 3)),
];
class DataTile extends StatelessWidget {
  final Data data;
  DataTile(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      color: Colors.white,
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(0),
          child:
            data.image,
        ),
        title: Text(data.name),
        subtitle: Text(
            data.content
        ),
        trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(
            data.time,
            textScaleFactor: 0.7,
            style: TextStyle(color: Colors.black54),
          ),
        ]),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Got(),
            ),
          );
        }
      ),
    );
  }
}
class _BodyWidget extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    List<Data> listData = <Data>[];
    for (int n = 0; n < mydata.length; n++) {
        listData.add(mydata[n]);
    }
    return Container(
      padding: EdgeInsets.only(top:7),
        color: Colors.white,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Container(child: const Divider());
          },
          padding: const EdgeInsets.all(0),
          itemCount: listData.length,
          itemBuilder: (context, int i) {
            return DataTile(listData[i]);
          },
        ));
  }
}
class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyWidget();
}


class Got extends StatelessWidget {
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
                    Text("Chatting", style: TextStyle(
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    )
                )
            ),
            body:BodyWidget())
    );
  }
}

