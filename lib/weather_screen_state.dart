
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:weathers/weather_forcast_item.dart';
//import 'package:weathers/weatherscreen.dart';

abstract class WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    super.initState();
    getWeatherData();
  }
  Future getWeatherData() async{
    try{final res = await http.get(Uri.parse(
    'https://api.openweathermap.org/data/2.5/forecast?q=London&APPID=af94be930f5f70acc2d1b12cd8d5e88e'));
    final data = jsonDecode(res.body);
    if (data['cod'] != 200){
      throw 'an error occured';

    } 
    print(data['list'][0]['main']['temp']);
    } catch(e){
      throw e.toString();
    }
  
  } 
}
  





class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});
@override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late Future<Map<String, dynamic>> weather;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}