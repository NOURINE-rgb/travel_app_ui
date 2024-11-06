import 'package:flutter/material.dart';
import 'package:ui_challenge4/main.dart';

class ListPlaces extends StatelessWidget {
  const ListPlaces({required this.imagePath, super.key});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          child: Opacity(
              opacity: 0.7,
              child: Container(
                // margin: const EdgeInsets.only(right: 15),
                height: 140,
                width: 140,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, AppColor.secondaryColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
