import 'package:flutter/material.dart';
import 'package:flutter_apphg/start_triage_system/triage_data.dart';
import 'lock_screen.dart';

class CameraAccess extends StatefulWidget {
  final String title;
  final Category category;

  CameraAccess(this.category, {Key key, this.title}) : super(key: key);
  @override
  _CameraAccessState createState() => _CameraAccessState();
}

class _CameraAccessState extends State<CameraAccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KatApp"),
        backgroundColor: Colors.blue,
        actions: <Widget>[],
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 40,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Bitte machen Sie ein Foto des Patienten',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.blue[900])),
                    )),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: RaisedButton(
                      child: Icon(Icons.photo_library,
                          color: Colors.black, size: 35),
                      color: Colors.grey,
                      onPressed: null),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: RaisedButton(
                      child: Text('Absenden',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      color: Colors.red,
                      onPressed: () {
                        Category category = widget.category;
                        if (category is CategoryT1A) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LockScreen(
                                    categorygroup: "Kategorie T1A",
                                    patientID: '1',
                                    place:
                                        'Hochschule Reutlingen \nAlteburgstraße 150 \n72762 Reutlingen',
                                    dateTime: '15.07.2020/11:13'),
                              ));
                        } else if (category is CategoryT1B) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LockScreen(
                                      categorygroup: "Kategorie T1B",
                                      patientID: '1',
                                      place:
                                          'Hochschule Reutlingen \nAlteburgstraße 150 \n72762 Reutlingen',
                                      dateTime: '15.07.2020/11:13')));
                        } else if (category is CategoryT1C) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LockScreen(
                                    categorygroup: "Kategorie T1C",
                                    patientID: '1',
                                    place:
                                        'Hochschule Reutlingen \nAlteburgstraße 150 \n72762 Reutlingen',
                                    dateTime: '15.07.2020/11:13'),
                              ));
                        } else if (category is CategoryT1D) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LockScreen(
                                    categorygroup: "Kategorie T1D",
                                    patientID: '1',
                                    place:
                                        'Hochschule Reutlingen \nAlteburgstraße 150 \n72762 Reutlingen',
                                    dateTime: '15.07.2020/11:13'),
                              ));
                        } else if (category is CategoryT2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LockScreen(
                                    categorygroup: "Kategorie T2",
                                    patientID: '1',
                                    place:
                                        'Hochschule Reutlingen \nAlteburgstraße 150 \n72762 Reutlingen',
                                    dateTime: '15.07.2020/11:13'),
                              ));
                        } else if (category is CategoryT3) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LockScreen(
                                    categorygroup: "Kategorie T3",
                                    patientID: '1',
                                    place:
                                        'Hochschule Reutlingen \nAlteburgstraße 150 \n72762 Reutlingen',
                                    dateTime: '15.07.2020/11:13'),
                              ));
                        } else if (category is CategoryT4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LockScreen(
                                    categorygroup: "Kategorie T4",
                                    patientID: '1',
                                    place:
                                        'Hochschule Reutlingen \nAlteburgstraße 150 \n72762 Reutlingen',
                                    dateTime: '15.07.2020/11:13'),
                              ));
                        }
                      }),
                ),
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
          );
        },
      ),
    );
  }
}
