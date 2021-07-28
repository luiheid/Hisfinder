import 'package:flutter/material.dart';
import 'sign_in.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [list(context),bottom(context)]
          ),
        )
    );
  }

  Widget list(BuildContext context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("HisFinder", style: TextStyle(
              fontFamily: 'avenir',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: const Color(0xff6990FF)
          ),
            textScaleFactor: 2.5,
          ),
          Container(
            width:330,
            padding: EdgeInsets.only(top:20,bottom:5),
            child:
            Column(
              children: <Widget>[
                TextFormField(
                  decoration: new InputDecoration(
                    prefixIcon: Image.asset("images/human.png", scale: 3),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
                    hintText: 'student ID',
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    prefixIcon: Image.asset("images/lock.png", scale: 3),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
                    hintText: 'password',
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    prefixIcon: Image.asset("images/lock.png", scale: 3),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color(0xff6990FF))),
                    hintText: 'password confirm',
                  ),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom:20)),
          SizedBox(
            width: 330,
            child: RaisedButton(
                color: const Color(0xff6990FF),
                child: Text('Sign up'), textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => SignIn(),
                        transitionDuration: Duration(seconds: 0),
                      )
                  );
                }
            ),
          ),
        ]
    );
  }

  Widget bottom(BuildContext context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Have an account?", style: TextStyle(fontFamily: 'avenir', color: const Color(0xff6990FF))),
            TextButton(
                onPressed: (){
                  // Navigator.of(context).push(
                  //   MaterialPageRoute<void>(
                  //       builder: (context) => SignIn()
                  //   )
                  // );
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => SignIn(),
                        transitionDuration: Duration(seconds: 0),
                      )
                  );
                },
                child: Text("Sign in", style: TextStyle(fontWeight: FontWeight.w600,
                    fontFamily: 'avenir',
                    color: const Color(0xff6990FF)))
            )
          ]
      ),
        Container(height: 30)]
    );
  }
}