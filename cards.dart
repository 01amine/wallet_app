import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color color;
  final double budget;
  final double nbcard;
  final double mois;
  final double annee;

  const MyCard({
    super.key,
    required this.color,
    required this.budget,
    required this.nbcard,
    required this.mois,
    required this.annee,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 25, 15, 10),
      height: 185,
      width: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Balance',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Image.asset(
                'lib/assets/visa label.png',
                scale: 18,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '\$$budget',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '****$nbcard',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '$mois / $annee',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
