import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String word = "Hello User";
  void generateRandomWord() {
    setState(() {
      var allWords = nouns;
      print('Total words ${allWords.length}');
      word = allWords[Random().nextInt(allWords.length - 1)].toUpperCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    var items = nouns;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return ListTile(
            subtitle:  Text('Positions $i'),
            leading: Icon(Icons.menu),
            title: Text(items[i]),
            trailing: Icon(Icons.message),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
