import 'package:flutter/material.dart';
import 'package:myapp/flight_model.dart';
import 'package:myapp/flights_card.dart';
class FlightDetailsScreen extends StatelessWidget{
  final String fullName;
  final Flight flight;
  FlightDetailsScreen({
    this.fullName,
    this.flight,
  });
  @override
  Widget build(BuildContext context) {
  get_RichText(title,name) {
    return RichText(
      text: TextSpan(
          style: TextStyle(fontSize: 20.0, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: title, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: name, style: TextStyle(color: Colors.grey)),
          ]
      ),
    );
  }
  _passangerDetailsCard() {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        height: 120.0,
        child: Column(
          children: <Widget>[
            get_RichText("Passenger: ", fullName),
            SizedBox(height: 10.0,),
            get_RichText("Date: ", "24/05/21"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                get_RichText("Flight: ", "INDIGO042B"),
                SizedBox(width: 10.0,),
                get_RichText("Class: ", "Business"),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                get_RichText("Seat: ", "21B"),
                SizedBox(width: 10.0,),
                get_RichText("Gate: ", "17A"),
              ],
            ),
          ],
        ),
      ),
    );
  }
    return Scaffold(
      appBar: AppBar(title: Text("Flight details")
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
        alignment:Alignment.topCenter,
          children: <Widget>[
            Container(
              color: Colors.amber,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: <Widget>[
                    FlightCard(
                      flight: flight,
                      isClickable: false,
                    ),
                    SizedBox(height: 20.0,),
                    _passangerDetailsCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}