import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Winai Kankhat";
  @override
  void setState(() {
    name = "Somchai Jaidee";
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Color.fromRGBO(241, 239, 234, 1)),
          ) ,
        backgroundColor: Colors.blue.shade800,
      ),
      body:  Center(
        FloatingActionButton(
          onPressed: changname,
        )
        child: Text("สวัสดีครับ $name"),
       
      ), 
    );
  }
}