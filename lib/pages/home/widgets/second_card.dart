import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCard extends StatefulWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  _SecondCardState createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard>
    with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(Icons.attach_money, color: Colors.grey),
                              SizedBox(width: 5),
                              Text('Conta',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13))
                            ]),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _showSaldo = !_showSaldo;
                                });
                              },
                              child: SvgPicture.asset(
                                !_showSaldo
                                    ? 'assets/icons/eye-off-outline.svg'
                                    : 'assets/icons/eye-outline.svg',
                                color: Colors.grey,
                              ),
                            )
                          ])),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Saldo disponível",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              )),
                          _showSaldo
                              ? Text.rich(
                                  TextSpan(
                                    text: 'R\$ 100.030,48',
                                  ),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 28))
                              : Container(
                                  height: 32,
                                  width: 160,
                                  color: Colors.grey[300]),
                        ],
                      ),
                    ),
                  )
                ],
              ))),
          Expanded(
              flex: 1,
              child: Container(
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.credit_card, color: Colors.grey),
                          SizedBox(width: 10),
                          Flexible(
                              child: Text(
                                  'Compra mais recente em Super Mercado no valor de R\$ 158,99 sexta ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13))),
                          Icon(Icons.chevron_right, color: Colors.grey[400])
                        ],
                      )),
                  color: Colors.grey[200]))
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
