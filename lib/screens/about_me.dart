import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:finalportfolio/constants.dart';
import 'package:finalportfolio/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: darkBG01),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "About Me",
              style: GoogleFonts.salsa(fontSize: 50, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 45,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "who am I",
                  style: GoogleFonts.salsa(fontSize: 25, color: primaryColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 45,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: Responsive.isDesktop(context)
                      ? const EdgeInsets.only(top: 10, bottom: 100)
                      : const EdgeInsets.only(
                          top: 40, bottom: 30, left: 50, right: 50),
                  child: Image.asset(
                    "Assets/rishabh.png",
                    height: 350,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: Responsive.isDesktop(context)
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    mainAxisAlignment: Responsive.isDesktop(context)
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        "Hey, myself Rishabh Bansal, student of Master of Computer \nApplication (M.C.A.) from Sharda University.",
                        textAlign: Responsive.isDesktop(context)
                            ? null
                            : TextAlign.center,
                        style: GoogleFonts.salsa(
                          fontSize: Responsive.isMobile(context) ? 25 : 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I am from Bulandshahr, Uttar Pradesh.",
                        textAlign: Responsive.isTablet(context)
                            ? TextAlign.center
                            : null,
                        style: GoogleFonts.salsa(
                            fontSize: Responsive.isMobile(context) ? 25 : 30,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.center,
                        children: [
                          Responsive.isMobile(context)
                              ? Text(
                                  "And I'm a ",
                                  style: GoogleFonts.salsa(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              : Text(
                                  "And I'm a ",
                                  style: GoogleFonts.salsa(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                          AnimatedTextKit(
                              pause: const Duration(milliseconds: 1000),
                              repeatForever: true,
                              animatedTexts: [
                                Responsive.isMobile(context)
                                    ? TypewriterAnimatedText(
                                        "Flutter Developer",
                                        textStyle: GoogleFonts.salsa(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor),
                                      )
                                    : TypewriterAnimatedText(
                                        "Flutter Developer",
                                        textStyle: GoogleFonts.salsa(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor),
                                      ),
                                Responsive.isMobile(context)
                                    ? TypewriterAnimatedText(
                                        "Web Developer",
                                        textStyle: GoogleFonts.salsa(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor),
                                      )
                                    : TypewriterAnimatedText(
                                        "Web Developer",
                                        textStyle: GoogleFonts.salsa(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor),
                                      ),
                              ]),
                        ],
                      ),
                      Responsive.isTablet(context)
                          ? const SizedBox(
                              height: 40,
                            )
                          : const SizedBox(
                              height: 50,
                            ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
