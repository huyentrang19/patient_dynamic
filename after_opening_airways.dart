import 'package:flutter/material.dart';
import 'package:flutter_apphg/start_triage_system/triage_data.dart';

import 'camera_access.dart';

class AfterOpeningAirways extends StatefulWidget {
  AfterOpeningAirways(bool isSpontaneousBreathingPresent,
      {Key key, this.title})
      : super(key: key);

  final String title;

  @override
  _AfterOpeningAirwaysState createState() => _AfterOpeningAirwaysState();
}

class _AfterOpeningAirwaysState extends State<AfterOpeningAirways> {

  CategoryT1A categoryT1A = new CategoryT1A(true);
  CategoryT4 categoryT4 = new CategoryT4(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KatApp'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(
          children: <Widget>[
            SizedBox(
                height: 40,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[500]),
                  alignment: Alignment.center,
                  child: Text('Ist der Patient gehfähig?',
                      style: TextStyle(fontSize: 20, color: Colors.blue[900])),
                )),
            SizedBox(
                height: 40,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[500]),
                  alignment: Alignment.center,
                  child: Text('Nein',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                          backgroundColor: Colors.grey[500])),
                )),
            SizedBox(
                height: 40,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[500]),
                  alignment: Alignment.center,
                  child: Text('A:Spontanatmung vorhanden?',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                          backgroundColor: Colors.grey[500])),
                )),
            SizedBox(
                height: 40,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[500]),
                  alignment: Alignment.center,
                  child: Text('Nein',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                          backgroundColor: Colors.grey[500])),
                )),
            SizedBox(
              height: 110,
            ),
            SizedBox(
                height: 50,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red, width: 2),
                      right: BorderSide(color: Colors.red, width: 2),
                      top: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  child: Text('Kategorie A',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue[900],
                          backgroundColor: Colors.white)),
                )),
            SizedBox(
                height: 50,
                width: 500,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red, width: 2),
                      right: BorderSide(color: Colors.red, width: 2),
                      bottom: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  child: Text('Nach Öffnung der Atemwege?',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue[900],
                          backgroundColor: Colors.white)),
                )),
            SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: Container(
                    child: RaisedButton(
                        child: new Text('Ja',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900])),
                        color: Colors.blue,
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraAccess(categoryT1A)
                                ));

                        }))),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: Container(
                    child: RaisedButton(
                        child: new Text('Nein',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900])),
                        color: Colors.blue,
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraAccess(categoryT4)),
                          );
                        }))),
            SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: Container(
                    child: RaisedButton(
                        child: new Text('Zurück',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        color: Colors.blue[900],
                        onPressed: () {
                          Navigator.pop(context);
                        }))),
          ],
        ),
      ),
    );
  }
}
