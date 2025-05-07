import 'package:flutter/material.dart';
import 'package:ubi/screens/create_lead.dart';
import 'package:ubi/screens/login_screen.dart';
import '../themes/theme_global.dart';
import '../widgets/card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemesColor.deepSkyBlue,
        title: Text('Dashboard'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(209, 14, 111, 190),
              ),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: ThemesColor.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.area_chart, color: Colors.red),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.airplane_ticket_sharp, color: Colors.red),
              title: Text('Create Lead'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateLead()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.twelve_mp_rounded),
              title: Text("WIFI"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              Buildcard(stringname: "Create Lead", iconname: Icons.person_add),
              Buildcard(
                stringname: "Existing Applications",
                iconname: Icons.folder_open,
              ),
              Buildcard(stringname: "Credit Review", iconname: Icons.search),
              Buildcard(
                stringname: "Check Eligibility",
                iconname: Icons.verified_user,
              ),
              Buildcard(stringname: "History", iconname: Icons.h_mobiledata),
              Buildcard(stringname: "Datas", iconname: Icons.gamepad_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
