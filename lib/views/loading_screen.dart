import 'package:clima_weather_app/services/location.dart';
import 'package:clima_weather_app/views/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

const apikey = "a01c780906159cfcacf1bb6d885be9bf";

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // @override
  // void deactivate() {
  //   // TODO: implement deactivate
  //   super.deactivate();
  //   getLocation();
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    // getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    http.Response response = await http.get(Uri.parse(
        "https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=$apikey"));
    // Response response = await get(Uri.parse(
    //     'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22'));
    // print(response.body);

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
    } else {
      print(response.statusCode);
    }

    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                // getLocation();
                getData();
              },
              child: Text('Get Location'),
            ),
            ElevatedButton(
                onPressed: () {
                  // getData();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LocationScreen()));
                },
                child: Text("location"))
          ],
        ),
      ),
    );
  }
}
