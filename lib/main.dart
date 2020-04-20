import 'package:flutter/material.dart';
import 'package:holy_bible/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Holy Bible',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}



//  void readFileByLines() {
//    File file = new File('./assets/user.json');
//
//    // async
//    file.readAsLines().then((lines) =>
//        lines.forEach((l) => print(l))
//    );
//
//    // sync
//    List<String> lines = file.readAsLinesSync();
//    lines.forEach((l) => print(l));
//  }



//  class ListViewModel{
//  final String title;
//  final String subtitle;
//  final String avatarURL;
//
//  ListViewModel({
//  this.title,
//  this.subtitle,
//  this.avatarURL
//  });
//  }
//  List listViewData = [
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "1",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "2",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "3",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "4",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "5",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "6",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "7",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "8",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "9",
//  ),
//  ListViewModel(
//  title: "Group",
//  subtitle: "Group Category",
//  avatarURL: "10",
//  ),
//  ];
//
//  class DisplayListView extends StatefulWidget {
//  @override
//  _DisplayListViewState createState() => _DisplayListViewState();
//  }
//
//  class _DisplayListViewState extends State {
//  @override
//  Widget build(BuildContext context) {
//  return ListView.builder(
//  itemCount: listViewData.length,
//  itemBuilder: (context, int i) => Column(
//  children: [
//  new ListTile(
//  leading: new CircleAvatar(child: Text(listViewData[i].avatarURL)),
//  title: new Text(listViewData[i].title),
//  subtitle: new Text(listViewData[i].subtitle),
//  onTap: (){},
//  onLongPress: (){
//  print(
//  Text("Long Pressed"),
//  );
//  },
//  ),
//  ],
//  ),
//  );
//  }
//  }
