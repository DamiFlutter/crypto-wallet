import 'package:events/constants/images.dart';
import 'package:events/pages/main_page.dart';
import 'package:events/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/app_providers.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildImageContainer(mediaQ),
            const SizedBox(
              height: 20,
            ),
            buildtext(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 58.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Mainpage()));
                        },
                        child: Container(
                          width: mediaQ.width * 0.8,
                          height: mediaQ.height * 0.06,
                          child: Center(
                            child: Text('Create a wallet',
                                style: GoogleFonts.balooBhai2(
                                    color: MyColors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500)),
                          ),
                          decoration: BoxDecoration(
                            // boxShadow: const [
                            //   BoxShadow(
                            //     color: MyColors.mainBlueDark,
                            //     blurRadius: 2,
                            //     spreadRadius: 2,
                            //   ),
                            //   ],
                            borderRadius: BorderRadius.circular(20),
                            color: MyColors.mainBlueDark,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Already have a wallet? ',
                            style: GoogleFonts.balooBhai2(
                                color:
                                    Provider.of<AppProvider>(context).theme ==
                                            ThemeConfig.lightThme
                                        ? Colors.black
                                        : Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: 'Login',
                            style: GoogleFonts.balooBhai2(
                                color: MyColors.mainBlueDark,
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ])),
                    ],
                  ),
                ],
              ),
            )
          ]),
    );
  }

  Padding buildtext() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Jump start your \n',
              style: GoogleFonts.balooBhai2(
                fontSize: 25,
                color: Provider.of<AppProvider>(context).theme ==
                        ThemeConfig.lightThme
                    ? Colors.black
                    : Colors.white,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'cypto',
                  style: GoogleFonts.balooBhai2(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: MyColors.mainBlue,
                  ),
                ),
                TextSpan(
                  text: ' journey',
                  style: GoogleFonts.balooBhai2(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Text('Start exploring the world of crypto right now with one click.',
              style: GoogleFonts.balooBhai2(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              )),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 10,
            children: images.map<Widget>((e) {
              return Stack(
                overflow: Overflow.visible,
                children: [
                  Image.asset(
                    e['img'],
                    height: 40,
                    width: 40,
                  ),
                  Visibility(
                      visible: isLast(e),
                      child: Positioned(
                        right: -5,
                        top: -5,
                        child: Container(
                          height: 25,
                          width: 25,
                          child: Center(
                            child: Text('+ 99',
                                style: GoogleFonts.balooBhai2(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          ),
                          decoration: const BoxDecoration(
                            color: MyColors.mainBlueDark,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ))
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  bool isLast(e) {
    return images.last == e;
  }

  Container buildImageContainer(Size mediaQ) {
    return Container(
      height: mediaQ.height * 0.5,
      width: mediaQ.width,
      foregroundDecoration: const BoxDecoration(),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.0,
              0.5,
            ],
            colors: [
              MyColors.mainBlue,
              MyColors.mainBlueDark,
            ],
          ),
          image: DecorationImage(image: AssetImage(card), fit: BoxFit.cover)),
    );
  }
}
