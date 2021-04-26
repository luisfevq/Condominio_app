import 'package:flutter/material.dart';

class CardServiceScreen extends StatelessWidget {
  //TODO: temporal, despues pasar ese valor con Getx
  final String titleAppBar;
  const CardServiceScreen({Key key, this.titleAppBar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var ctx = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ctx.backgroundColor,
        title: Text(
          titleAppBar,
          style: TextStyle(
            color: ctx.primaryColor,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: ctx.primaryColor,
        ),
      ),
    );
  }
}
