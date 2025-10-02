import 'package:anime_project/core/function/build_action_button.dart';
import 'package:anime_project/core/function/build_button.dart';
import 'package:anime_project/core/function/build_info.dart';
import 'package:anime_project/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class AnimeItemDetails extends StatelessWidget {
  const AnimeItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C1E51),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 520,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        Assets.assetsImages3,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 65),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    buildButton(
                      text: 'Dark Fantasy',

                      ontap: () {},
                    ),
                    buildButton(
                      text: 'Action',
                      ontap: () {},
                    ),
                    buildButton(
                      text: 'Adventure',

                      ontap: () {},
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade600,
                  endIndent: 20,
                  indent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: [
                      buildInfo(
                        Icons.visibility,
                        '2.3M views',
                      ),
                      SizedBox(width: 10),
                      buildInfo(
                        Icons.emoji_emotions,
                        '2K clap',
                      ),
                      SizedBox(width: 10),
                      buildInfo(Icons.movie, '4 Seasons'),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade600,
                  endIndent: 20,
                  indent: 20,
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.assetsImagesGroup16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Demon Slayer: Kimetsu no Yaiba follows\n Tanjiro, a kind-hearted boy who becomes\n a demon slayer after his family is slaughtered\n and his sister is turned into a demon.\n Experience breathtaking battles, stunning\n animation, and an emotional journey of courage\n and hope.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 430,
            left: 95,

            child: Image.asset(Assets.assetsImagesGroup),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xff16103C),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  children: [
                    buildActionButton(
                      text: 'preview',
                      icon: Icons.play_circle_fill_outlined,
                      ontap: () {},
                    ),
                    buildActionButton(
                      color: Color(0xff6758FE),
                      text: 'Watch Now',
                      icon: Icons.visibility,
                      ontap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
