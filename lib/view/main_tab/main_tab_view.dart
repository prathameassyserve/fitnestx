import 'package:fitnestx/common/color_extension.dart';
import 'package:fitnestx/common_widgets/tab_button.dart';
import 'package:fitnestx/generated/assets.dart';
import 'package:fitnestx/prefs/app_db.dart';
import 'package:fitnestx/view/home/blank_view.dart';
import 'package:fitnestx/view/home/home_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  var selectedTab = 0;
  final PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentTab = const HomeView();

  @override
  Widget build(BuildContext context) {
    appDB.isLogin = true;
    return Scaffold(
      body: PageStorage(bucket: pageStorageBucket, child: currentTab),
      backgroundColor: TColor.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: TColor.primaryG),
              borderRadius: BorderRadius.circular(35),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Icon(
              Icons.search,
              color: TColor.white,
              size: 35,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: TColor.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            height: kToolbarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                  icon: Assets.imgHomeTab,
                  selectIcon: Assets.imgHomeTabSelect,
                  isActive: selectedTab == 0,
                  onTap: () {
                    selectedTab = 0;
                    currentTab = const HomeView();
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                TabButton(
                  icon: Assets.imgActivityTab,
                  selectIcon: Assets.imgActivityTabSelect,
                  isActive: selectedTab == 1,
                  onTap: () {
                    selectedTab = 1;
                    currentTab = const BlankView();
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(width: 60),
                TabButton(
                  icon: Assets.imgCameraTab,
                  selectIcon: Assets.imgCameraTabSelect,
                  isActive: selectedTab == 2,
                  onTap: () {
                    selectedTab = 2;
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
                TabButton(
                  icon: Assets.imgProfileTab,
                  selectIcon: Assets.imgProfileTabSelect,
                  isActive: selectedTab == 3,
                  onTap: () {
                    selectedTab = 3;
                    if (mounted) {
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
