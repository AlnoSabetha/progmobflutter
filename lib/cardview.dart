import 'package:flutter/material.dart';
import 'package:tugas_progmob/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cardview extends StatefulWidget {
  const Cardview({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<Cardview> createState() => _CardviewState();
}

class _CardviewState extends State<Cardview> {
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
        child: Container(
          child: GestureDetector(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Argo Wibowo"),
                    subtitle: Text("zaza"),
                  )
                ],
              ),
            ),
          ),
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
