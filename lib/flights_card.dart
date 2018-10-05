import 'package:flutter/material.dart';
import 'package:myapp/flight_details.dart';
import 'package:myapp/flight_model.dart';
class FlightCard extends StatelessWidget {
  Flight flight;
  String fullName;
  bool isClickable;

  FlightCard({this.flight,this.fullName,this.isClickable});
  _cityStyle(code,cityName,time){
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(code,style: TextStyle(
            color: Colors.black,
              fontSize: 40.0,
              fontWeight:FontWeight.bold),),
          Text(cityName,style: TextStyle(fontSize: 18.0),),
          SizedBox(height: 10.0,),
          Text(time,style: TextStyle(color: Colors.grey,fontSize: 14.0),),

        ],
      ),
    );
    }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        isClickable?
        Navigator.of(context).push(
          MaterialPageRoute(
              builder:(context)=>FlightDetailsScreen(
               fullName: fullName,
                flight: flight,
              )
          )
        ):null;
      },
      child: Card(
      elevation: 5.0,
      margin: EdgeInsets.all(0.0),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(5.0),
          ),
          child: Container(
             child: Padding(padding: const EdgeInsets.symmetric(
              vertical: 20.0),
               child: Row(
                mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   _cityStyle( flight.from, flight.fromCity,flight.departTime),
                    Icon(Icons.airplanemode_active),
                    _cityStyle(flight.to, flight.fromCity,flight.arriveTime),
                  ],
            ),
         ),
       ),
      ),
    );
  }
}
