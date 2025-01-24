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
      backgroundColor: Colors.green, // Couleur de fond principale
      appBar: AppBar(
        title: Text("bienvenu", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Container(), // Désactive le bouton retour
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () {},
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
              color: Colors.blue,
              icon: Icons.bookmark,
              label: "Redaction de docs",
              onTap: () {},
            ),
            coloredMenuItem(
              color: Colors.brown,
              icon: Icons.gavel,
              label: "Conseil juridique",
              onTap: () {},
            ),
            coloredMenuItem(
              color: Colors.yellow,
              icon: Icons.handshake,
              label: "Negociation",
              onTap: () {},
            ),
            coloredMenuItem(
              color: Colors.purple,
              icon: Icons.article,
              label: "Contentieux",
              onTap: () {},
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
            // Informations de contact
            Divider(color: Colors.white, thickness: 1),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Contactez-nous",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            contactInfo(
              icon: Icons.location_on,
              label: "Adresse : 123 Rue du Droit, Dakar, Sénégal",
            ),
            contactInfo(
              icon: Icons.phone,
              label: "Téléphone : +221 33 123 45 67",
            ),
            contactInfo(
              icon: Icons.email,
              label: "E-mail : contact@cabinetziza.sn",
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

  Widget contactInfo({required IconData icon, required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 30),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
