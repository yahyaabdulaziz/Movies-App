import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/utilities/app_assets.dart';

class GridCardWidget extends StatelessWidget {
  const GridCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppAssets.filmImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Text(
            "Action",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
