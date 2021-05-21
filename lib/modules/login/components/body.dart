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
              width: size.width * 0.3,
            ),
          )
        ],
      ),
    );
  }
}
