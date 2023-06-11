import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:wallet_app/buttons.dart';
import 'package:wallet_app/cards.dart';
import 'package:wallet_app/stat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 500),
        backgroundColor: Colors.grey.shade300,
        height: 60,
        items: [
          const Icon(
            Icons.person,
            color: Colors.grey,
          ),
          Image.asset(
            'lib/assets/visa icon.png',
            scale: 10,
          ),
          const Icon(
            Icons.settings,
            color: Colors.grey,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 1),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Card',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add)),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    MyCard(
                      color: Colors.yellow,
                      budget: 55321.0,
                      nbcard: 4323,
                      mois: 10,
                      annee: 23,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyCard(
                      color: Colors.purple,
                      budget: 6578.2,
                      nbcard: 6578,
                      mois: 02,
                      annee: 27,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyCard(
                      color: Colors.pink,
                      budget: 59876.999,
                      nbcard: 9876,
                      mois: 12,
                      annee: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyCard(
                      color: Colors.blue,
                      budget: 55376.8,
                      nbcard: 2314,
                      mois: 04,
                      annee: 23,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButtons(
                    imagelabel: 'lib/assets/téléchargement.png',
                    labelS: 'Send',
                  ),
                  MyButtons(
                    imagelabel: 'lib/assets/1019607.png',
                    labelS: 'Pay',
                  ),
                  MyButtons(
                    imagelabel: 'lib/assets/1649577bills.png',
                    labelS: 'Bills',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: const [
                  MyStat(
                    imagelabel: 'lib/assets/statistics.png',
                    label1: 'Statistics',
                    label2: 'Payment and income',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyStat(
                    imagelabel: 'lib/assets/transaction.png',
                    label1: 'Transaction',
                    label2: 'Transaction history',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
