import 'package:flutter/material.dart';
import 'package:regis_app/widget/my_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text('About Page', style: TextStyle(fontSize: 24)),
      ), 
    );
  }
}