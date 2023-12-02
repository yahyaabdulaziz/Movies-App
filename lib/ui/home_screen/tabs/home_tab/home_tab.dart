import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/data/api/home_apis.dart';
import 'package:movie/model/newrelease_response.dart';
import 'package:movie/ui/details_screen/details_screen.dart';
import 'package:movie/utilities/app_assets.dart';
import 'package:movie/utilities/app_color.dart';
import 'package:movie/widget/card_widget.dart';
import 'package:movie/widget/data_card_widget.dart';
import 'package:movie/widget/error_view.dart';
import 'package:movie/widget/loading_view.dart';
import 'package:movie/model/recommended_response.dart' as recommended;
import 'package:movie/model/popular_response.dart' as popular;
import 'package:movie/widget/popular_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
              child: FutureBuilder(
                  future: HomeApiManger.getPopularFilm(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return buildPopularSection(snapshot.data!);
                    } else if (snapshot.hasError) {
                      return ErrorView(message: snapshot.error.toString());
                    } else {
                      return const Center(child: LoadingView());
                    }
                  }),
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
                      child: FutureBuilder(
                          future: HomeApiManger.getNewReleaseMovie(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return buildNewReleaseSection(snapshot.data!);
                            } else if (snapshot.hasError) {
                              return ErrorView(
                                  message: snapshot.error.toString());
                            } else {
                              return const Center(child: LoadingView());
                            }
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
              height: MediaQuery.of(context).size.height * .50,
              width: MediaQuery.of(context).size.height * .14,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(6),
                        child: Text(
                          "Recommended",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15),
                        )),
                    FutureBuilder(
                        future: HomeApiManger.getNewRecommendedMovie(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return buildRecommendedSection(snapshot.data!);
                          } else if (snapshot.hasError) {
                            return ErrorView(
                                message: snapshot.error.toString());
                          } else {
                            return const Center(child: LoadingView());
                          }
                        })
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  buildPopularSection(List<popular.Results> popularMovie) {
    return Container(
        margin: EdgeInsets.all(6),
        height: MediaQuery.of(context).size.height * .28,
        width: MediaQuery.of(context).size.height * .14,
        child: PopularWidget(
          results: popularMovie[0],
        ));
  }

  buildNewReleaseSection(List<Results> releaseMovie) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: releaseMovie.length,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.all(6),
              height: MediaQuery.of(context).size.height * .28,
              width: MediaQuery.of(context).size.height * .14,
              child: CardWidget(
                results: releaseMovie[index],
              ));
        });
  }

  buildRecommendedSection(List<recommended.Results> recommendedMovie) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recommendedMovie.length,
          itemBuilder: (context, index) {
            return Container(
                height: MediaQuery.of(context).size.height * .50,
                width: MediaQuery.of(context).size.height * .16,
                margin: EdgeInsets.all(6),
                child: FullCardWidget(
                  results: recommendedMovie[index],
                ));
          }),
    );
  }
}
