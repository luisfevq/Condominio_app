import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      color: Color.fromRGBO(96, 89, 183, 1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "../assets/images/ws_girl.png",
              width: size.width,
              height: size.height,
            ),
          ),
          Positioned(
            top: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("CondominApp",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white))
              ],
            ),
          ),
          Positioned(
            top: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Vive en casa",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 36))
              ],
            ),
          ),
          Positioned(
            top: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Vive Informado.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 36))
              ],
            ),
          ),
          Positioned(
            top: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Administra e informate de lo que pasa en tu entorno",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            width: size.width * 0.5,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Container(
                  width: 100.0,
                  height: 70.0,
                  child: Container(
                    child: Center(
                      child: Text(
                        "Ingresar",
                        style: TextStyle(
                            color: Color.fromRGBO(96, 89, 183, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
