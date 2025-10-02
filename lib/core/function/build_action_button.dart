import 'package:flutter/material.dart';

Widget buildActionButton({
  required String text,
  required IconData icon,
  Color? color,
  required void Function()? ontap,
}) {
  return GestureDetector(
    onTap: ontap,
    child: Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color:
              color ?? Color.fromARGB(217, 121, 126, 139),
          borderRadius: BorderRadius.circular(24),
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 12,
            ),
            child: Row(
              children: [
                Icon(icon, color: Colors.white, size: 20),
                const SizedBox(width: 4),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
