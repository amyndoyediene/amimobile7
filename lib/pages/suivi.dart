import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrackingPage(),
    );
  }
}

class TrackingPage extends StatelessWidget {
  // Liste statique d'exemples de dossiers
  final List<Map<String, dynamic>> dossiers = [
    {
      'nom': 'Dossier 1',
      'service': 'Conseil juridique',
      'etat': 'En cours',
      'progress': 0.5, // 50% d'avancement
    },
    {
      'nom': 'Dossier 2',
      'service': 'Contentieux',
      'etat': 'Terminé',
      'progress': 1.0, // 100% d'avancement
    },
    {
      'nom': 'Dossier 3',
      'service': 'Rédaction de documents',
      'etat': 'En attente',
      'progress': 0.2, // 20% d'avancement
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suivi des Dossiers'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vos Dossiers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: dossiers.length,
                itemBuilder: (context, index) {
                  final dossier = dossiers[index];
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        dossier['progress'] == 1.0
                            ? Icons.check_circle
                            : Icons.work,
                        color: dossier['progress'] == 1.0
                            ? Colors.green
                            : Colors.blue,
                        size: 40,
                      ),
                      title: Text(
                        dossier['nom'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Service : ${dossier['service']}'),
                          Text('État : ${dossier['etat']}'),
                          SizedBox(height: 5),
                          // Barre de progression
                          LinearProgressIndicator(
                            value: dossier['progress'],
                            backgroundColor: Colors.grey[300],
                            color: dossier['progress'] == 1.0
                                ? Colors.green
                                : Colors.blue,
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Action lorsqu'on clique sur un dossier
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Détails du dossier : ${dossier['nom']}'),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
