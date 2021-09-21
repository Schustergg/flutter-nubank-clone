import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/gift-outline.svg',
              color: Colors.grey,
            ),
            Column(children: <Widget>[
              Text('Nubank Rewards',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26)),
              SizedBox(width: 15),
              Text(
                  'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.center),
            ]),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 0.7, color: Colors.purple)),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
                child: Text('ATIVE O SEU REWARDS',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold)),
              ),
            )
          ]),
    );
  }
}
