import 'package:flutter/material.dart';
import 'package:stack/Widgets/burger_items.dart';
// ignore: depend_on_referenced_packages
import 'package:line_icons/line_icons.dart';
import 'package:stack/Widgets/button.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  bool expand = false, extraItem = false;
  String extra = 'tomato';

  change(x) {
    setState(() {
      extra = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[900],
          onPressed: () {
            setState(() {
              expand = !expand;
            });
          },
          child: Icon(expand ? LineIcons.eyeSlash : LineIcons.eye)),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/table.jpg'))),
        child: Stack(children: [
          Positioned(
              top: 545,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: extraItem ? 310 : 225,
                child: SwitchListTile(
                  title: const Text(
                    'Add extra item?',
                  ),
                  subtitle: FittedBox(
                    child: extraItem
                        ? Row(
                            children: [
                              Button(
                                color: Colors.red,
                                title: 'tomato',
                                function: change,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Button(
                                color: Colors.purple,
                                title: 'onion',
                                function: change,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Button(
                                color: Colors.green,
                                title: 'lettuce',
                                function: change,
                              )
                            ],
                          )
                        : null,
                  ),
                  onChanged: (value) {
                    setState(() {
                      extraItem = value;
                    });
                  },
                  value: extraItem,
                ),
              )),
          BurgerItems(
            item: 'bBread',
            top: expand
                ? extraItem
                    ? 340
                    : 265
                : extraItem
                    ? 200
                    : 190,
            expand: expand,
          ),
          if (extraItem)
            BurgerItems(
              item: extra,
              top: expand ? 250 : 170,
              expand: expand,
            ),
          BurgerItems(
            item: 'meat',
            top: 170,
            expand: expand,
          ),
          BurgerItems(
            item: 'chese',
            top: expand ? 100 : 165,
            expand: expand,
          ),
          BurgerItems(
            item: 'tBread',
            top: expand ? 0 : 125,
            expand: expand,
          ),
        ]),
      ),
    );
  }
}
