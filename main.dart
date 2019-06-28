import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();             // added this line
    return MaterialApp(
      title: "Startup Name Generator",
      home: RandomWords()
        /*
        Scaffold(               // removing the Scaffold here, it's already setted in the RandomWord class
        appBar: AppBar(
          title: const Text("Welcome to Flutter!"),
        ),
        body: Center(                           // removing "const". Since its random, it cant be "const"
      //  child: const Text("Hello, World!"), replacing this text...
      /*  child: Text(                         // removing this line 
      style: TextStyle(fontSize: 38.0)    */
            child: RandomWords(),             // calling the RandowWords new object
          )
        */
    );
  } // build
} // MyApp


// Adding RandomWords Class
class RandomWords extends StatefulWidget {

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];                   // adding this
  final TextStyle _biggerFont = const TextStyle(fontSize: 26.0);      // and this line

  Widget _buildSuggestions(){     // Creating a Widget for the suggestions
    return ListView.builder(
      padding: const EdgeInsets.all(18.0),
      itemBuilder: (BuildContext _context, int i){
        if(i.isOdd)
          return Divider();

        final int index = i ~/ 2;

        if (index >= _suggestions.length)
          _suggestions.addAll(generateWordPairs().take(10));

        return _buildRow(_suggestions[index]);
      } // BuildContext
    );
  } // _buildSuggestions

  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont
      )
    );
  } // _buildRow

  @override
  Widget build(BuildContext context) {
/*  final WordPair wordPair = WordPair.random();
    return Text(                                        // deleting this to implement the new methods
      wordPair.asPascalCase,
      style: const TextStyle(fontSize: 42.0)
      );
*/
    return Scaffold(                                   // adding this
      appBar: AppBar(
        title: Text("Startup Name Generator")
      ),
      body: _buildSuggestions()
    );
  } // build
} // RandomWordsState