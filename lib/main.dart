import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// L'importation de font_awesome_flutter est supposée ajoutée dans pubspec.yaml
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// L'importation de google_fonts est supposée ajoutée dans pubspec.yaml
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Utilisation de useMaterial3: true pour le style moderne
        useMaterial3: true,
        primaryColor: Colors.blue,
        // Définition de la police par défaut pour toute l'application (optionnel)
        // Par exemple, si vous vouliez utiliser 'Lobster' partout
        // fontFamily: 'Lobster',
      ),
      home: const MyHomePage(title: 'Flutter UI Media et Texte'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Utilisation d'un SingleChildScrollView pour éviter les erreurs d'overflow si l'écran est petit
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white, // Couleur du texte de l'AppBar
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Centrage horizontal des widgets dans la colonne
            children: <Widget>[
              // --- Icônes ---
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Icône Material Design :',
                    style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.home,
                    color: Colors.green,
                    size: 35, // Taille définie pour la cohérence
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Icône iOS :',
                    style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    CupertinoIcons.home,
                    color: Colors.black,
                    size: 35,
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Icône font_awesome :',
                    style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.house,
                    color: Colors.purple,
                    size: 35,
                  ),
                ],
              ),

              // --- Images ---
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text('Image Asset (Local) :', style: TextStyle(fontWeight: FontWeight.bold)),
              // Ajout des assets dans pubspec.yaml requis
              // Assurez-vous que le chemin 'Assets/Images/flutter-logo.png' est correct
              Image.asset(
                'Assets/Images/flutter-logo.png',
                height: 100, // Définir une hauteur pour mieux contrôler l'UI
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text('Image Réseau :', style: TextStyle(fontWeight: FontWeight.bold)),
              Image.network(
                'https://pedagogeek.fr/img/pcpx.png',
                width: 150,
                height: 150, // Définir une hauteur
                fit: BoxFit.cover, // S'assurer que l'image couvre l'espace
              ),

              // --- Gestion du Texte dans un Container ---
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text('Contrôle du débordement de texte :', style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 100,
                color: Colors.black,
                child: const Text(
                  'Voici un texte beaucoup plus long pour tester l\'overflow et le clip. Il devrait être coupé car il n\'y a pas assez de place pour tout afficher.',
                  style: TextStyle(
                      color: Colors.white, // Changement à blanc pour meilleure visibilité sur fond noir
                      fontWeight: FontWeight.bold,
                      fontSize: 30, // Réduction de la taille pour mieux voir l'effet clip
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.left,
                  maxLines: 2, // Limiter à 2 lignes
                  overflow: TextOverflow.clip, // Coupe nette
                  // Pour tester d'autres overflows, décommentez l'un des suivants :
                  // overflow: TextOverflow.ellipsis, // Ajoute '...'
                  // overflow: TextOverflow.fade, // Fait disparaître progressivement le texte
                ),
              ),

              // --- Polices de caractères ---
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                'Police par défaut',
                style: TextStyle(fontSize: 20),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              // !!! Assurez-vous d'avoir configuré 'Lobster' dans pubspec.yaml et Assets !!!
              const Text(
                'Police Lobster (Custom Font)',
                style: TextStyle(
                    fontSize: 28, // Taille augmentée pour la visibilité
                    color: Colors.purple,
                    fontFamily: 'Lobster'), // Utilisation de la police custom
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              // !!! Assurez-vous d'avoir google_fonts dans pubspec.yaml !!!
              Text(
                'Police Creepster (Google Font)',
                style: GoogleFonts.creepster(
                  textStyle: const TextStyle(fontSize: 28, color: Colors.blue),
                ),
              ),

              const Padding(padding: EdgeInsets.only(bottom: 40)), // Espace en bas
            ],
          ),
        ),
      ),
    );
  }
}
