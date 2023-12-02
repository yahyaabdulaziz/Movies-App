import 'package:flutter/material.dart';
import 'package:movie/model/newrelease_response.dart';
import 'package:movie/utilities/app_assets.dart';
import 'package:movie/utilities/constants.dart';

class CardWidget extends StatelessWidget {
  final Results results;

  const CardWidget({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.network(
          "${Constants.imagePath}${results.posterPath}",
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
    );
  }
}
