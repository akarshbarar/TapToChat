import 'package:flutter/material.dart';
import "dart:async";
import 'package:taptochat/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      title: "Tap to Chat",
      home: SplashScreen() ,
      routes: {
        '/home':(context)=>HomePage()
      },
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=>{
      Navigator.of(context).pushReplacementNamed('/home')
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("TAP_TO_CHAT",style: TextStyle(color: Colors.white,fontSize: 25),),
            CircularProgressIndicator()
          ],
        ),
        ),
      );
  }
}
