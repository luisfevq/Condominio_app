import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(
          top: 50.0,
          bottom: 20.0,
        ),
        child: Column(
          children: [
            _buildItemDrawer(
              text: "Perfil",
              icon: Icons.person,
            ),
            Divider(),
            _buildItemDrawer(
              text: "Registro de visita",
              icon: Icons.people,
            ),
            _buildItemDrawer(
              text: "Informar Delivery",
              icon: Icons.delivery_dining,
            ),
            _buildItemDrawer(
              text: "Residentes",
              icon: Icons.person_pin_circle_rounded,
            ),
            _buildItemDrawer(
              text: "Estacionamiento",
              icon: Icons.car_rental,
            ),
            _buildItemDrawer(
              text: "Reportar incidente",
              icon: Icons.report,
            ),
            _buildItemDrawer(
              text: "Departamentos libres",
              icon: Icons.apartment,
            ),
            Expanded(child: SizedBox.shrink()),
            Divider(),
            _buildItemDrawer(
              text: "Cerrar sesion",
              icon: Icons.close,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemDrawer({String text, IconData icon, Function onTap}) {
    return ListTile(
      onTap: onTap,
      title: Text(text),
      leading: Icon(icon),
    );
  }
}
