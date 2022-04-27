import 'package:events/constants/images.dart';
import 'package:events/constants/lists.dart';
import 'package:events/pages/assest_page.dart';
import 'package:events/pages/settingsPage.dart';
import 'package:events/styles/themes.dart';
import 'package:events/widgets/linechartcontent.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/linechartdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const ProfileWidget(),
            const SizedBox(
              height: 20,
            ),
            const CurrentBalnaceWidget(),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 10,
              children: trades.map<Widget>((e) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.withAlpha(50),
                        width: 1,
                      )),
                  child: Center(
                    child: Text(e,
                        style: GoogleFonts.balooBhai2(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Ethereum',
                    style: GoogleFonts.balooBhai2(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Wrap(
                  spacing: 10,
                  children: timeline.map<Widget>((e) {
                    return Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: getFirst(e) ? MyColors.mainBlueDark : null,
                          border: getFirst(e)
                              ? Border.all(
                                  color: Colors.grey.withAlpha(50),
                                  width: 1,
                                )
                              : null),
                      child: Center(
                        child: Text(e,
                            style: GoogleFonts.balooBhai2(
                              color: getFirst(e) ? Colors.white : Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.dashboard,
                  color: Colors.grey,
                  size: 17,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.39,
                child: const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: LineChartContent(),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text("Withdraw",
                    style: GoogleFonts.balooBhai2(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(50),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ])),
    )));
  }

  bool getFirst(e) {
    return timeline.indexOf(e) == 0;
  }
}

class CurrentBalnaceWidget extends StatelessWidget {
  const CurrentBalnaceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Current Balance',
                    style: GoogleFonts.balooBhai2(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 2,
                ),
                Text('\$ 190,650,00',
                    style: GoogleFonts.balooBhai2(
                        fontSize: 27, fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text('29.46738347 ', style: GoogleFonts.balooBhai2()),
                    Text('ETH',
                        style: GoogleFonts.balooBhai2(color: Colors.grey)),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green.withOpacity(0.2),
                      ),
                      child: Center(
                        child: Text('+0.29%',
                            style: GoogleFonts.balooBhai2(
                                color: const Color.fromARGB(255, 27, 124, 31),
                                fontSize: 13,
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  ],
                )
              ],
            ),
            const Icon(
              Icons.shuffle,
              color: Colors.grey,
              size: 18,
            ),
          ],
        ),
        Positioned(
            right: 50,
            bottom: 5,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                SizedBox(width: 40, height: 40, child: Image.asset(btc)),
                Positioned(
                    bottom: 20,
                    right: 25,
                    child: SizedBox(
                        width: 40, height: 40, child: Image.asset(eth)))
              ],
            ))
      ],
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(avatar),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Wallet',
                      style: GoogleFonts.balooBhai2(
                          fontSize: 17, fontWeight: FontWeight.w500)),
                  Text('Morning, John BalooBhai',
                      style: GoogleFonts.balooBhai2(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ],
              )
            ],
          ),
          PopupMenuButton(
            onSelected: (value) {
              if (value == "assets") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AssetPage()));
              } else if (value == "settings") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              }
            },
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'assets',
                child: Text('Assets', style: GoogleFonts.balooBhai2()),
              ),
              PopupMenuItem(
                value: 'settings',
                child: Text('Settings', style: GoogleFonts.balooBhai2()),
              ),
            ],
          ),
        ],
      )
    ]);
  }
}
