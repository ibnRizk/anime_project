import 'package:anime_project/core/utils/app_assets.dart';
import 'package:anime_project/features/setting/presentation/pages/widgets/card_upgrade.dart';
import 'package:anime_project/features/setting/presentation/pages/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: [
                  Color(0xffD3D6FF),
                  Color(0xffDEE3FF),
                  Colors.white,
                ],
              ),
            ),
          ),
          Positioned(
            top: 149,
            left: 261,
            child: Image.asset(
              Assets.assetsImagesStar1,
              width: 290,
              height: 290,
            ),
          ),
          Positioned(
            top: -80,
            left: -110,
            child: Transform.rotate(
              angle: -20,
              child: Image.asset(
                Assets.assetsImagesStar2,
                width: 290,
                height: 290,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text(
                      'Upgrade Plan',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 60),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Image.asset(Assets.assetsImagesRocketBoy1),
                SizedBox(height: 8),
                Text(
                  'Seamless Anime\n Experience, Ad-Free.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CardUpgrade(
                  color: Color(0xff18153F),
                  textplan: 'Monthly ',
                  textprice: '\$5 USD /Month',
                  subtext: 'Include Family Sharing',
                  isSelect: true,
                ),
                CardUpgrade(
                  color: Colors.white,
                  textplan: 'Annually ',
                  textprice: '\$50 USD /Year',
                  subtext: 'Include Family Sharing',
                  isSelect: false,
                ),

                CustomButton(ontap: () => {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
