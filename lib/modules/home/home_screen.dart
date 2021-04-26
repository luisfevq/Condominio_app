import 'package:condominio_app/data/services/theme_service.dart';
import 'package:condominio_app/modules/card_service/card_service_screen.dart';
import 'package:condominio_app/modules/drawer/drawer_screen.dart';
import 'package:condominio_app/modules/information/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ctx = Theme.of(context);
    String img =
        "https://dam.vanidades.com/wp-content/uploads/2020/04/Robert-Downey-Jr.-1.jpg";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ctx.backgroundColor,
        title: Text(
          "Condominio App",
          style: TextStyle(
            color: ctx.primaryColor,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (_) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: ctx.primaryColor,
              ),
              onPressed: () {
                Scaffold.of(_).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.brightness_2_outlined,
              color: ctx.primaryColor,
            ),
            onPressed: ThemeService().switchTheme,
          ),
        ],
      ),
      drawer: DrawerScreen(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.campaign_sharp,
          size: 34.0,
        ),
        onPressed: () => Get.to(
          () => InformationScreen(),
          fullscreenDialog: true,
        ),
      ),
      body: Column(
        children: [
          // User info
          Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hola, Usuario",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "Dpto. 308 - Budi",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Cards services
          Container(
            width: double.infinity,
            height: 200.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // _buildCardService(
                    //   text: "Areas Comunes",
                    //   icon: Icons.park,
                    //   color: 0xFF3695DF,
                    // ),
                    // _buildCardService(
                    //   text: "Visitas",
                    //   icon: Icons.people,
                    //   color: 0xFF1CB29B,
                    // ),
                    _buildCardService(
                      text: "Conserje",
                      icon: Icons.room_service,
                      color: 0xFFF39730,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildCardService(
                      text: "Servicios",
                      icon: Icons.engineering_rounded,
                      color: 0xFF4B4CE7,
                    ),
                    _buildCardService(
                      text: "Emergencia",
                      icon: Icons.warning_rounded,
                      color: 0xFFFC5933,
                    ),
                    // _buildCardService(
                    //   text: "Servicio",
                    //   icon: Icons.room_service,
                    // ),
                  ],
                ),
              ],
            ),
          ),
          // Services
          // Expanded(
          //   child: Container(
          //     width: double.infinity,
          //     padding: EdgeInsets.only(
          //       left: 10.0,
          //       // right: 10.0,
          //       bottom: 30.0,
          //     ),
          //     child: ListView(
          //       scrollDirection: Axis.horizontal,
          //       children: [
          //         _buildCardServiceLessee(),
          //         _buildCardServiceLessee(),
          //         _buildCardServiceLessee(),
          //         _buildCardServiceLessee(),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildCardService({String text, IconData icon, int color}) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => CardServiceScreen(
            titleAppBar: text,
          ),
          fullscreenDialog: true,
        );
      },
      child: Container(
        width: Get.width * .22,
        height: 80.0,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Get.isDarkMode ? Color(0xFF171B1E) : Color(0xFFE1E1E3),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, size: 30.0, color: Color(color)),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(color),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardServiceLessee() {
    return Container(
      width: Get.width * .8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Card(
          elevation: 2.0,
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Hay que pensar que va a ir aca >.<",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
