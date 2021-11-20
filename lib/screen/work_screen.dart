import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

class  Work extends StatelessWidget {
  const Work({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: 'work',
      home: DefaultTabController(length: 3, child: workTab()),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class workTab extends StatefulWidget {
  const workTab({ Key? key }) : super(key: key);

  @override
  _workTabState createState() => _workTabState();
}

class _workTabState extends State<workTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(tabs: [
        Tab(child: Text('Landing Page'),),
        Tab(child: Text('Ecommerce'),),
        Tab(child: Text('App'),)
      ]),

      body: TabBarView(children: [
        Center(child: Text('Landing page Desing'),),
        Center(child: Text('Ecommerce  page Desing'),),
        Center(child: Text('Mobile App Desing'),),
      ]),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      },child: Icon(Icons.home),),
    );
  }
}