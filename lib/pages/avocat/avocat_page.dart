import 'package:flutter/material.dart';

class ContactDetailPage extends StatelessWidget {
  final String nom;
  final String imageProfil;

  ContactDetailPage({required this.nom, required this.imageProfil});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nom),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/$imageProfil'),
            ),
            SizedBox(height: 20),
            Text(
              nom,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 10),
            Text(
              'Informations supplémentaires sur $nom',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
