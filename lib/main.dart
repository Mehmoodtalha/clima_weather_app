import 'package:clima_weather_app/views/city_screen.dart';
import 'package:clima_weather_app/views/location_screen.dart';
import 'package:flutter/material.dart';

import 'views/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoadingScreen(),
    );
  }
}
