import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/utilities/app_assets.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 12, right: 12, top: 50, bottom: 12),
            padding: EdgeInsets.all(12),
            child: CupertinoSearchTextField(
              onChanged: (value) {},
              onSubmitted: (value) {},
              autocorrect: true,
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .35),
              child: Center(child: Image.asset(AppAssets.imSearch)))
        ],
      ),
    );
  }
}
