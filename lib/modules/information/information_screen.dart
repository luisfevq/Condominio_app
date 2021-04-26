import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ctx = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ctx.backgroundColor,
        iconTheme: IconThemeData(
          color: ctx.primaryColor,
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            _buildItemList(
              title: "Conserje en recepcion",
              subTitle: "Vie 23 abr. 19:14",
              icon: Icons.home_outlined,
            ),
            _buildItemList(
              title: "Conserje en ronda",
              subTitle: "Vie 23 abr. 18:33",
              icon: Icons.directions_walk,
            ),
            _buildItemList(
              title: "Recepcion de pedido",
              subTitle: "Vie 22 abr. 15:24",
              icon: Icons.shopping_bag,
            ),
            _buildItemList(
              title: "Visita registrada",
              subTitle: "Vie 20 abr. 14:28",
              icon: Icons.account_box_rounded,
            ),
            _buildItemList(
              title: "Conserje en recepcion",
              subTitle: "Vie 20 abr. 20:00",
              icon: Icons.home_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemList({String title, String subTitle, IconData icon}) {
    return ListTile(
      onTap: () {},
      title: Text(title),
      subtitle: Text(subTitle),
      leading: Icon(icon),
    );
  }
}
