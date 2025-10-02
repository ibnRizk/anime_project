import 'package:anime_project/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 92,
          width: 92,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              Assets.assetsImagesNaruto,
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Detective Conan',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Mystery',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
