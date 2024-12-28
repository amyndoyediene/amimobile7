import 'package:flutter/material.dart';

class SidebarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Retour à la page précédente
          },
        ),
      ),
      body: Row(
        children: [
          // Menu latéral
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            color: Colors.green[700],
            child: Column(
              children: [
                // Image de profil et nom
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/mediene.jpg'), // Remplacez par l'image
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Me Ndiaye',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Options de menu
                ListTile(
                  leading: Icon(Icons.dashboard, color: Colors.white),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Navigation vers Dashboard
                  },
                ),
                ListTile(
                  leading: Icon(Icons.chat, color: Colors.white),
                  title: Text(
                    'Chat',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Navigation vers Chat
                  },
                ),
                ListTile(
                  leading: Icon(Icons.mail, color: Colors.white),
                  title: Text(
                    'MailBox',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Navigation vers MailBox
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.white),
                  title: Text(
                    'Setting',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Navigation vers Setting
                  },
                ),
              ],
            ),
          ),

          // Section principale
          Expanded(
            child: Container(
              color: Colors.green[400],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // En-tête
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Message',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Liste des messages
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(8.0),
                      children: [
                        MessageCard(
                          sender: 'Ami',
                          message: 'Bonjour Me',
                          onTap: () {
                            // Action sur le message
                          },
                        ),
                        MessageCard(
                          sender: 'Ami',
                          message: 'Bonjour Me',
                          onTap: () {
                            // Action sur le message
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final String sender;
  final String message;
  final VoidCallback onTap;

  const MessageCard({
    required this.sender,
    required this.message,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[300],
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: ListTile(
        leading: Icon(Icons.people, color: Colors.white),
        title: Text(
          sender,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(Icons.info, color: Colors.white),
        onTap: onTap,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SidebarPage(),
  ));
}
