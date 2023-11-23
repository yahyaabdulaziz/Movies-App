import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/utilities/app_assets.dart';
import 'package:movie/utilities/app_color.dart';

class WatchlistCardWidget extends StatelessWidget {
  const WatchlistCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                AppAssets.splash,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      AppAssets.addToWatch,
                      color: AppColor.selectColor,
                    ),
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ])),
            ],
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            margin: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Text("Alita Batle Angel",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: Text("2020",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.grey)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: Text("ihnasyia Banisuef",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.grey)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
