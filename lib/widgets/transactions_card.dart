// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TransactionsCard extends StatelessWidget {
  final String title;
  final String message;
  final String amount;
  final bool? isGreenBg;
  final String? date;
  final String? status;
  const TransactionsCard({
    super.key,
    required this.title,
    required this.message,
    required this.amount,
    this.date,
    this.status,
    this.isGreenBg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor:
                  isGreenBg == true ? Color(0xffE1FFE1) : Color(0xffF0F1F5),
              foregroundColor:
                  isGreenBg == true ? Color(0xff54B849) : Color(0xff737682),
              child: Icon(
                isGreenBg == true ? Icons.arrow_downward : Icons.arrow_upward,
                size: 18,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  message,
                  style: TextStyle(color: Color(0xff737682)),
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  amount,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                status == "In-progress"
                    ? Text(
                        "In-Progress",
                        style: TextStyle(color: Color(0xff2FC5FF)),
                      )
                    : status == "Failed"
                        ? Text(
                            "Failed",
                            style: TextStyle(color: Color(0xffFC4625)),
                          )
                        : Text(
                            date!,
                            style: TextStyle(color: Color(0xff737682)),
                          )
              ],
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Divider()
      ],
    );
  }
}
