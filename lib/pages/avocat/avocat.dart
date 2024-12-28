import 'package:amimobile7/pages/avocat/avocat_page.dart';
import 'package:amimobile7/pages/avocat/info_avocat.dart';
import 'package:amimobile7/pages/avocat/avocat_welcome.dart';
import 'package:flutter/material.dart';

class Contact {
  final String nom;
  final String imageProfil;

  Contact({required this.nom, required this.imageProfil});
}


class avocattList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<avocattList> {
  List<Contact> contacts = [
    Contact(nom: 'Me Ouri Ndiaye', imageProfil: 'mediene.jpg'),
    Contact(nom: 'Me Amsatou Niang', imageProfil: 'mediene.jpg'),
    Contact(nom: 'Me Babacar Diene', imageProfil: 'mediene.jpg'),
    Contact(nom: 'Me Mbaye Diagne', imageProfil: 'mediene.jpg'),
    Contact(nom: 'Me Yaye Khoudia Mbodj', imageProfil: 'mediene.jpg'),
    Contact(nom: 'Me Fatou Laye Ndoye', imageProfil: 'mediene.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(), // Désactive le bouton retour
  title: Text('Les Avocats'),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // Navigation vers la page de recherche
       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeePage()),
                    );
      },
    ),
    IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {
        Navigator.push(
                     context,
                      MaterialPageRoute(builder: (context) => LawyerProfilePage(nom: '', imageProfil: '',)),
                  );
      },
    ),
  ],
),

      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                title: Text(
                  contacts[index].nom,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${contacts[index].imageProfil}'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactDetailPage(
                        nom: contacts[index].nom,
                        imageProfil: contacts[index].imageProfil,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

//////////////





