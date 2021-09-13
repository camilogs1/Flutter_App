import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  contar() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Home Page Balcoder",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "El contador fue presionado : " + counter.toString(),
            style: TextStyle(color: Colors.white70, fontSize: 24),
          ),
        ),
        color: Colors.redAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          contar();
        },
      ),
    );
  }
}
