import 'package:anime_project/core/utils/app_assets.dart';
import 'package:anime_project/features/home/presentation/pages/widgets/character_item.dart';
import 'package:flutter/material.dart';
import '../../../../core/function/build_tap_button.dart';
import 'widgets/anime_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<String> tabs = [
    'All',
    'Popular',
    'New Releases',
    'Trending',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [Colors.white, Color(0xffD3D6FF)],
                ),
              ),
            ),
            Positioned(
              top: -158,
              right: -230,
              child: Image.asset(
                Assets.assetsImagesStar1,
                color: Color.fromARGB(255, 198, 202, 248),
                width: 500,
                height: 500,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                const Text(
                  'Where Anime Comes Alive',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return buildMethod(
                        text: tabs[index],
                        isSlected: selectedIndex == index,
                        ontap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  height: 310,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: AnimeItem(),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Top Characters',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 154,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: CharacterItem(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
