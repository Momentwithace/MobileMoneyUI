// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moni_ui/config/text_themes.dart';

import '../widgets/feeds_card.dart';
import '../widgets/offers_card.dart';
import '../widgets/wallet_action_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height / 4.5,
            flexibleSpace: LayoutBuilder(builder: (context, constraint) {
              top = constraint.biggest.height;
              return FlexibleSpaceBar(
                title: top >= MediaQuery.of(context).size.height / 6
                    ? AnimatedOpacity(
                        curve: Curves.easeOut,
                        duration: Duration(milliseconds: 300),
                        opacity: top >= MediaQuery.of(context).size.height / 6
                            ? 1.0
                            : 0.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://cdn.shopify.com/s/files/1/0150/0643/3380/products/SB-Standees-Spong-1_800x.jpg?v=1603744567"),
                                ),
                                Spacer(),
                                SvgPicture.asset(
                                  "assets/support.svg",
                                  height: 24,
                                  width: 24,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Good afternoon,",
                                      style: styleW18.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      "@ace",
                                      style: styleW18,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.white.withOpacity(.3)),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/coin.svg",
                                        width: 12,
                                        height: 12,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Cashback",
                                        style: styleW12,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    : AnimatedOpacity(
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 400),
                        opacity:
                            top <= MediaQuery.of(context).size.height / 6.02
                                ? 1.0
                                : 0.0,
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black,
                            child: Image.asset(
                              "assets/background.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://cdn.shopify.com/s/files/1/0150/0643/3380/products/SB-Standees-Spong-1_800x.jpg?v=1603744567"),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "@ace",
                                    style: styleW18,
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.white.withOpacity(.3)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/coin.svg",
                                          width: 12,
                                          height: 12,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Cashback",
                                          style: styleW12,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                centerTitle: true,
                background: Image.asset(
                  "assets/background.png",
                  fit: BoxFit.cover,
                ),
              );
            }),
            centerTitle: true,
            backgroundColor: Colors.black,
            toolbarHeight: 90,
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: [
                  SvgPicture.asset("assets/suitcase.svg"),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Get A business account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.expand_more)
                ]),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(children: [
                        Text(
                          "Naira Account Balance",
                          style: TextStyle(color: Color(0xff737682)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.visibility_outlined,
                          color: Color(0xff737682),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "₦ 234,430",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ".00",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff737682)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            WalletActionCard(
                              asset: "assets/Money.png",
                              action: "Add money",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            WalletActionCard(
                              asset: "assets/Icon.png",
                              action: "Send money",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            WalletActionCard(
                              asset: "assets/phone.png",
                              action: "Buy airtime",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            WalletActionCard(
                              asset: "assets/grid.png",
                              action: "Pay bills",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            WalletActionCard(
                              asset: "assets/finger.png",
                              action: "Buy data",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            WalletActionCard(
                              asset: "assets/Money.png",
                              action: "Add money",
                            ),
                          ],
                        ),
                      ),
                    ),
                    // !Savings Card
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 78,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.centerRight,
                                image: AssetImage(
                                  "assets/safe-bg.png",
                                )),
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Color(0xffFFF4F1),
                              Color(0xffFFF4F1)
                            ])),
                        child: Stack(children: [
                          Positioned(
                              right: 110,
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                height: 78,
                                color: Color(0xffFFF4F1).withOpacity(.8),
                              )),
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Create a savings plan",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "Save for your lifestyle",
                                  ),
                                ],
                              ),
                              Spacer(),
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                width: 80,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset("assets/piggy.png"),
                                    Positioned(
                                        bottom: 15,
                                        left: 45,
                                        child: Image.asset("assets/cash.png"))
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              )
                            ],
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    //! Loan Card
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 78,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(colors: [
                              Color(0xffFFF4F1),
                              Color(0xffFFF4F1)
                            ])),
                        child: Stack(children: [
                          Positioned(
                              right: 120,
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                height: 78,
                                color: Color(0xffFFF4F1).withOpacity(.8),
                              )),
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get a Moni loan",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "Get the support you need",
                                  ),
                                ],
                              ),
                              Spacer(),
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                width: 95,
                                child: Stack(
                                  // alignment: Alignment.topRight,
                                  children: [
                                    Positioned(
                                        top: 0,
                                        left: 4,
                                        child: Image.asset("assets/star.png")),
                                    Positioned(
                                        bottom: 25,
                                        right: -2,
                                        child:
                                            Image.asset("assets/circle.png")),
                                    Positioned(
                                        bottom: 15,
                                        left: 0,
                                        child: Image.asset("assets/star.png")),
                                    Positioned(
                                        bottom: 45,
                                        right: 18,
                                        child:
                                            Image.asset("assets/circle.png")),
                                    Positioned(
                                        bottom: 42,
                                        left: 20,
                                        child:
                                            Image.asset("assets/circle.png")),
                                    Positioned(
                                        bottom: -4,
                                        right: 0,
                                        child: Image.asset("assets/star.png")),
                                    Positioned(
                                        bottom: 12,
                                        right: 30,
                                        child: Image.asset("assets/star.png")),
                                    Positioned(
                                        right: 12,
                                        child: Image.asset("assets/hand.png",
                                            height: 45)),
                                    Positioned(
                                        bottom: 0,
                                        child: Image.asset("assets/coin.png"))
                                  ],
                                ),
                              ),
                              // SizedBox(
                              //   width: 18,
                              // )
                            ],
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Do More",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Set up your passcode and enable biometrics to sign in with one tap",
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Complete setup",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFC4625)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: List.generate(
                          5,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: AnimatedContainer(
                                  curve: Curves.easeIn,
                                  duration: Duration(milliseconds: 500),
                                  height: 10,
                                  width: index == 1 ? 21 : 10,
                                  decoration: BoxDecoration(
                                      color: index == 1
                                          ? Color(0xffEC642C)
                                          : Color.fromARGB(255, 209, 210, 214),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "My offers",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          OffersCard(
                            actionText: "Create plan",
                            asset: "assets/handtray.png",
                            message: "Create a reserve plan",
                            title: "Reserve plan",
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          OffersCard(
                            actionText: "Get deal",
                            asset: "assets/gang.png",
                            message: "20% off flights deals",
                            title: "Travel deals",
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          OffersCard(
                            actionText: "Register",
                            asset: "assets/handtray.png",
                            message: "10% off subscription deals",
                            title: "Netflix discount",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Material(
              elevation: .5,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "My feed",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        FeedsCard(
                          asset: "assets/vicktor.png",
                          title: "Victor Adedini",
                          userName: "@Vicktor",
                          message:
                              "Victor is inviting you to join “the lagos ballers” tribe group 💰",
                          actionText: "Review Request",
                          time: "3:45 PM Nov 4",
                        ),
                        FeedsCard(
                          asset: "assets/profile-update.png",
                          title: "Profile update",
                          message: "Your address verification is now complete.",
                          time: "3:45 Nov 4",
                        ),
                        FeedsCard(
                          asset: "assets/ojo.png",
                          title: "Oluwaleke P Ojo",
                          userName: "@fixer",
                          message:
                              "Oluwaleke sent you ₦10,000 for “Weekend vibes and ishallah” 💰",
                          actionText: "Review details",
                          time: "3:45 PM Nov 4",
                        ),
                        FeedsCard(
                          asset: "assets/toyin.png",
                          title: "Toyin Muminatu ",
                          userName: "@tosties",
                          message:
                              "Toyin just saved N34,000 on your afronation tribe",
                          actionText: "View tribe",
                          time: "3:45 Nov 4",
                        ),
                        FeedsCard(
                          title: "Oluwabenny Adedini",
                          message:
                              "Oluwabenny sent you ₦10,000 for “Weekend vibes and ishallah” 💰",
                          actionText: "View balance",
                          time: "3:45 Nov 4",
                        ),
                        FeedsCard(
                          asset: "assets/handcoin.png",
                          title: "Moni Loans",
                          message:
                              "Your loan application was reviewed but wasn't approved.",
                          actionText: "See more",
                          time: "3:45 Nov 4",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
