// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ChessPieces extends StatelessWidget {
  ChessPieces(
      {super.key,
      required this.icon,
      required this.team,
      required this.top,
      required this.left});
  IconData icon;
  double top, left;
  bool team;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 400),
      top: top,
      left: left,
      child: Icon(
        icon,
        color: team ? Colors.amber : Colors.greenAccent,
        size: 40,
      ),
    );
  }
}
