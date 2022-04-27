import 'package:events/models/assests.dart';
import 'package:events/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/lists.dart';
import '../models/market_data.dart';
import '../widgets/assest_lin_chart_dart.dart';

class AssetPage extends StatefulWidget {
  const AssetPage({Key? key}) : super(key: key);

  @override
  State<AssetPage> createState() => _AssetPageState();
}

class _AssetPageState extends State<AssetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Assets',
              style: GoogleFonts.balooBhai2(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ))),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AssetsWidget(),
              const SizedBox(
                height: 20,
              ),
              Text('Market',
                  style: GoogleFonts.balooBhai2(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: GoogleFonts.balooBhai2(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: const Icon(
                    Icons.shuffle_sharp,
                    color: Colors.grey,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    gapPadding: 10,
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.withAlpha(50),
                      width: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                spacing: 10,
                children: datas.map((e) {
                  return Container(
                    height: 40,
                    width: 90,
                    child: Center(
                        child: Text(e,
                            style: GoogleFonts.balooBhai2(
                              color: isFirst(e) ? Colors.white : Colors.grey,
                            ))),
                    decoration: BoxDecoration(
                        color: isFirst(e) ? MyColors.mainBlueDark : null,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.grey.withAlpha(50),
                          width: 1,
                        )),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: marketImes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                child: Center(
                                    child: SizedBox(
                                        height: 30,
                                        child: Image.asset(
                                            marketImes[index].imageUrl))),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey.withAlpha(50),
                                      width: 1,
                                    )),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(marketImes[index].name,
                                      style: GoogleFonts.balooBhai2(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(marketImes[index].shortname,
                                      style: GoogleFonts.balooBhai2(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          LineChartWidget(
                            colors: marketImes[index].colors ?? '',
                            spotsData: marketImes[index].spots ?? '',
                          ),
                          Column(
                            children: [
                              Text(marketImes[index].price,
                                  style: GoogleFonts.balooBhai2(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  )),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(marketImes[index].percentage,
                                  style: GoogleFonts.balooBhai2(
                                    color: marketImes[index].isdipping
                                        ? Colors.red
                                        : Colors.green,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

  bool isFirst(e) {
    return datas.first == e;
  }
}

class AssetsWidget extends StatelessWidget {
  const AssetsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: assets.map<Widget>((e) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 190,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.withAlpha(50),
                      width: 1,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.assetName ?? '',
                                style: GoogleFonts.balooBhai2(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                e.fullname ?? '',
                                style: GoogleFonts.balooBhai2(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              e.assetImage ?? '',
                              height: 50,
                              width: 50,
                            ),
                          )
                        ],
                      ),
                      LineChartWidget(
                        colors: const [
                          Colors.grey,
                          MyColors.mainBlueDark,
                          MyColors.mainBlue,
                        ],
                        spotsData: spots,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e.currrentPrice ?? '',
                              style: GoogleFonts.balooBhai2(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              )),
                          Text(e.percentage ?? '',
                              style: GoogleFonts.balooBhai2(
                                  color: e.isdipping == false
                                      ? Colors.green
                                      : Colors.red,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                        ],
                      )
                    ],
                  ),
                )),
          );
        }).toList(),
      )
    ]);
  }
}
