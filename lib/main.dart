import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import dans pubspec.yaml
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        primaryColor: Colors.blue,
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Icône Material Design :',
                  style: TextStyle(
                      color: Colors.teal,
                      //fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Icon(
                  Icons.home,
                  color: Colors.green,
                  //size: 35,
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Icône iOS :',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      //fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Icon(
                  CupertinoIcons.home,
                  color: Colors.black,
                  //size: 35,
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Icône font_awesome :',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      //fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Icon(
                  FontAwesomeIcons.home,
                  color: Colors.purple,
                  //size: 35,
                ),
              ],
            ),
            // ajout des assets dans pubspec.yaml
            Image.asset(
              'Assets/Images/flutter-logo.png',
            ),
            Image.network('https://pedagogeek.fr/img/pcpx.png', width: 150),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 100,
              color: Colors.black,
              child: const Text('Voici un texte quelconque',
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip),
              //overflow: TextOverflow.ellipsis),
              //overflow: TextOverflow.fade),
              //overflow: TextOverflow.visible),
            ),
            const Text(
              'Police par défaut',
              style: TextStyle(fontSize: 20),
            ),
            // ajout des fonts dans pubspec.yaml
            const Text(
              'Police Lobster',
              style: TextStyle(
                  fontSize: 20, color: Colors.purple, fontFamily: 'Lobster'),
            ),
            Text(
              'Police creepster',
              style: GoogleFonts.creepster(
                textStyle: const TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
