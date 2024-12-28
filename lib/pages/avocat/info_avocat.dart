import 'package:flutter/material.dart';

class LawyerProfilePage extends StatelessWidget {
   final String nom;
  final String imageProfil;

 LawyerProfilePage({required this.nom, required this.imageProfil});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image et nom
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/$imageProfil'), // Remplacez par votre image
                  ),
                  SizedBox(height: 10),
                  Text(
                    'AMI THIAM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Spécialisée en droit des affaires',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            // Section des détails
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Description
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Titulaire d’une maîtrise en droit privé '
                        '(carrières judiciaires) obtenue en 1981 à '
                        'l’université de Dakar.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Informations de contact
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.phone, color: Colors.green),
                              SizedBox(width: 8),
                              Text('77 765 54 32'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.mail, color: Colors.green),
                              SizedBox(width: 8),
                              Text('amithiam@av.sn'),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Ajouter action pour "Démarrer un chat"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: Text('Démarrer un chat'),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Bouton Pour d'infos
                  ElevatedButton.icon(
                    onPressed: () {
                      // Ajouter action pour "Pour d'infos"
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    icon: Icon(Icons.info, color: Colors.white),
                    label: Text('Pour d\'infos'),
                  ),
                ],
              ),
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
    home: LawyerProfilePage(nom: '', imageProfil: '',),
  ));
}
