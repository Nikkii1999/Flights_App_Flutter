import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  HomeBodyState createState() {
    return HomeBodyState();
    // TODO: implement build

  }
}


class HomeBodyState extends State<HomeBody>{
  bool isRed = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print(isRed);
    return Scaffold(
      appBar:AppBar() ,
      body: Center(
        child: RaisedButton(
            color: isRed?Colors.blue:Colors.red,
            onPressed:(){
              setState(() {
                isRed =!isRed;
              });
              print(isRed);
            }
        ),
      ),
    );
  }
}