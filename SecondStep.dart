import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();  // added this line
    return MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Flutter!"),
        ),
        body: Center(   // removing "const". Since its random, it cant be "const"
          // child: const Text("Hello, World!"), replacing this text...
          child: Text(
            wordPair.asPascalCase,
            style: TextStyle(fontSize: 38.0)
          )
        )
      )
    );
  } // build
} // MyApp