import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String imagelabel;
  final String labelS;
  const MyButtons({
    super.key,
    required this.imagelabel,
    required this.labelS,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 10,
                  spreadRadius: 4,
                )
              ]),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              imagelabel,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          labelS,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
