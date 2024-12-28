import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String nom;
  final String prenom;
  final String numero;
  final String email;
  final String description;
  final String typeClient;
  final String dateRV;

  const ResultPage({
    Key? key,
    required this.nom,
    required this.prenom,
    required this.numero,
    required this.email,
    required this.description,
    required this.typeClient,
    required this.dateRV,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Résumé des informations'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Nom'),
              subtitle: Text(nom),
            ),
            ListTile(
              title: Text('Prénom'),
              subtitle: Text(prenom),
            ),
            ListTile(
              title: Text('Numéro'),
              subtitle: Text(numero),
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text(email),
            ),
            ListTile(
              title: Text('Description du cas'),
              subtitle: Text(description),
            ),
            ListTile(
              title: Text('Type de client'),
              subtitle: Text(typeClient),
            ),
            ListTile(
              title: Text('Date du RV'),
              subtitle: Text(dateRV),
            ),
          ],
        ),
      ),
    );
  }
}
