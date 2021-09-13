import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {Key? key,
      required this.tittleText,
      required this.sizeHeight,
      required this.color,
      required this.sizeWidth})
      : super(key: key);

  String tittleText;
  double sizeHeight;
  double sizeWidth;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight,
      width: sizeWidth,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Center(
        child: Text(
          tittleText,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
