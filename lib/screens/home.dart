import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Vacinas"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            i = i + 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          child: Text(
            i.toString(),
            style: TextStyle(
              color: Colors.blue,
              fontSize: 72,
            ),
          ),
        ),
      ),
    );
  }
}
