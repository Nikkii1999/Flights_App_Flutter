import 'package:flutter/material.dart';
import 'package:myapp/flight_details.dart';
import 'package:myapp/flights_card.dart';
import 'package:myapp/flight_dummy.dart';
import 'package:myapp/flight_model.dart';
class FlightListScreen extends StatelessWidget {

  final String fullName;
  FlightListScreen({this.fullName});
  @override
  Widget build(BuildContext context) {
    Flight flight;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(fullName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  ListView.builder(
              itemCount: FlightsMockData.count,
              itemBuilder: (context,index){
                flight =FlightsMockData.getFlights(index);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlightCard(
                    fullName: fullName,
                    flight: flight,
                    isClickable:true,
                  ),
                );
               }
        ),
      ),
    );
  }
}