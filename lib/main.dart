// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.zero,
                child: Text('Currently in Bangalore',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  '23\u2103',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('Rain',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          )),
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                leading: FaIcon(FontAwesomeIcons.temperatureHalf),
                title: Text('Temperature'),
                trailing: Text('22\u2103'),
              )
            ],
          ),
        ),
      )
    ]));
  }
}
