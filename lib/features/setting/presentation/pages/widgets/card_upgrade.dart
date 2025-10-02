import 'package:anime_project/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CardUpgrade extends StatelessWidget {
  const CardUpgrade({
    super.key,
    required this.color,
    required this.textplan,
    required this.textprice,
    required this.subtext,
    required this.isSelect,
  });
  final Color color;
  final String textplan;
  final bool isSelect;
  final String textprice;
  final String subtext;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 8,
          right: 16,
          left: 16,
          top: 8,
        ),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset(Assets.assetsImagesFiles),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textplan,
                  style: TextStyle(
                    fontSize: 16,
                    color: isSelect
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  textprice,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: isSelect
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  subtext,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffA49AD8),
                  ),
                ),
              ],
            ),
            SizedBox(width: 16),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
                color: isSelect
                    ? Color(0xff5436F8)
                    : Colors.white,
              ),
              child: Center(
                child: Icon(
                  Icons.check,
                  size: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
