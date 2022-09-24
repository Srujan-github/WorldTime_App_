import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('World_Time App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body:  SafeArea(child:Column(
        children: [
         TextButton.icon(
             onPressed: (){
               Navigator.pushNamed(context, '/location');
             },
             icon: Icon(Icons.edit_location),
             label:  Text('Edit Location'))
        ],
      )),
    );
  }
}
