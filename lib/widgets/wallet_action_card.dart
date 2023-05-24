// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WalletActionCard extends StatelessWidget {
  final String asset;
  final String action;
  final bool? isWhiteText;
  const WalletActionCard({
    super.key,
    required this.asset,
    required this.action,
    this.isWhiteText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xffF0F1F5),
              borderRadius: BorderRadius.circular(35)),
          child: Image.asset(
            asset,
            width: 40,
            height: 40,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          action,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isWhiteText == true ? Colors.white : null,
              fontSize: 14),
        )
      ],
    );
  }
}
