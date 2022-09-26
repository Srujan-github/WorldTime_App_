import 'dart:async';

import 'package:flutter/material.dart';
import 'package:worldtimeapp/Services/World_Time.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {

  void setupWorldTime() async{
    WorldTime instance=WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
   await instance.getTime();
  Navigator.pushReplacementNamed(context, '/home',arguments:{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    'isDaytime':instance.isDaytime,
  });
  }

// int count=0;
  @override
  void initState() {
    super.initState();
  setupWorldTime();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("GeeksForGeeks")),
      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}
