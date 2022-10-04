// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  Button(
      {super.key,
      required this.title,
      required this.color,
      required this.function});

  String title;
  Color color;
  Function function;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          widget.function(widget.title);
        });
      },
      style: ElevatedButton.styleFrom(backgroundColor: widget.color),
      child: Text(widget.title),
    );
  }
}
