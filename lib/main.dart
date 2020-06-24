import 'package:flutter/material.dart';
import 'package:muksgraphy/screens/homepage.dart';
import 'package:muksgraphy/screens/login.dart';
import 'package:muksgraphy/screens/signup.dart';
import 'package:muksgraphy/utils/preference.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:muksgraphy/screens/signup.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.pref = await SharedPreferences.getInstance();
  runApp(Muksgraphy());

}

class Muksgraphy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Constants.pref.getBool("loggedIn")==true?Homepage():LoginPage(),
      theme: ThemeData(
       primarySwatch: Colors.purple
      ),
      routes: {
        LoginPage.routeName : (context) => LoginPage(),
        SignUP.routeName : (context) => SignUP(),
        // Homepage.routeName :(context) =>Homepage()
      }
    );

  }
}