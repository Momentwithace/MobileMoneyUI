// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class OffersCard extends StatelessWidget {
  final String asset;
  final String title;
  final String message;
  final String actionText;
  const OffersCard({
    super.key, required this.asset, required this.title, required this.message, required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 105,
          width: 164,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xffF6F6F9),
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                  image: AssetImage(asset))),
        ),
        Container(
          height: 95,
          width: 164,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18)),
            color: Color(0xffF6F6F9),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  message,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  actionText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xffFC4625)),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}