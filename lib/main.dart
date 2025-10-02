import 'package:anime_project/features/home/presentation/pages/home_page.dart';
import 'package:anime_project/features/search/presentation/pages/search_page.dart';
import 'package:anime_project/features/setting/presentation/pages/setting_page.dart';
import 'package:flutter/material.dart';

// there is a screen in setting and will be make more refacor
void main() {
  runApp(const Anime());
}

class Anime extends StatefulWidget {
  const Anime({super.key});

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    SearchPage(),
    SettingPage(),
  ];
  final List<String> titles = ["Home", "Search", "Profile"];
  final List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.interests,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: screens,
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround,
            children: List.generate(titles.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Color(0xff5436F8)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        icons[index],
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.grey,
                      ),
                      SizedBox(width: 6),
                      Text(
                        selectedIndex == index
                            ? titles[index]
                            : '',
                        style: TextStyle(
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
