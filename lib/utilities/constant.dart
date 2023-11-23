import 'package:flutter/material.dart';
import 'package:movie/ui/home_screen/tabs/browse_tab/browse_tab.dart';
import 'package:movie/ui/home_screen/tabs/home_tab/home_tab.dart';
import 'package:movie/ui/home_screen/tabs/search_tab/search_tab.dart';
import 'package:movie/ui/home_screen/tabs/watchlist_tab/watchlist_tab.dart';

abstract class Constant {
  static const List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    WatchlistTab(),
  ];
}
