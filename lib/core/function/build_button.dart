import 'package:flutter/material.dart';

Widget buildButton({
  required String text,

  required void Function()? ontap,
}) {
  return GestureDetector(
    onTap: ontap,
    child: Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: Color.fromARGB(217, 121, 126, 139),
          borderRadius: BorderRadius.circular(24),
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
