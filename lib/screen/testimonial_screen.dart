import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class  Testimonial extends StatelessWidget {
  const Testimonial({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: 'Testimonial',
      home: TestimonialClass(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
class TestimonialClass extends StatefulWidget {
  const TestimonialClass({ Key? key }) : super(key: key);

  @override
  _TestimonialClassState createState() => _TestimonialClassState();
}

class _TestimonialClassState extends State<TestimonialClass> {
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