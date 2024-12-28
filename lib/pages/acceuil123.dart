import 'package:amimobile7/pages/avocat/avocat.dart';
import 'package:amimobile7/pages/les_onglet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<OnboardingPage> _pages = [
    OnboardingPage(
      title: "Assistance et Conseil Juridique",
      description:
          "Nous assistons et conseillons nos clients dans l'ensemble des aspects juridiques afférents à la vie des clients.",
      image: "assets/acc1.png",
    ),
    OnboardingPage(
      title: "Expérience et Réalisations",
      description:
          "Le cabinet totalise, depuis sa création à ce jour plus de 50 affaires traitées, et dispose d’une clientèle composée pour l’essentiel d’entreprises sénégalaises et étrangères.",
      image: "assets/acc3.png",
    ),
    OnboardingPage(
      title: "Nos Méthodes de Travail",
      description:
          "Flexibilité, accessibilité, ouverture d’esprit, créativité et dynamisme caractérisent nos méthodes de travail.",
      image: "assets/acc2.png",
    ),
  ];

  void _goToNextPage() {
    if (_currentIndex < _pages.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToPreviousPage() {
    if (_currentIndex > 0) {
      _controller.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _pages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingPageWidget(page: _pages[index]);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_currentIndex > 0)
                TextButton(
                  onPressed: _goToPreviousPage,
                  child: Text("Previous"),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _pages.length,
                  (index) => buildDot(index),
                ),
              ),
              if (_currentIndex < _pages.length - 1)
                TextButton(
                  onPressed: _goToNextPage,
                  child: Text("Next"),
                ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.black : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

class OnboardingPage {
  final String title;
  final String description;
  final String image;

  OnboardingPage({
    required this.title,
    required this.description,
    required this.image,
  });
}

class OnboardingPageWidget extends StatelessWidget {
  final OnboardingPage page;

  const OnboardingPageWidget({required this.page});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            page.image,
            height: 250,
          ),
          SizedBox(height: 20),
          Text(
            page.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            page.description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Retourne à la page précédente
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  shape: CircleBorder(), // Bouton circulaire
                ),
                child: Icon(Icons.arrow_back, size: 24), // Icône pour le retour
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HoPage()),
                  );
                },
                child: Text("Commencer"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
