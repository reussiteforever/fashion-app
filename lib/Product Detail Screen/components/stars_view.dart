import 'package:flutter/material.dart';

Widget starsView() {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 18,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 18,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 18,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 18,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 18,
            ),
          ],
        ),
        const Text("(254 reviews)"),
      ],
    ),
  );
}
