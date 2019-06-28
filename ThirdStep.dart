import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Flutter!"),
        ),
        body: Center(
        /*
          child: Text(                         // removing this line 
          style: TextStyle(fontSize: 38.0)    
        */
          child: RandomWords()             // calling the RandowWords new object
        )
      )
    );
  } // build
} // MyApp


// Adding RandomWords Class
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = WordPair.random();
    return Text(
      wordPair.asPascalCase,
      style: const TextStyle(fontSize: 42.0)
      );
  } // build
} // RandomWordsState