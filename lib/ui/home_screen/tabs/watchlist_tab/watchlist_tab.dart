import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/widget/watchlist_card.dart';

class WatchlistTab extends StatelessWidget {
  const WatchlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(top: 40, bottom: 18, left: 12, right: 12),
              child: Text(
                "Browse Category",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 22),
              )),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * .20,
                      child: WatchlistCardWidget());
                }),
          )
        ],
      ),
    );
  }
}
