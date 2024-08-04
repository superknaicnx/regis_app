import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Winai Kankhat";

  void changeName() {
    setState(() {
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
        ),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Center(
        child: Text(name, style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
        child: Icon(Icons.add),
      ),
    );
  }
}
