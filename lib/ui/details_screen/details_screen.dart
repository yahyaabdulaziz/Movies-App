import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/model/recommended_response.dart';
import 'package:movie/model/similar_response.dart';
import 'package:movie/utilities/app_assets.dart';
import 'package:movie/utilities/app_color.dart';
import 'package:movie/widget/data_card_widget.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = "DetailsScreen";

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AppAssets.filmImage,
                  fit: BoxFit.fitWidth,
                  height: MediaQuery.of(context).size.height * .35,
                  width: double.infinity,
                ),
                Image.asset(
                  AppAssets.playIcon,
                  width: 50,
                  color: Colors.white,
                  height: 50,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(6),
              child: Text("title crossAxisAlignment",
                  style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.all(6),
              child: Text("12-21-12- re- -1212 ",
                  style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: AppColor.greyColor)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              color: Colors.black87,
              height: MediaQuery.of(context).size.height * .30,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        color: AppColor.selectColor,
                      )),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text("data",
                                  style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text("data",
                                  style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text("data",
                                  style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                            )
                          ],
                        ),
                        Text(
                          "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. ",
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
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
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              height: MediaQuery.of(context).size.height * .40,
              width: MediaQuery.of(context).size.height * .14,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "More Like This",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15),
                        )),
                    Expanded(
                      child: buildSimilarMovies(),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  buildSimilarMovies() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return Container(
              height: MediaQuery.of(context).size.height * .50,
              width: MediaQuery.of(context).size.height * .12,
              margin: EdgeInsets.all(6),
              child: Container(
                color: AppColor.selectColor,
              ));
        });
  }
}
