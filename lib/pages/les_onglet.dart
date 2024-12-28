
import 'package:amimobile7/pages/acceuil/home.dart';
import 'package:amimobile7/pages/avocat/avocat.dart';
import 'package:amimobile7/pages/formulaire/form.dart';
import 'package:amimobile7/pages/parametre/setting.dart';
import 'package:amimobile7/pages/suivi.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HoPage(),
    );
  }
}

class HoPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HoPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Homes(),
    ConsultationFormPage(),
    avocattList(),
    ParametresPage(),
    TrackingPage
    
    (),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "ZIZA",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green, // Couleur des icônes sélectionnées en vert
        unselectedItemColor: Colors.green.shade300, // Couleur des icônes non sélectionnées en vert clair
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Formulaire',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_moderator_outlined),
            label: 'Avocat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'mg',
          ),
        ],
      ),
    );
  }
}
