// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/text_themes.dart';
import '../widgets/transactions_card.dart';
import '../widgets/wallet_action_card.dart';

class Cash extends StatelessWidget {
  const Cash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset(
          "assets/background.png",
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        toolbarHeight: 300,
        backgroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Available Balance",
                  style: styleW18.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(.7)),
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.remove_red_eye_outlined,
                    color: Colors.white.withOpacity(.7)),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text("₦ 234,430",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    )),
                Text(".00",
                    style: TextStyle(
                      fontSize: 36,
                      color: Color(0xff737682),
                    )),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffFC4625)),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/add-money.svg",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Add Money",
                        style: styleW12,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white.withOpacity(.2)),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/share.svg",
                        width: 12,
                        height: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Share your account",
                        style: styleW12,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  WalletActionCard(
                    asset: "assets/Money.png",
                    action: "Add money",
                    isWhiteText: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  WalletActionCard(
                    asset: "assets/Icon.png",
                    action: "Send money",
                    isWhiteText: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  WalletActionCard(
                    asset: "assets/phone.png",
                    action: "Buy airtime",
                    isWhiteText: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  WalletActionCard(
                    asset: "assets/grid.png",
                    action: "Pay bills",
                    isWhiteText: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  WalletActionCard(
                    asset: "assets/finger.png",
                    action: "Buy data",
                    isWhiteText: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.chevron_right)
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Today",
              ),
              SizedBox(
                height: 20,
              ),
              TransactionsCard(
                title: "Transferring",
                message: "Ojo Oluwaleke Oluwakikiii",
                amount: "₦ 300,000",
                status: "In-progress",
              ),
              TransactionsCard(
                title: "Money received",
                message: "Kennedy Obi ",
                amount: "₦ 300,000",
                date: "Dec 20th at 02:34PM",
                isGreenBg: true,
              ),
              TransactionsCard(
                title: "Repaid loan",
                message: "Rent Now Pay Later",
                amount: "₦ 300,000",
                status: "Failed",
              ),
              TransactionsCard(
                title: "Savings top up",
                message: "Naira reserve",
                amount: "₦ 300,000",
                date: "Dec 20th at 02:34PM",
              ),
              TransactionsCard(
                title: "Disbursed loan",
                message: "Agric. loans",
                amount: "₦ 300,000",
                date: "Dec 20th at 02:34PM",
                isGreenBg: true,
              ),
              TransactionsCard(
                title: "Money sent",
                message: "Kennedy Obi",
                amount: "₦ 300,000",
                date: "Dec 20th at 02:34PM",
              ),
              TransactionsCard(
                title: "Airtime top up",
                message: "MTN airtime",
                amount: "₦ 300,000",
                date: "Dec 20th at 02:34PM",
              ),
              TransactionsCard(
                title: "Savings withdrawal",
                message: "Naira reserve",
                amount: "₦ 300,000",
                date: "Dec 20th at 02:34PM",
                isGreenBg: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
