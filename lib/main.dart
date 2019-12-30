import 'package:flutter/material.dart';
import 'package:flutter_states_rebuilder_tutorial/data/weather_repository.dart';
import 'package:flutter_states_rebuilder_tutorial/pages/weather_search_page.dart';
import 'package:flutter_states_rebuilder_tutorial/state/weather_store.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Injector(
        inject: [
          Inject<WeatherStore>(() => WeatherStore(FakeWeatherRepository())),
        ],
        builder: (_) => WeatherSearchPage(),
      ),
    );
  }
}
