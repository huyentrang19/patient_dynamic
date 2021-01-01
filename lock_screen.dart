import 'package:flutter/material.dart';


class LockScreen extends StatefulWidget {

  LockScreen(  {Key key, this.title, @required this.categorygroup, @required this.patientID,@required this.place,@required this.dateTime, }) : super(key: key);
  final String title;
  final String categorygroup;
  final String patientID;
  final String place;
  final String dateTime;


  @override
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('KatApp'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(
          children: <Widget>[
            SizedBox(
                height: 200,
                child: Container(

                  alignment: Alignment.center,
                  child: Text(widget.categorygroup,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[1000])),
                )),
            SizedBox(
                width: 250,
                height: 40,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('PatientenID:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[900],
                      )),
                )),
            SizedBox(
                width: 250,
                height: 40,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.patientID,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[900],
                      )),
                )),
            SizedBox(
              height: 20,
            ), SizedBox(
                width: 250,
                height: 40,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Standort:',
                      style: TextStyle(fontSize: 20, color: Colors.blue[900])),
                )),
            SizedBox(
                width: 250,
                height: 90,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.place,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[900],
                      )),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 250,
                height: 40,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Datum/ Uhrzeit:',
                      style: TextStyle(fontSize: 20, color: Colors.blue[900])),
                )),
            SizedBox(
                width: 250,
                height: 50,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.dateTime,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[900],
                      )),
                )),
            SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 300,
                height: 50,
                child: Container(
                    child: RaisedButton(
                        child: new Text('Eingabe rückgängig machen',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        color: Colors.blue[900],
                        onPressed: () {
                          Navigator.pop(context);
                        }))),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 300,
                height: 50,
                child: Container(
                    child: RaisedButton(
                        child: new Text('Zweite Sichtung',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        color: Colors.grey,
                        onPressed: null))),
          ],
        ),
      ),
    );
  }
}
