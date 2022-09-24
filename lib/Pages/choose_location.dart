import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
      String username=await Future.delayed(Duration(seconds: 3),(){
      return 'Yoshi';
    });
    //simulate network request to get bio of the user name
   String bio= await Future.delayed(Duration(seconds: 2),(){
      return ('vegan , collator');
    });
    print('$username-$bio');

  }

// int count=0;
  @override
  void initState() {
    super.initState();
    getData();
    print('hey there');
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
      body: Text('hello in choose location')
    );
  }
}
