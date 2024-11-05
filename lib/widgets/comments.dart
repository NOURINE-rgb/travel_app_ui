import 'package:flutter/material.dart';
import 'package:ui_challenge4/data/constants.dart';
import 'package:ui_challenge4/main.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 13,
            backgroundImage: AssetImage("assets/man.jpeg"),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 100,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Arjun Unni",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: AppColor.foregroundColor.withOpacity(0.7),
                          ),
                    ),
                    Text(
                      "Jan 25",
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.white30,
                          ),
                    ),
                  ],
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: AppColor.foregroundColor.withOpacity(0.5),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
