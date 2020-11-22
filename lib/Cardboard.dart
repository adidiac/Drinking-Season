import 'package:flutter/material.dart';

class CardBoard extends StatelessWidget {
  final String name;
  final String image_name;
  final double width;
  final double height;
  const CardBoard(
      {Key key, this.name, this.image_name, this.height, this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            clipBehavior: Clip.hardEdge,
            color: Colors.green,
            child: Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    image_name,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.centerRight,
                          end: FractionalOffset.centerLeft,
                          colors: [
                            Colors.blue[600].withOpacity(0.0),
                            Colors.blue[900],
                          ],
                          stops: [
                            0.0,
                            1.0
                          ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
