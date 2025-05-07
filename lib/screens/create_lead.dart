import 'package:flutter/material.dart';
import 'package:ubi/screens/dashboard_screen.dart';
import 'package:ubi/screens/login_screen.dart';
import '../themes/theme_global.dart';
import '../widgets/loading.dart';

class CreateLead extends StatelessWidget {
  const CreateLead({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Lead'),
        backgroundColor: const Color.fromARGB(208, 7, 120, 173),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(168, 8, 84, 145),
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.area_chart),
              title: Text('File'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Loading Icon'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loading()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                'WELCOME TO CREATE LEAD PAGE',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DashboardScreen()),
          );
        },
        child: Icon(Icons.add),
        elevation: 20,
        hoverColor: Colors.indigoAccent,

        // clipBehavior: Clip.hardEdge,
      ),
    );
  }
}
