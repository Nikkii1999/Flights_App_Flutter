import 'package:flutter/material.dart';
import 'package:myapp/Home_Screen1.dart';
import 'package:myapp/flight_details.dart';
import 'package:myapp/flight_list.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flights App",
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: HomeBody(),
      routes: <String, WidgetBuilder>{
        'list':(context) => FlightDetailsScreen(),
        'details':(context) =>FlightListScreen(),
      },
    );
  }
}
