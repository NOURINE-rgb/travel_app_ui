import 'package:flutter/material.dart';
import 'package:ui_challenge4/data/constants.dart';
import 'package:ui_challenge4/main.dart';
import 'package:ui_challenge4/widgets/list_places.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen(
      {required this.name,
      required this.count,
      required this.imagePath,
      super.key});
  final String name;
  final String imagePath;
  final String count;

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen>{
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.imagePath,
      child: Scaffold(
        floatingActionButton: Container(
          width: MediaQuery.of(context).size.width - 80,
          // padding: const EdgeInsets.only(right: 20, left: 20),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imagePath), fit: BoxFit.cover),
              ),
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customAppBar(context),
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width,
                    // here i will put my animation

                    height: 550,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      gradient: const LinearGradient(
                        colors: [
                          AppColor.secondaryColor,
                          AppColor.tertiaryColor,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: AppColor.foregroundColor,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          Text(
                            description,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Colors.white38,
                                ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tourist Places",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.foregroundColor
                                          .withOpacity(0.85),
                                    ),
                              ),
                              Text(
                                "18",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: Colors.white30,
                                      fontSize: 14,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 140,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: hotDestination.length,
                              itemBuilder: (context, index) {
                                return ListPlaces(
                                    imagePath: destination[index]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row customAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white70,
            size: 32,
          ),
        ),
        IconButton(
          onPressed: () {},
          color: Colors.white24,
          icon: const Icon(
            Icons.info,
            color: Colors.white70,
            size: 35,
          ),
        ),
      ],
    );
  }
}
