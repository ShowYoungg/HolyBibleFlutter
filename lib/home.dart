
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:holy_bible/Page.dart';
import 'package:after_layout/after_layout.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



class Home extends StatefulWidget {
  //final line;

  //Home({this.line});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AfterLayoutMixin<Home> {
  String s;
  
  Future<String> getListFromFile() async {
    String l = await rootBundle.loadString('assets/bible.txt');
    //List<String> lines = l.split("\n");
    //print(lines.length);
    //lines.forEach((f) => print("\"" + f + " \""));
    return l;
  }

  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'chapter_database.db'),

    onCreate: (db, version){
      return db.execute("CREATE TABLE chapters(id INTEGER PRIMARY KEY, chapter TEXT, verse TEXT, content TEXT)");
    }
  );


  
 
  final List bibleBooks = ["Genesis", "Exodus", "Leviticus", "Numbers", "Deuteronomy",
    "Joshua ", "Judges", "Ruth", "1 Samuel", "2 Samuel", "1 Kings", "2 Kings",
    "1 Chronicles", "2 Chronicles", "Ezra", "Nehemiah", "Esther", "Job", "Psalms ",
    "Proverbs", "Ecclesiastes", "Song of Solomon", "Isaiah", "Jeremiah", "Lamentations",
    "Ezekiel", "Daniel", "Hosea", "Joel", "Amos", "Obadiah", "Jonah", "Micah", "Nahum",
    "Habakkuk", "Zephaniah", "Haggai", "Zechariah", "Malachi", "Matthew", "Mark ",
    "Luke", "John", "Acts", "Romans", "1 Corinthians", "2 Corinthians", "Galatians",
    "Ephesians", "Philippians", "Colossians", "1 Thessalonians", "2 Thessalonians",
    "1 Timothy", "2 Timothy", "Titus", "Philemon", "Hebrews", "James", "1 Peter", "2 Peter",
    "1 John", "2 John", "3 John", "Jude", "Revelation"];


  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    //Call your function
    s = await getListFromFile();
  }

  @override
  Widget build(BuildContext context) {

    var listView = ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,

          ),
          itemCount: bibleBooks.length,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
            child: RaisedButton(
              color: Colors.lightGreenAccent,
              textColor: Colors.deepOrange,
              elevation: 3.0,
              onPressed: ()  {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new Page(name: bibleBooks[index], content: s)));
              } ,
              hoverElevation: 4.5,
              child: Text(bibleBooks[index]),
            ),
          )
    );

 
    return Scaffold(
      appBar: AppBar(
        title: Text("Holy Bible"),

      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: listView,
        ),
      )
    );
  }
}





