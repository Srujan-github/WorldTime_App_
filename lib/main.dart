import 'package:flutter/material.dart';
import 'package:worldtimeapp/pages/home.dart';
import 'package:worldtimeapp/pages/choose_location.dart';
import 'package:worldtimeapp/pages/loading.dart';
import 'package:http/http.dart';
void main() =>runApp(MaterialApp(
  // home: Home(),
  initialRoute: '/',
  routes: {
    '/':(context)=>Loading(),
    '/home':(context)=>Home(),
    '/location':(context)=>ChooseLocation(),

  },
)
);


