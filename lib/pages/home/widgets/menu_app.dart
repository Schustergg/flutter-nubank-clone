import 'package:flutter/material.dart';

import 'item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: 0,
        right: 0,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: 100),
            opacity: showMenu ? 1 : 0,
            child: Container(
                height: MediaQuery.of(context).size.height * .55,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          'https://cdn-0.imagensemoldes.com.br/wp-content/uploads/2020/08/QR-Code-PNG-1024x1024.png',
                          height: 80,
                          color: Colors.white),
                      Text.rich(
                          TextSpan(text: 'Banco ', children: [
                            TextSpan(
                                text: '260 - Nu Pagametos S.A',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                          style: TextStyle(fontSize: 12)),
                      SizedBox(height: 5),
                      Text.rich(
                          TextSpan(text: 'Agência ', children: [
                            TextSpan(
                                text: '0001',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                          style: TextStyle(fontSize: 12)),
                      SizedBox(height: 5),
                      Text.rich(
                          TextSpan(text: 'Conta ', children: [
                            TextSpan(
                                text: '0000000-0',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                          style: TextStyle(fontSize: 12)),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: <Widget>[
                            ItemMenu(
                                icon: Icons.info_outline, text: 'Me ajuda'),
                            ItemMenu(
                                icon: Icons.person_outline, text: 'Perfil'),
                            ItemMenu(
                                icon: Icons.settings, text: 'Configurar conta'),
                            ItemMenu(
                                icon: Icons.credit_card,
                                text: 'Configurar cartão'),
                            ItemMenu(
                                icon: Icons.store_mall_directory,
                                text: 'Pedir conta PJ'),
                            ItemMenu(
                                icon: Icons.phone_android,
                                text: 'Configuração do app'),
                            SizedBox(height: 22),
                            Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.7, color: Colors.white54)),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.purple[800],
                                    shadowColor: Colors.transparent,
                                    elevation: 0),
                                child: Text(
                                  "SAIR DO APP",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))));
  }
}
