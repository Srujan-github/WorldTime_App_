import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
int count=0;
  @override
  void initState() {
    super.initState();
    print('initState function run');
  }

  @override
  Widget build(BuildContext context) {
    print('bulid function run');
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
     appBar: AppBar(
       backgroundColor: Colors.blue.shade800,
       title: Text('Choose a Location'),
       centerTitle: true,
       elevation: 0,
     ),
      body: TextButton(
        onPressed: (){
          setState(() {
            count++;
          });
        },
        child: Text('counter is $count'),

      )
    );
  }
}
