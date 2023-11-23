import 'package:flutter/material.dart';
import 'package:movie/utilities/app_assets.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
