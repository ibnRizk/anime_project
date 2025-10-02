import 'package:flutter/material.dart';

Widget buildInfo(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon, color: Colors.white70, size: 20),
      const SizedBox(width: 4),
      Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    ],
  );
}
