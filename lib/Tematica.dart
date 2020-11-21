import 'package:flutter/material.dart';

class Tematica extends StatefulWidget {
  @override
  _TematicaState createState() => _TematicaState();
}

class _TematicaState extends State<Tematica> {
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
              "Themes",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.06,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final EdgeInsets padding;
  TopContainer({this.height, this.width, this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          padding != null ? padding : EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.yellow[600],
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0),
          )),
      height: height,
      width: width,
      child: child,
    );
  }
}
