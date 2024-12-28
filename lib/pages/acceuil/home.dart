import 'package:amimobile7/pages/acceuil/info_home.dart';
import 'package:amimobile7/pages/suivi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homes(),
    );
  }
}

class Homes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA0D995), // Vert menthe clair
      appBar: AppBar(
        title: Text("bienvenu", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFA0D995), // Vert menthe clair
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => infoPage()),
              );},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrackingPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Titre de la section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Nos services",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // Boutons colorés
            coloredMenuItem(
              color: Color(0xFF4A90E2), // Bleu clair
              icon: Icons.bookmark,
              label: "Redaction de docs",
              onTap: () {
                // Action au clic
              },
            ),
            coloredMenuItem(
              color: Color(0xFF6E6E6E), // Gris anthracite
              icon: Icons.gavel,
              label: "Conseil juridique",
              onTap: () {
                // Action au clic
              },
            ),
            coloredMenuItem(
              color: Color(0xFFFFB347), // Orange doux
              icon: Icons.handshake,
              label: "Negociation",
              onTap: () {
                // Action au clic
              },
            ),
            coloredMenuItem(
              color: Color(0xFFE57373), // Rose framboise clair
              icon: Icons.article,
              label: "Contentieux",
              onTap: () {
                // Action au clic
              },
            ),
            // Domaine d'intervention
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Domaine d'intervention",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  lawCategory(
                    icon: Icons.balance,
                    label: "Droit Penal",
                  ),
                  lawCategory(
                    icon: Icons.account_balance,
                    label: "Droit Civil",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  lawCategory(
                    icon: Icons.business,
                    label: "Droit des Affaires",
                  ),
                  lawCategory(
                    icon: Icons.home,
                    label: "Droit Immobilier",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget coloredMenuItem({required Color color, required IconData icon, required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: color, // Couleur spécifique pour chaque bouton
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 30),
            SizedBox(width: 20),
            Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget lawCategory({required IconData icon, required String label}) {
    return Column(
      children: [
        Icon(icon, size: 50, color: Colors.black),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
