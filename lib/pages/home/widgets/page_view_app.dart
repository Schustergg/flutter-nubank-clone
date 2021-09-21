import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/widgets/second_card.dart';
import 'package:flutter_application_1/pages/home/widgets/third_card.dart';
import 'first_card.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp(
      {Key? key,
      required this.top,
      required this.onChanged,
      required this.onPanUpdate,
      required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 350),
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu
              ? NeverScrollableScrollPhysics()
              : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(child: FirstCard()),
            CardApp(child: SecondCard()),
            CardApp(child: ThirdCard()),
          ],
        ),
      ),
    );
  }
}
