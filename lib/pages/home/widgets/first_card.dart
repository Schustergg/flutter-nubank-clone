import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(children: <Widget>[
                          Icon(Icons.credit_card, color: Colors.grey),
                          SizedBox(width: 5),
                          Text('Cartão de Crédito',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13))
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("FATURA ATUAL",
                                  style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                              Text.rich(
                                  TextSpan(text: 'R\$', children: [
                                    TextSpan(
                                        text: ' 5600',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: ",50")
                                  ]),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 28)),
                              Text.rich(
                                  TextSpan(
                                      text: 'Limite disponível',
                                      children: [
                                        TextSpan(
                                            text: ' R\$ 9.600,25',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12))
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 12, left: 10, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        width: 8,
                        child: Column(children: <Widget>[
                          Expanded(
                              flex: 3, child: Container(color: Colors.orange)),
                          Expanded(
                              flex: 1, child: Container(color: Colors.blue)),
                          Expanded(
                              flex: 2, child: Container(color: Colors.green)),
                        ]),
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
                          Icon(Icons.shopping_cart, color: Colors.grey),
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
}
