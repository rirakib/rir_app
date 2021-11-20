import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/contact_screen.dart';
import 'package:flutter_application_1/screen/service_screen.dart';
import 'package:flutter_application_1/screen/skill_screen.dart';
import 'package:flutter_application_1/screen/testimonial_screen.dart';
import 'package:flutter_application_1/screen/work_screen.dart';
import '../screen/about_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key ? key
  }): super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State < HomeScreen > {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home')
      ),
      drawer: Drawer(
        
        child: Column(

          children: [
            Container(
              
              child: UserAccountsDrawerHeader(accountName: Text('Rakibul Islam', style:
                TextStyle(
                  fontSize: 24,
                ), ), accountEmail: Text('Frontend Developer', style: TextStyle(
                color: Colors.amber,

              ), ),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('../assests/images/rakib.jpg'),),
              ),
              

            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.perm_identity),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
              },
            ),
            ListTile(
              title: Text('Skills'),
              leading: Icon(Icons.six_k_plus_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Skills()));
              },
            ),
            ListTile(
              title: Text('Services'),
              leading: Icon(Icons.design_services),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Services()));
              },
            ),
            ListTile(
              title: Text('Work'),
              leading: Icon(Icons.work),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Work()));
              },
            ),
            ListTile(
              title: Text('Testimonial'),
              leading: Icon(Icons.reviews),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Testimonial()));
              },
            ),
            ListTile(
              title: Text('Contact'),
              leading: Icon(Icons.contact_page),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
              },
            ),
            ListTile(
              title: Text('Website'),
              leading: Icon(Icons.open_in_browser),
              onTap: () {
                launch('https://rirakib.github.io/Rakibul_Islam/');
              },
            ),
            Expanded(child: Align(alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              color: Colors.amber,
              child: Container(child: Row(children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Text('Follow Me  ',style: TextStyle(
                  color: Colors.black,
                  fontSize: 17
                ),),
                IconButton(onPressed: (){
                
                }, icon: Icon(Icons.facebook)),

                IconButton(onPressed: (){
                
                }, icon: Icon(Icons.email)),

                IconButton(onPressed: (){
                
                }, icon: Icon(Icons.contact_phone)),

                
                
              ],),),
            ),
            
            )
            )
          ],
          
        ),
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      }, child: Icon(Icons.message), ),
    );
  }
}