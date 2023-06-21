import 'package:flutter/material.dart';

Widget generateRow(String title, String value) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(title, textAlign: TextAlign.left),
            ),
            Expanded(
              child: Text(value,
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      const Divider(
        color: Colors.black,
      ),
    ],
  );
}
