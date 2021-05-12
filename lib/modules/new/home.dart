import 'package:flutter/material.dart';
import 'package:get/get.dart';

const colorMorado = Color(0xFF4D31A8);
const colorRojo = Color(0xFFE72277);

class NewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBarNew(),
          ContentNew(),
        ],
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: colorMorado,
                child: Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: CircleAvatar(
                radius: 13,
                backgroundColor: colorRojo,
                child: Center(
                  child: Text("4"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBarNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        height: Get.height,
        color: colorMorado,
        padding: EdgeInsets.only(
          top: Get.height * .05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 65),
                child: Text(
                  "Condominn",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            Container(
              width: 60,
              padding: EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
                radius: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContentNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Get.height * .1,
      width: Get.width,
      child: Container(
        height: Get.height,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(35),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Accesos rápidos",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              CardFastAccess(),
              Text(
                "Servicios",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              CircleServiceComponent(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardFastAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: Get.width * .25,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey[350],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "Visita",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            width: Get.width * .25,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey[350],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "Conserjería",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            width: Get.width * .25,
            height: 40,
            decoration: BoxDecoration(
              color: colorRojo,
              border: Border.all(
                width: 1,
                color: Colors.grey[350],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "Emergencia",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleServiceComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Items
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleItem(
                title: "Areas Comunes",
              ),
              CircleItem(
                title: "Conserjería",
              ),
              CircleItem(
                title: "Visitas",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleItem(
                title: "Servicios",
              ),
              CircleItem(
                title: "Residentes",
              ),
              CircleItem(
                title: "Incidentes",
              ),
            ],
          ),
          // Items
        ],
      ),
    );
  }
}

class CircleItem extends StatelessWidget {
  const CircleItem({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: Get.width * .2,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: colorMorado,
            radius: 40,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 5,
            child: CircleAvatar(
              backgroundColor: colorRojo,
              radius: 13,
              child: Center(
                child: Text(
                  "4",
                  style: TextStyle(
                    color: Colors.white,
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
