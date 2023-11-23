import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/utilities/app_assets.dart';
import 'package:movie/utilities/app_color.dart';

class FullCardWidget extends StatelessWidget {
  const FullCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
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
                    color: Colors.grey,
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                ])),
          ],
        ),
        Container(
          padding: EdgeInsets.all(4),
          color: AppColor.accent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: const Icon(
                      Icons.star,
                      color: AppColor.selectColor,
                    ),
                  ),
                  Text(
                    "7.7",
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  )
                ],
              ),
              Text(
                "Twilight 2",
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              Text("2012 R 1h 50m",
                  style: GoogleFonts.inter(
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
            ],
          ),
        )
      ],
    );
  }
}
