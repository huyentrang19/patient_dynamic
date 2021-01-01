import 'package:flutter/material.dart';
import 'package:flutter_apphg/start_triage_system/triage_data.dart';
import 'after_opening_airways.dart';
import 'breathing_frequency_per_minute.dart';

class SpontaneousBreathingPresent extends StatefulWidget {
  SpontaneousBreathingPresent(bool isAmbulatory,
      {Key key,
      this.title,
      })
      : super(key: key);
  final String title;

  @override
  _SpontaneousBreathingPresentState createState() =>
      _SpontaneousBreathingPresentState();
}

class _SpontaneousBreathingPresentState
    extends State<SpontaneousBreathingPresent> {

  Category get superCategory => new Category (false, null);


  @override
  void initState() {

    super.initState();
  }
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
                  child: Text('Spontanatmung vorhanden?',
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
                        child: new Text('Ja',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900])),
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            superCategory.isSpontaneousBreathingPresent = true;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BreathingFrequencyPerMinute(superCategory.isSpontaneousBreathingPresent)),
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

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AfterOpeningAirways(superCategory.isSpontaneousBreathingPresent
                                )),
                            //     afterOpeningAirways: true,
                            //    isSpontaneousBreathingPresent: this.isSpontaneousBreathingPresent)
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
