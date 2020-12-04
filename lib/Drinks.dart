import 'package:flutter/material.dart';

import 'Cardboard.dart';
import 'TopContainer.dart';

class Drinks extends StatefulWidget {
  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  List<Widget> drinks = [
    CardBoard(
      image_name: "assets/drinks.jpg",
      name: "Russian",
      height: 200,
      width: 200,
    ),
    CardBoard(
      image_name: "assets/drinks.jpg",
      name: "Romanian",
      height: 200,
      width: 200,
    ),
    CardBoard(
      image_name: "assets/drinks.jpg",
      name: "Chinesse",
      height: 200,
      width: 200,
    )
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          FlatButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: Text(""))
        ],
        title: Container(
          width: (90 * width) / 100,
          child: TextField(
            style: TextStyle(fontSize: 10.0, height: 0.3, color: Colors.black),
            decoration: new InputDecoration(
                focusColor: Colors.yellow,
                hoverColor: Colors.yellow,
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Colors.grey[800], fontSize: 15),
                hintText: "Search for a theme",
                fillColor: Colors.white70),
          ),
        ),
        backgroundColor: Colors.yellow[600],
        elevation: 0,
      ),
      body: Column(
        children: [
          TopContainer(
            height: (11 * height) / 100,
            width: width,
            padding: EdgeInsets.symmetric(
                horizontal: width * 30 / 100, vertical: height * 0.02),
            child: Text(
              "Drinks",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.06,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 0.60 * height,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: ListView.builder(
                itemCount: drinks.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return drinks[index];
                }),
          )
        ],
      ),
    );
    ;
  }
}
