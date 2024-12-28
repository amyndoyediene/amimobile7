import 'package:flutter/material.dart';

class infoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Infos Utilisateur'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.green,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.money, color: Colors.black),
              title: Text('Paiement', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Action pour changer la langue
              },
            ),
            ListTile(
              leading: Icon(Icons.help_center_outlined, color: Colors.black),
              title: Text('Support', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Action pour accéder aux contacts
              },
            ),
            ListTile(
              leading: Icon(Icons.note, color: Colors.black),
              title: Text('Avis', style: TextStyle(color: Colors.black)),
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
    home: infoPage(),
  ));
}
