import 'package:flutter/material.dart';

class Custontext extends StatefulWidget {
  const Custontext({Key? key}) : super(key: key);

  @override
  _CustontextState createState() => _CustontextState();
}

class _CustontextState extends State<Custontext> {
  late TextEditingController _controllerName;
  late TextEditingController _controllerEmail;

  @override
  void initState() {
    super.initState();

    _controllerName = new TextEditingController(text: "");
    _controllerEmail = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
        controller: _controllerName,
        decoration: InputDecoration(hintText: "User Name"),
      ),
    );
  }
}
