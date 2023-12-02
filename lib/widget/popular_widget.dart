import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/utilities/app_assets.dart';
import 'package:movie/utilities/app_color.dart';
import 'package:movie/utilities/constants.dart';

import '../model/popular_response.dart';

class PopularWidget extends StatelessWidget {
  final Results results;

  const PopularWidget({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.network(
          "${Constants.imagePath}${results.posterPath}",
          fit: BoxFit.fitWidth,
          filterQuality: FilterQuality.high,
          height: MediaQuery.of(context).size.height * .35,
          width: double.infinity,
        ),
        Image.asset(
          AppAssets.playIcon,
          width: 50,
          color: Colors.white,
          height: 50,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width * .68,
            color: Colors.black87,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(results.title ?? "",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                Text(results.releaseDate ?? "",
                    style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColor.greyColor))
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 5,
            child: Container(
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.height * .14,
              child: Image.network(
                "${Constants.imagePath}${results.posterPath}",
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
                height: MediaQuery.of(context).size.height * .35,
                width: double.infinity,
              ),
            )),
      ],
    );
    ;
  }
}
