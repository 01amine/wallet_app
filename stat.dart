import 'package:flutter/material.dart';

class MyStat extends StatelessWidget {
  final String imagelabel;
  final String label1;
  final String label2;
  const MyStat({
    super.key,
    required this.imagelabel,
    required this.label1,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(imagelabel),
        ),
        Column(
          children: [
            Text(
              label1,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(label2),
          ],
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
