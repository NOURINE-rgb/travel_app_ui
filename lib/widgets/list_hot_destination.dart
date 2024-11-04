import 'package:flutter/material.dart';
import 'package:ui_challenge4/main.dart';
import 'package:ui_challenge4/models/destination.dart';

class ListHotDestination extends StatelessWidget {
  const ListHotDestination({required this.destination, super.key});
  final Destination destination;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 25),
          padding: const EdgeInsets.only(bottom: 20),
          height: 200,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(destination.imagePath), fit: BoxFit.fill),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Opacity(
            opacity: 0.8,
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
        Positioned(
          bottom: 15,
          left: 5,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                destination.name,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColor.foregroundColor.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                destination.count,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white30,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
