import 'package:flutter/material.dart';
import 'package:flutter_states_rebuilder_tutorial/pages/weather_search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: WeatherSearchPage(),
    );
  }
}
