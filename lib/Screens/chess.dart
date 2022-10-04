import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:line_icons/line_icons.dart';
import 'package:stack/Widgets/button.dart';
import 'package:stack/Widgets/chess_pieces.dart';

class Chess extends StatefulWidget {
  const Chess({super.key});

  @override
  State<Chess> createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  double team = 0, position1 = 300, position2 = 50;
  List color = [
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
  ];

  play(x) {
    setState(() {
      if (team == 0.0) {
        position2 = 100;
      } else {
        position1 = 200;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/images/table.jpg'))),
      child: Stack(
        children: [
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
              ),
              itemCount: color.length,
              itemBuilder: (context, index) {
                return Container(
                  color: color[index] ? Colors.grey : Colors.black,
                  height: 50,
                  width: 50,
                );
              }),
          ChessPieces(
              icon: LineIcons.chessQueen, team: true, top: 5, left: 200),
          ChessPieces(icon: LineIcons.chessKing, team: true, top: 5, left: 150),
          ChessPieces(
              icon: LineIcons.chessKnight, team: true, top: 5, left: 300),
          ChessPieces(icon: LineIcons.chessRook, team: true, top: 5, left: 350),
          ChessPieces(
              icon: LineIcons.chessBishop, team: true, top: 5, left: 250),
          ChessPieces(
              icon: LineIcons.chessKnight, team: true, top: 5, left: 50),
          ChessPieces(
              icon: LineIcons.chessBishop, team: true, top: 5, left: 100),
          ChessPieces(icon: LineIcons.chessRook, team: true, top: 5, left: 3),
          ChessPieces(
              icon: LineIcons.chessPawn, team: true, top: 50, left: 200),
          ChessPieces(
              icon: LineIcons.chessPawn, team: true, top: position2, left: 150),
          ChessPieces(
              icon: LineIcons.chessPawn, team: true, top: 50, left: 300),
          ChessPieces(
              icon: LineIcons.chessPawn, team: true, top: 50, left: 350),
          ChessPieces(
              icon: LineIcons.chessPawn, team: true, top: 50, left: 250),
          ChessPieces(icon: LineIcons.chessPawn, team: true, top: 50, left: 50),
          ChessPieces(
              icon: LineIcons.chessPawn, team: true, top: 50, left: 100),
          ChessPieces(icon: LineIcons.chessPawn, team: true, top: 50, left: 3),
          //-----------------------------------------------------------------
          ChessPieces(
              icon: LineIcons.chessQueen, team: false, top: 350, left: 200),
          ChessPieces(
              icon: LineIcons.chessKing, team: false, top: 350, left: 150),
          ChessPieces(
              icon: LineIcons.chessKnight, team: false, top: 350, left: 300),
          ChessPieces(
              icon: LineIcons.chessRook, team: false, top: 350, left: 350),
          ChessPieces(
              icon: LineIcons.chessBishop, team: false, top: 350, left: 250),
          ChessPieces(
              icon: LineIcons.chessKnight, team: false, top: 350, left: 50),
          ChessPieces(
              icon: LineIcons.chessBishop, team: false, top: 350, left: 100),
          ChessPieces(
              icon: LineIcons.chessRook, team: false, top: 350, left: 3),
          ChessPieces(
              icon: LineIcons.chessPawn,
              team: false,
              top: position1,
              left: 200),
          ChessPieces(
              icon: LineIcons.chessPawn, team: false, top: 300, left: 150),
          ChessPieces(
              icon: LineIcons.chessPawn, team: false, top: 300, left: 300),
          ChessPieces(
              icon: LineIcons.chessPawn, team: false, top: 300, left: 350),
          ChessPieces(
              icon: LineIcons.chessPawn, team: false, top: 300, left: 250),
          ChessPieces(
              icon: LineIcons.chessPawn, team: false, top: 300, left: 50),
          ChessPieces(
              icon: LineIcons.chessPawn, team: false, top: 300, left: 100),
          ChessPieces(
              icon: LineIcons.chessPawn, team: false, top: 300, left: 3),
          Positioned(
              top: 450,
              child: Container(
                  width: 390,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      RadioListTile(
                          title: const Text('Yellow team'),
                          value: 0.0,
                          groupValue: team,
                          onChanged: (value) {
                            setState(() {
                              team = value!;
                            });
                          }),
                      RadioListTile(
                          title: const Text('Green team'),
                          value: 1.0,
                          groupValue: team,
                          onChanged: (value) {
                            setState(() {
                              team = value!;
                            });
                          }),
                      Button(title: 'Play', color: Colors.red, function: play)
                    ],
                  ))),
        ],
      ),
    );
  }
}
