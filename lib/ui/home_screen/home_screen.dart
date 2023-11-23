import 'package:flutter/material.dart';
import 'package:movie/utilities/app_assets.dart';
import 'package:movie/utilities/app_color.dart';
import 'package:movie/utilities/constant.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currenttabindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      body: Constant.tabs[currenttabindex],
    );
  }

  Widget buildBottomNavigationBar() => Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: AppColor.primaryColor,
        ),
        child: BottomNavigationBar(
            selectedItemColor: AppColor.selectColor,
            unselectedItemColor: AppColor.greyColor,
            iconSize: 25,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: currenttabindex,
            onTap: (index) {
              currenttabindex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.homeIcon,
                  )),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.searchIcon,
                  )),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.browseIcon,
                  )),
                  label: "Browse"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    AppAssets.bookmarksIcon,
                  )),
                  label: "watch List"),
            ]),
      );
}
