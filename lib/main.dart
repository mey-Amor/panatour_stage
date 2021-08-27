import 'package:flutter/material.dart';
import 'package:panatour_stage/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';


import 'categories.dart';
import 'choice.dart';
import 'destination.dart';
import 'login.dart';
import 'map.dart';
import 'signup.dart';

void main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(new MyApp()); }
  
Future<SharedPreferences> prefs =  SharedPreferences.getInstance();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
       '/signup': (BuildContext context) => new SignupPage()
      },
      home: new WelcomePage (),
    );
  }
}

