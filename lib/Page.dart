import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Page extends StatefulWidget{
  final name;
  final content;
  

  Page({this.name, this.content});

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {


  Future<String> getListFromFile() async {
    String l = await rootBundle.loadString('assets/bible.txt'); 
    //widget.lines = l.split("\n");
    //print(l);
    return l;
  }

  @override
  Widget build(BuildContext context) {

    //getListFromFile();
    return Scaffold(
      appBar: AppBar(
        title: Text("Holy Bible"),
      ),
      body: Container(
        child: Text(widget.content),
        // child: Column(
        //     children: <Widget>[
        //       for(var item in widget.lines) Text(item)
        //     ],
        // ),
      ),
    );
  }
}