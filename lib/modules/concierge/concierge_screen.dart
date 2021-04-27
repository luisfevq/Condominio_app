import 'package:flutter/material.dart';
import 'package:get/get.dart';

int userProfileId = 1;

class ConciergeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ctx = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ctx.backgroundColor,
        title: Text(
          "Conserjeria",
          style: TextStyle(
            color: ctx.primaryColor,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: ctx.primaryColor,
        ),
      ),
      body: userProfileId == 1 ? UserConciergeView() : DefaultConciergeView(),
    );
  }
}

class UserConciergeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Estado: en recepcion",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              height: 50.0,
              child: Center(
                child: Text(
                  "Informar delivery",
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              height: 50.0,
              child: Center(
                child: Text(
                  "Informar visita",
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              height: 50.0,
              child: Center(
                child: Text(
                  "Solicitar estacionamiento",
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class DefaultConciergeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
