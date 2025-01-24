// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: TrackingPage(),
//     );
//   }
// }

// class TrackingPage extends StatelessWidget {
//   // Liste statique d'exemples de dossiers
//   final List<Map<String, dynamic>> dossiers = [
//     {
//       'nom': 'Dossier 1',
//       'service': 'Conseil juridique',
//       'etat': 'En cours',
//       'progress': 0.5, // 50% d'avancement
//     },
//     {
//       'nom': 'Dossier 2',
//       'service': 'Contentieux',
//       'etat': 'Terminé',
//       'progress': 1.0, // 100% d'avancement
//     },
//     {
//       'nom': 'Dossier 3',
//       'service': 'Rédaction de documents',
//       'etat': 'En attente',
//       'progress': 0.2, // 20% d'avancement
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Suivi des Dossiers'),
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Vos Dossiers',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: dossiers.length,
//                 itemBuilder: (context, index) {
//                   final dossier = dossiers[index];
//                   return Card(
//                     elevation: 3,
//                     margin: EdgeInsets.symmetric(vertical: 10),
//                     child: ListTile(
//                       leading: Icon(
//                         dossier['progress'] == 1.0
//                             ? Icons.check_circle
//                             : Icons.work,
//                         color: dossier['progress'] == 1.0
//                             ? Colors.green
//                             : Colors.blue,
//                         size: 40,
//                       ),
//                       title: Text(
//                         dossier['nom'],
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Service : ${dossier['service']}'),
//                           Text('État : ${dossier['etat']}'),
//                           SizedBox(height: 5),
//                           // Barre de progression
//                           LinearProgressIndicator(
//                             value: dossier['progress'],
//                             backgroundColor: Colors.grey[300],
//                             color: dossier['progress'] == 1.0
//                                 ? Colors.green
//                                 : Colors.blue,
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(Icons.arrow_forward_ios),
//                       onTap: () {
//                         // Action lorsqu'on clique sur un dossier
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: Text(
//                                 'Détails du dossier : ${dossier['nom']}'),
//                           ),
//                         );
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }












import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: large(),
    );
  }
}

class large extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DOUX Formations',
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Section de la bannière
            Container(
              color: Colors.purple[50],
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.network(
                    'https://via.placeholder.com/300', // Remplacez par votre URL d'image
                    height: 150,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'ONLINE TRAINING',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '02 January, 2024',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '09:00 - 11:00',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Barre de navigation
            Container(
              color: Colors.purple[50],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text('Accueil'),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Bénéficiaire'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Nouveauté'),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Restaurateur'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Coup de cœur'),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Restaurateur'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Section de bas de page
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Contact'),
                  SizedBox(height: 10),
                  Text('Politique de confidentialité'),
                  SizedBox(height: 10),
                  Text('Nos services'),
                  SizedBox(height: 10),
                  Text('Boutiques'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
