import 'package:flutter/material.dart';
import 'package:splashscreen/facts.dart';
import 'package:splashscreen/quizpage.dart';
import 'package:splashscreen/splash.dart';
import 'package:splashscreen/catagories.dart';
import 'package:splashscreen/homepage.dart';
//import 'package:splashscreen/quizpage.dart';
//import 'package:splashscreen/result.dart';

void main() => runApp(MaterialApp(
   initialRoute: '/',
   routes: {
     '/': (context) =>Splashscreen(),
     '/homepage': (context) =>Homepage(),
     '/catagories': (context) =>Quiz(),
     '/facts':(context)=>Quizpage(),
    
   },
));

