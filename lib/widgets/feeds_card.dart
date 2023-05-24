// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

import 'package:flutter/material.dart';

class FeedsCard extends StatelessWidget {
  final String? asset;
  final String title;
  final String? userName;
  final String message;
  final String? actionText;
  final String time;
  const FeedsCard({
    super.key,
    this.asset, required this.title, this.userName, required this.message, this.actionText, required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffF0F1F5),
                radius: 35,
                child: asset == null
                    ? Text(
                        "VA",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff737682)),
                      )
                    : Image.asset(
                        asset!,
                        height: 70,
                        width: 70,
                        fit: BoxFit.contain,
                      ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        userName != null ? Text(
                          userName!,
                          style: TextStyle(
                              color: Color(0xff72777A).withOpacity(.5)),
                        ):Container()
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                     message,
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        actionText != null ?
                        Text(
                          actionText!,
                          style: TextStyle(color: Color(0xffE66652)),
                        ): 
                        Container(),
                        Spacer(),
                        Text(
                          time,
                          style: TextStyle(color: Color(0xff72777A)),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
