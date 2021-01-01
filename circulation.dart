import 'package:flutter/material.dart';
import 'package:flutter_apphg/start_triage_system/camera_access.dart';
import 'package:flutter_apphg/start_triage_system/triage_data.dart';
import 'neurology.dart';

class CapillaryFillingTime extends StatefulWidget {
  CapillaryFillingTime(bool isBreathingFrequencyPerMinute, {Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CapillaryFillingTimeState createState() => _CapillaryFillingTimeState();
}

class _CapillaryFillingTimeState extends State<CapillaryFillingTime> {
  Category2 get superCategory2 => new Category2 (false, null);
  CategoryT1C get categoryT1C => new CategoryT1C ();


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
                  child: Text('Spontanatmung vorhanden?',
                      style: TextStyle(fontSize: 20, color: Colors.blue[900])),
                )),
            SizedBox(
                height: 40,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[500]),
                  alignment: Alignment.center,
                  child: Text('Ja',
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
                  child: Text('Atemfrequenz pro Minute:',
                      style: TextStyle(fontSize: 20, color: Colors.blue[900])),
                )),
            SizedBox(
                height: 40,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[500]),
                  alignment: Alignment.center,
                  child: Text('≤ 30',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                          backgroundColor: Colors.grey[500])),
                )),
            SizedBox(
              height: 150,
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
                  child: Text('Kategorie C',
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
                  child: Text('Kapilläre Füllungszeit:',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue[900],
                          backgroundColor: Colors.white)),
                )),
            SizedBox(
              height: 70,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: Container(
                    child: RaisedButton(
                        child: new Text('> 2s',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900])),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraAccess(categoryT1C)),
                          );
                        }))),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: Container(
                    child: RaisedButton(
                        child: new Text('≤ 2s',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900])),
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            superCategory2.isCirculation = false;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Neurology(superCategory2.isCirculation )),
                          );
                        }))),
            SizedBox(
              height: 70,
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
