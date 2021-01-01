import 'package:flutter/material.dart';
import 'package:flutter_apphg/start_triage_system/camera_access.dart';
import 'package:flutter_apphg/start_triage_system/triage_data.dart';

class Neurology extends StatefulWidget {
  Neurology(bool isCirculation, {Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NeurologyState createState() => _NeurologyState();
}

class _NeurologyState extends State<Neurology> {
  CategoryT2 get categoryT2 => new CategoryT2 (false);
  CategoryT1D get categoryT1D => new CategoryT1D (false);
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
                height: 40,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[500]),
                  alignment: Alignment.center,
                  child: Text('Kreislauf:',
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
                  child: Text('Kapilläre Füllungszeit <= 2s ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                          backgroundColor: Colors.grey[500])),
                )),
            SizedBox(
              height: 50,
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
                  child: Text('Kategorie D',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue[900],
                          backgroundColor: Colors.white)),
                )),
            SizedBox(
                height: 80,
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
                  child: Text(
                      'Neurologie - folgt der Patient den Aufforderungen?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue[900],
                          backgroundColor: Colors.white)),
                )),
            SizedBox(
              height: 30,
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
                          setState(() {
                            categoryT1D.isNeurology = true;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraAccess(categoryT2)),
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
                        child: new Text('Nein',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900])),
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            categoryT1D.isNeurology = false;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraAccess(categoryT1D)),
                          );
                        }))),
            SizedBox(
              height: 20,
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
