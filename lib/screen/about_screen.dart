import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: 'About',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: DefaultTabController(length: 2, child: TabScreen()),
    );
  }
}

class TabScreen extends StatefulWidget {
  const TabScreen({ Key? key }) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(tabs: [
        Tab(text: 'Description',),
        Tab(text: 'Education',)
      ]),

      body:TabBarView(children: [
        Center(child: Text('Description Section'),),
        Center(child: Text('Education Section'),)
      ]),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      },child: Icon(Icons.home),),
    );
  }
}
