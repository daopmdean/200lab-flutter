import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _textCelEditing = TextEditingController();
  var _textFahEditing = TextEditingController();
  String _celsius = '';
  String _fahrenheit = '';

  void _convert() {
    if (_celsius != '' && _fahrenheit == '') {
      log("convert from cel");
      try {
        var _fah = double.parse(_celsius) * 1.8 + 32;
        _textFahEditing.text = _fah.toString();
      } catch (ex) {
        log(ex.toString());
      }
    }
    if (_celsius == '' && _fahrenheit != '') {
      log("convert from fah");
      try {
        var _cel = (double.parse(_fahrenheit) - 32) / 1.8;
        _textCelEditing.text = _cel.toString();
      } catch (ex) {
        log(ex.toString());
      }
    }
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
            TextField(
              controller: _textCelEditing,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter celsius',
              ),
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _celsius = value;
              },
            ),
            TextField(
              controller: _textFahEditing,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter fahrenheit',
              ),
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _fahrenheit = value;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _convert,
        tooltip: 'Increment',
        child: Icon(Icons.track_changes),
      ),
    );
  }
}
