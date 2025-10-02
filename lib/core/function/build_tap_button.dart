import 'package:flutter/material.dart';

Widget buildMethod({
  required String text,
  required bool isSlected,
  required void Function()? ontap,
}) {
  return GestureDetector(
    onTap: ontap,
    child: Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          color: isSlected
              ? Color(0xff5436F8)
              : Colors.white,
          borderRadius: BorderRadius.circular(24),
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 8,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: isSlected
                    ? Colors.white
                    : const Color(0xff5436F8),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
