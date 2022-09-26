import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
    late String location;//location name for the url
    late String time;//the time in the location
    late String flag;//url to an asserts flag location
    late String url;//location url for api endpoint
     bool isDaytime=true; //true or flase if daytime or not

    WorldTime({required this.location,required this.flag,required this.url});


  Future<void> getTime() async {
      try{
          Response response=await get(Uri.parse('https://www.worldtimeapi.org/api/timezone/$url'));
          Map data=jsonDecode(response.body);
          // print(data);

          //get properties from data
          String datetime=data['datetime'];
          String offset=data['utc_offset'].substring(1,3);
          // print(datetime);
          // print(offset);

          // create DateTime object
          DateTime now=DateTime.parse(datetime);
          now.add(Duration(hours: int.parse(offset)));
          //set time propety
          isDaytime = now.hour >6 && now.hour<20? true :false;
          time= DateFormat.jm().format(now);
      }catch (e){
          print('caught error:$e');
          time='loading..';
      }

    }
}



