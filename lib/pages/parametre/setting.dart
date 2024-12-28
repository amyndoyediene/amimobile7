import 'package:flutter/material.dart';

class ParametresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Parametres'),
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
      ),
      body: Container(
        color: Colors.green,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.language, color: Colors.black),
              title: Text('Langue', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Action pour changer la langue
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page, color: Colors.black),
              title: Text('Contact', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Action pour accéder aux contacts
              },
            ),
            ListTile(
              leading: Icon(Icons.note, color: Colors.black),
              title: Text('Notes', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Action pour les notes
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.black),
              title: Text('Se deconnecter', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Action pour se déconnecter
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ParametresPage(),
  ));
}
