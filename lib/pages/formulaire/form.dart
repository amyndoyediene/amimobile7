import 'package:amimobile7/pages/formulaire/result.dart';
import 'package:flutter/material.dart';

class ConsultationFormPage extends StatefulWidget {
  @override
  _ConsultationFormPageState createState() => _ConsultationFormPageState();
}

class _ConsultationFormPageState extends State<ConsultationFormPage> {
  String? typeClient;
  DateTime? selectedDate;

  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(), // Désactive le bouton retour
        title: Text('Demander une consultation'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _nomController,
                      decoration: InputDecoration(labelText: 'Nom'),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      controller: _prenomController,
                      decoration: InputDecoration(labelText: 'Prenom'),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _numeroController,
                decoration: InputDecoration(labelText: 'Numero'),
                keyboardType: TextInputType.phone,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description du cas'),
                maxLines: 4,
              ),
              SizedBox(height: 16),
              Text('Mettre les preuves sous forme de doc PDF'),
              ElevatedButton.icon(
                onPressed: () {
                  // Logique pour sélectionner un fichier PDF
                },
                icon: Icon(Icons.attach_file),
                label: Text('Choisir un fichier'),
              ),
              SizedBox(height: 16),
              Text('Précisez :'),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                      title: Text('Particulier'),
                      value: 'particulier',
                      groupValue: typeClient,
                      onChanged: (value) {
                        setState(() {
                          typeClient = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                      title: Text('Entreprise'),
                      value: 'entreprise',
                      groupValue: typeClient,
                      onChanged: (value) {
                        setState(() {
                          typeClient = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text('Calendrier pour les RV :'),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      selectedDate == null
                          ? 'Aucune date sélectionnée'
                          : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _pickDate,
                    child: Text('Choisir une date'),
                  ),
                ],
              ),
              SizedBox(height: 32),
              ElevatedButton(
  onPressed: () {
    // Naviguer vers la page des résultats avec les données du formulaire
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          nom: _nomController.text,
          prenom: _prenomController.text,
          numero: _numeroController.text,
          email: _emailController.text,
          description: _descriptionController.text,
          typeClient: typeClient ?? 'Non spécifié',
          dateRV: selectedDate != null
              ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
              : 'Non spécifiée',
        ),
      ),
    );
  },
  child: Text('Valider'),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
  ),
)

            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ConsultationFormPage(),
  ));
}
