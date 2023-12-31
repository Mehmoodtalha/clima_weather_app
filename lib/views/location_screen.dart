import 'package:flutter/material.dart';

import '../utils/constants.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    String margin = "15a";
    double myMargin;
    Color rang;
    try {
      myMargin = double.parse(margin);
      rang = Colors.teal;
    } catch (e) {
      print(e);
      myMargin = 30;
      rang = Colors.amber;
    }
    return Scaffold(
      body: Container(
        color: rang,
        margin: EdgeInsets.all(myMargin),
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/images/location_background.jpg'),
      //       fit: BoxFit.cover,
      //       colorFilter: ColorFilter.mode(
      //           Colors.white.withOpacity(0.8), BlendMode.dstATop),
      //     ),
      //   ),
      //   constraints: BoxConstraints.expand(),
      //   child: SafeArea(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: <Widget>[
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: <Widget>[
      //             ElevatedButton(
      //               onPressed: () {},
      //               child: Icon(
      //                 Icons.near_me,
      //                 size: 50.0,
      //               ),
      //             ),
      //             ElevatedButton(
      //               onPressed: () {},
      //               child: Icon(
      //                 Icons.location_city,
      //                 size: 50.0,
      //               ),
      //             ),
      //           ],
      //         ),
      //         Padding(
      //           padding: EdgeInsets.only(left: 15.0),
      //           child: Row(
      //             children: <Widget>[
      //               Text(
      //                 '32°',
      //                 style: kTempTextStyle,
      //               ),
      //               Text(
      //                 '☀️',
      //                 style: kConditionTextStyle,
      //               ),
      //             ],
      //           ),
      //         ),
      //         Padding(
      //           padding: EdgeInsets.only(right: 15.0),
      //           child: Text(
      //             "It's 🍦 time in San Francisco!",
      //             textAlign: TextAlign.right,
      //             style: kMessageTextStyle,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
