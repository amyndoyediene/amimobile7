import 'package:amimobile7/pages/les_onglet.dart';
import 'package:amimobile7/pages/bienvenu.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        'acceuil': (context) => HoPage(),
        // '/contactList': (context) => ContactList(),
        // '/detailContact': (context) => DetailContact(),
        // '/fileList': (context) => FileList(),
        // '/imagePage': (context) => ImagePage()
      },
    );
  }
}
