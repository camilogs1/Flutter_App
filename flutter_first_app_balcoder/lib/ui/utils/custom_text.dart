import 'package:flutter/material.dart';

class customText extends StatelessWidget {
  customText({Key? key, required this.controller, required this.hintText})
      : super(key: key);

  TextEditingController controller;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: "User Email"),
    );
  }
}
