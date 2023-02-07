import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescrren extends StatefulWidget {
  const Homescrren({Key? key}) : super(key: key);

  @override
  State<Homescrren> createState() => _HomescrrenState();
}

class _HomescrrenState extends State<Homescrren> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                a++;
              });
            },
            child: Icon(Icons.add, size: 50),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a--;
              });
            },
            child: Icon(Icons.remove, size: 50),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a = a * 2;
              });
            },
            child: Icon(Icons.two_k, size: 50),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a = a * 3;
              });
            },
            child: Icon(Icons.three_k, size: 50),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a = a * 4;
              });
            },
            child: Icon(Icons.four_k, size: 50),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                a = 1;
              });
            },
            child: Icon(Icons.signal_cellular_null, size: 50),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.red)),
          child: Center(
              child: Text(
            "$a",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
          )),
        ),
      ),
    );
  }
}
