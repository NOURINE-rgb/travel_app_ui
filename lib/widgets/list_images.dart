import 'package:flutter/material.dart';
import 'package:ui_challenge4/main.dart';

class ListImages extends StatelessWidget {
  const ListImages({required this.imagePath, super.key});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          height: 200,
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Opacity(
            opacity: 0.4,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [Colors.transparent, AppColor.secondaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
