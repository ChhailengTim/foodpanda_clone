import 'package:flutter/material.dart';

class FoodCustom extends StatelessWidget {
  const FoodCustom({
    Key? key,
    this.text,
    this.subtext,
    this.onTap,
  }) : super(key: key);

  final String? text;
  final String? subtext;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text ?? "Food delivery",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
          ),
          Text(
            subtext ?? "",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black54,
                  fontSize: 12,
                ),
          ),
        ],
      ),
    );
  }
}
