import 'package:flutter/material.dart';
import 'package:flutter_apphg/start_triage_system/triage_data.dart';
import 'camera_access.dart';
import 'spontaneous_breathing_present.dart';

class Ambulatory extends StatefulWidget {
  Ambulatory({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AmbulatoryState createState() => _AmbulatoryState();
}

class _AmbulatoryState extends State<Ambulatory> {
  CategoryT3 get categoryT3 => new CategoryT3();
  Category get superCategory => new Category (null, null);
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
              height: 150,
            ),
            SizedBox(
                height: 100,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red, width: 2),
                      right: BorderSide(color: Colors.red, width: 2),
                      top: BorderSide(color: Colors.red, width: 2),
                      bottom: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  child: Text('Ist der Patient gehfähig?',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue[900],
                          backgroundColor: Colors.white)),
                )),
            SizedBox(
              height: 120,
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
                                builder: (context) =>
                                    CameraAccess(
                                        categoryT3)),
                          );
                        } ))),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: Container(
                    child: RaisedButton(
                        child
                            : new Text('Nein',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900])),
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            superCategory.isAmbulatory=false;
                          });

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SpontaneousBreathingPresent(superCategory.isAmbulatory)),

                          );
                        }))),
            SizedBox(
              height: 100,
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
