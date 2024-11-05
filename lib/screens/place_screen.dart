import 'package:flutter/material.dart';
import 'package:ui_challenge4/data/constants.dart';
import 'package:ui_challenge4/main.dart';
import 'package:ui_challenge4/models/destination.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen(
      {this.name, this.count, required this.imagePath, super.key});
  final String? name;
  final String imagePath;
  final String? count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 80,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          "select loacation",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColor.foregroundColor,
              ),
        ),
      ),
      body: Stack(
        children: [
          Hero(
            tag: imagePath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
