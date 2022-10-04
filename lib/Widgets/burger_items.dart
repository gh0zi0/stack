import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BurgerItems extends StatelessWidget {
  BurgerItems(
      {super.key, required this.item, required this.top, required this.expand});

  double top;
  String item;
  bool expand;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 400),
      top: top,
      child: Row(
        children: [
          AnimatedOpacity(
            opacity: expand ? 1 : 0,
            duration: const Duration(milliseconds: 400),
            child: Container(
              alignment: Alignment.center,
              width: 65,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text(item),
            ),
          ),
          AnimatedOpacity(
            opacity: expand ? 1 : 0,
            duration: const Duration(milliseconds: 400),
            child: Container(
              color: Colors.white,
              height: 2,
              width: 30,
            ),
          ),
          Image.asset(
            'assets/images/$item.png',
            height: 200,
            width: 200,
          ),
        ],
      ),
    );
  }
}
