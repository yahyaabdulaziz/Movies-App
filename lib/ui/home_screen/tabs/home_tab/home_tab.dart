import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/ui/details_screen/details_screen.dart';
import 'package:movie/utilities/app_assets.dart';
import 'package:movie/utilities/app_color.dart';
import 'package:movie/widget/card_widget.dart';
import 'package:movie/widget/data_card_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, DetailsScreen.routeName);
              },
              child: Stack(
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
                          Text("title crossAxisAlignment",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                          Text("12-21-12- re- -1212 ",
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
                          child: CardWidget())),
                ],
              ),
            ),
            Container(
              height: 12,
              color: Colors.black87,
            ),
            Container(
              padding: EdgeInsets.all(6),
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.height * .14,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "New Release",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15),
                        )),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.all(6),
                                height:
                                    MediaQuery.of(context).size.height * .28,
                                width: MediaQuery.of(context).size.height * .14,
                                child: CardWidget());
                          }),
                    ),
                  ]),
            ),
            Container(
              height: 35,
              color: Colors.black87,
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
                          "New Release",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15),
                        )),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                                height:
                                    MediaQuery.of(context).size.height * .50,
                                width: MediaQuery.of(context).size.height * .12,
                                margin: EdgeInsets.all(6),
                                child: FullCardWidget());
                          }),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
