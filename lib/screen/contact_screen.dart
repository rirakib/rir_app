import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Contact extends StatelessWidget {
  const Contact({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: 'Contact',
      home: ContactClass(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
class ContactClass extends StatefulWidget {
  const ContactClass({ Key? key }) : super(key: key);

  @override
  _ContactClassState createState() => _ContactClassState();
}

class _ContactClassState extends State<ContactClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
        }, icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}