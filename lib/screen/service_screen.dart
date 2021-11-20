import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

class  Services extends StatelessWidget {
  const Services({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: 'Services',
      home: DefaultTabController(length: 3, child: serviceTab()),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class serviceTab extends StatefulWidget {
  const serviceTab({ Key? key }) : super(key: key);

  @override
  _serviceTabState createState() => _serviceTabState();
}

class _serviceTabState extends State<serviceTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(tabs: [
        Tab(child: Text('Custom Coding'),),
        Tab(child: Text('Wordpress'),),
        Tab(child: Text('Flutter'),)
      ]),
      body: TabBarView(children: [
        Center(child: Text('Custom Coding'),),
        Center(child: Text('Wordpress'),),
        Center(child: Text('Flutter'),)
      ]),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      },child: Icon(Icons.home),),
    );
  }
}