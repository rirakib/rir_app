import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class  Work extends StatelessWidget {
  const Work({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: 'work',
      home: WorkClass(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
class WorkClass extends StatefulWidget {
  const WorkClass({ Key? key }) : super(key: key);

  @override
  _WorkClassState createState() => _WorkClassState();
}

class _WorkClassState extends State<WorkClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testimonial'),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
        }, icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}