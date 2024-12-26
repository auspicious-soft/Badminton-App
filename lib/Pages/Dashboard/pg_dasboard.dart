import 'package:badminton/Pages/Dashboard/TabHome/Pg_tabhome.dart';
import 'package:badminton/Pages/Dashboard/TabMore/pg_tabmore.dart';
import 'package:badminton/Pages/Dashboard/TabPlay/pg_tabPlay.dart';
import 'package:badminton/Pages/Dashboard/TabRank/pg_tabrank.dart';
import 'package:badminton/app_settings/components/label.dart';
import 'package:badminton/app_settings/constants/app_assets.dart';
import 'package:badminton/app_settings/constants/app_colors.dart';
import 'package:badminton/app_settings/constants/app_const.dart';
import 'package:flutter/material.dart';

class PgDashBoard extends StatefulWidget {
  const PgDashBoard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StatePgDashBoard();
  }
}

class _StatePgDashBoard extends State<PgDashBoard> {
  int selectedTab = 0;

  List<Widget> get tabViews => [
        const PgTabhome(),
        const PgTabhome(),
        const PgTabplay(),
        const PgTabrank(),
        const PgTabmore()
      ];
  final PageController pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [PgTabhome(), PgTabplay(), PgTabrank(), PgTabmore()],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              pageController.jumpToPage(index);
            });
          },
          unselectedFontSize: 10,
          selectedFontSize: 10,
          unselectedLabelStyle:
              const TextStyle(fontFamily: AppConst.fontFamily),
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            _buildNavItem("Home", 0),
            _buildNavItem("Play", 1),
            _buildNavItem("Ranking", 2),
            _buildNavItem("More", 3),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(String label, int index) {
    bool isActive = selectedIndex == index;

    return BottomNavigationBarItem(
      icon: SizedBox(
        height: 70,
        width: 70,
        child: Column(children: [
          Container(
            width: 58,
            height: 40,
            decoration: BoxDecoration(
              color: isActive ? AppColors.primaryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  getImageAsset(label),
                  fit: BoxFit.contain,
                  width: 25,
                  height: 20,
                  color:
                      isActive ? AppColors.whiteColor : AppColors.primaryColor,
                )
              ],
            ),
          ),
          Label(
              txt: label,
              type: TextTypes.f_10_600,
              forceColor: isActive ? AppColors.primaryColor : AppColors.grey),
        ]),
      ),
      label: "",
    );
  }

  String getImageAsset(String label) {
    switch (label.toLowerCase()) {
      case "home":
        return AppAssets.home;
      case "play":
        return AppAssets.play;
      case "ranking":
        return AppAssets.rank;
      default:
        return AppAssets.more;
    }
  }
}
