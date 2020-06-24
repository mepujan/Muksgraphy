import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

    void navigationPage() {
      // Navigator.pushNamed(context, Constants.pref.getBool("loggedIn")==true?Homepage("abcder", "pujan"):LoginPage.routeName);
      // Navigator.pushNamed(context,LoginPage.routeName);
    
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:Container(
         
          child: Image.asset(
            "images/logo.PNG",
           height: 600,
           width: 600,
          ),
        
        )
      ),

      
    );
  }
}