import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'editprofile.dart';
import 'sign_in.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: EditProfile()
        home: SignIn()
    );
  }
}
//         home: HomeWidget()
//     );
//   }
// }
//
// class HomeWidget extends StatefulWidget{
//   @override
//   _HomeWidgetState createState() => _HomeWidgetState();
// }
//
// class _HomeWidgetState extends State<HomeWidget>{
//   @override
//   void initState() {
//     super.initState();
//     // _delay();
//   }
//   _delay () {
//     Future.delayed(Duration(seconds: 1), () {
//
//     });
//   }
//   Widget build(BuildContext context) {
//     return _signIn();
//   }
//
//   Widget _signUp(){
//     return Scaffold(
//         body: Center(
//             child: list2()
//         )
//     );
//   }
//
//   Widget _signIn(){
//     return Scaffold(
//         body: Center(
//             child: list()
//         )
//     );
//   }
//
//   Widget list2(){
//     return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text("HisFinder", style: TextStyle(
//               fontFamily: 'avenir',
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.w500,
//               color: const Color(0xff6990FF)
//           ),
//             textScaleFactor: 2.5,
//           ),
//           Container(
//             width:330,
//             padding: EdgeInsets.only(top:20,bottom:5),
//             child:
//             Column(
//               children: <Widget>[
//                 TextFormField(
//                   decoration: new InputDecoration(
//                     prefixIcon: Image.asset("images/human.png", scale: 3),
//                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                     hintText: 'student ID',
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.all(5)),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: new InputDecoration(
//                     prefixIcon: Image.asset("images/lock.png", scale: 3),
//                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                     hintText: 'password',
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.all(5)),
//                 TextFormField(
//                   decoration: new InputDecoration(
//                     prefixIcon: Image.asset("images/lock.png", scale: 3),
//                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                     hintText: 'password confirm',
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Padding(padding: EdgeInsets.only(bottom:20)),
//           SizedBox(
//             width: 330,
//             child: RaisedButton(
//                 color: const Color(0xff6990FF),
//                 child: Text('login'), textColor: Colors.white,
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => _signIn()),
//                   );
//                 }
//             ),
//           ),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Have an account?  ", style: TextStyle(fontFamily: 'avenir', color: const Color(0xff6990FF))),
//                 Text("Sign in", style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'avenir', color: const Color(0xff6990FF)))
//               ]
//           )
//         ]
//     );
//   }
//
//   Widget list(){
//     return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text("HisFinder", style: TextStyle(
//               fontFamily: 'avenir',
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.w500,
//               color: const Color(0xff6990FF)
//           ),
//             textScaleFactor: 2.5,
//           ),
//           Container(
//             width:330,
//             padding: EdgeInsets.only(top:20,bottom:5),
//             child:
//               Column(
//                 children: <Widget>[
//                   TextFormField(
//                     decoration: new InputDecoration(
//                       prefixIcon: Image.asset("images/human.png", scale: 3),
//                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                       hintText: 'student ID',
//                   ),
//                   ),
//                   Padding(padding: EdgeInsets.all(5)),
//                   TextFormField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       prefixIcon: Image.asset("images/lock.png", scale: 3),
//                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
//                       hintText: 'password',
//                     ),
//                   ),
//                 ],
//             ),
//           ),
//           Container(
//             width:330,
//             child: Align(
//               alignment: Alignment.topRight,
//               child:
//                 Text("forgot your password?",textAlign: TextAlign.end, style: TextStyle(fontFamily: 'avenir', color: const Color(0xff6990FF))),
//           ),
//           ),
//           Padding(padding: EdgeInsets.only(bottom:20)),
//           SizedBox(
//             width: 330,
//             child: RaisedButton(
//                 color: const Color(0xff6990FF),
//                 child: Text('login'), textColor: Colors.white,
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => _signUp()),
//                   );
//                 }
//             ),
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Don't have an account?  ", style: TextStyle(fontFamily: 'avenir', color: const Color(0xff6990FF))),
//                 Text("Sign up", style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'avenir', color: const Color(0xff6990FF)))
//               ]
//           )
//         ]
//     );
//   }
//
// }











//     home: home()
//   );
// }
//
// Widget home(){
//   return Scaffold(
//     body: body()
//   );
// }
//
// Widget body(){
//   return Align(
//     child: list()
//   );
// }
//
// Widget list(){
//   List<String> items = [];
//   items.add('Hello');
//   items.add('This is flutter');
//
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: List.generate(items.length,(index){
//       return Text(items[index])
//     ;})
//   );
// }

// }