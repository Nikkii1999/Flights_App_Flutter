import 'package:flutter/material.dart';
import 'package:myapp/flight_list.dart';
class HomeBody extends StatefulWidget{
  @override
  HomeBodyState createState() {
    return new HomeBodyState();
  }
}

class HomeBodyState extends State<HomeBody> {
  final textController = TextEditingController();
  @override
  void initState(){
    super.initState();
  }
  void dispose(){
    textController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Image(
              image: AssetImage('assests/logo.png'),
              height: 150.0,
              ),
            SizedBox(height: 40.0,),
            Text("Book my Flights",
            style: TextStyle(color: Colors.black,
              fontSize:30.0,
            fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0,),
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                hintText: "Full Name",
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0)
              ),
              //onChanged: (text){
                //print(text);
              //},
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 100.0),

              color: Colors.amber,
              child: Text("Proceed"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              onPressed: (){
                //Navigator.of(context).pushNamed('list');
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder:(context) => FlightListScreen(fullName: textController.text,
                  )));
                print('text controller');
                print(textController.text);
  },
        ),
          ],
        ),
        ],
        )
      ),
    );
  }
}