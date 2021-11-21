import 'package:flutter/material.dart';
import 'package:tugas_progmob/main.dart';

class Pertemuan1 extends StatefulWidget {
  const Pertemuan1({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<Pertemuan1> createState() => _Pertemuan1State();
}

class _Pertemuan1State extends State<Pertemuan1> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tugas Progmob 2021',
            ),
            Padding(padding: EdgeInsets.all(16.5)),
            TextFormField(
              decoration: new InputDecoration(
                labelText: "input disini :",
                hintText: "ini merupakan percobaan",
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5),
                )
              ),
            ),
            Padding(padding: EdgeInsets.all(9.0)),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              }
            )
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
       // tooltip: 'Increment',
       // child: const Icon(Icons.add),
    //  ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
