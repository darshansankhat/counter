import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              a = 0;
            });
          },
          child: Icon(Icons.clear_outlined, size: 50),
        ),
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
        ],
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.red, width: 10)),
          child: Center(
            child: Text(
              "$a",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}
