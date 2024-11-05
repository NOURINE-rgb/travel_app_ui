import 'package:flutter/material.dart';
import 'package:ui_challenge4/data/constants.dart';
import 'package:ui_challenge4/main.dart';
import 'package:ui_challenge4/widgets/comments.dart';
import 'package:ui_challenge4/widgets/list_hot_destination.dart';
import 'package:ui_challenge4/widgets/list_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 80,
        width: MediaQuery.of(context).size.width - 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          gradient: LinearGradient(
            colors: [
              AppColor.darkSecondaryColor,
              AppColor.lightTertiaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white38,
                  size: 40,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.place,
                  color: AppColor.foregroundColor,
                  size: 40,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white38,
                  size: 40,
                ),
                onPressed: null),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.secondaryColor,
              AppColor.tertiaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding:
            const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Destination",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColor.foregroundColor,
                        ),
                  ),
                  InkWell(
                    onTap: null,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        color: AppColor.foregroundColor.withOpacity(0.6),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: destination.length,
                    itemBuilder: (context, index) {
                      print("$index ***********");
                      return ListImages(imagePath: destination[index]);
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot destination",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppColor.foregroundColor.withOpacity(0.8),
                        ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "More",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white30,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotDestination.length,
                    itemBuilder: (context, index) {
                      print("$index ***********");
                      return ListHotDestination(
                          destination: hotDestination[index]);
                    }),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Visiters Reviews",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColor.foregroundColor.withOpacity(0.85),
                        ),
                  ),
                  Text(
                    "22 Reviews",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white30,
                          fontSize: 14,
                        ),
                  ),
                ],
              ),
              const Comments(),
            ],
          ),
        ),
      ),
    );
  }
}
