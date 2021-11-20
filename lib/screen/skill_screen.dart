import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

class  Skills extends StatelessWidget {
  const Skills({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: 'Skills',
      home: DefaultTabController(length: 4, child: skillTab()),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class skillTab extends StatefulWidget {
  const skillTab({ Key? key }) : super(key: key);

  @override
  _skillTabState createState() => _skillTabState();
}

class _skillTabState extends State<skillTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(tabs: [
        Tab(child: Text('FRONTEND'),),
        Tab(child: Text('BACKEND'),),
        Tab(child: Text('WORDPRESS'),),
        Tab(child: Text('FLUTTER'),),
      ]),
      body: TabBarView(children: [
        Center(child: Text('frontend skill'),),
        Center(child: Text('backend skill'),),
        Center(child: Text('wordpress skill'),),
        Center(child: Text('flutter skill'),),

      ]),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      },child: Icon(Icons.home),),
    );
  }
}