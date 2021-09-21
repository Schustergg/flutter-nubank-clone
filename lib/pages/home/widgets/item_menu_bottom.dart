import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenuBottom({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(icon),
                Text(
                  text,
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.22,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white24)),
    );
  }
}
