import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:finalportfolio/constants.dart';
import 'package:finalportfolio/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(gradient: homeBackGround),
      child: Center(
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          direction: Axis.horizontal,
          children: [
            Padding(
              padding: Responsive.isDesktop(context)
                  ? const EdgeInsets.only(left: 110.0)
                  : const EdgeInsets.only(left: 50.0),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (Responsive.isMobile(context))
                    Image.asset(
                      "Assets/Training-and-Application.gif",
                      height: 250,
                    ),
                  if (Responsive.isMobile(context))
                    const SizedBox(
                      height: 50,
                    ),
                  Responsive.isMobile(context)
                      ? Text(
                          "Hey !, my name is",
                          style: GoogleFonts.salsa(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      : Text(
                          "Hey !, my name is",
                          style: GoogleFonts.salsa(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                  Responsive.isMobile(context)
                      ? Text(
                          "Rishabh Bansal",
                          style: GoogleFonts.salsa(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      : Text(
                          "Rishabh Bansal",
                          style: GoogleFonts.salsa(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                  Row(
                    children: [
                      Responsive.isMobile(context)
                          ? Text(
                              "And I'm a ",
                              style: GoogleFonts.salsa(
                                  fontSize: 20,
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
                                        fontSize: 20,
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor),
                                  )
                                : TypewriterAnimatedText(
                                    "Web Developer",
                                    textStyle: GoogleFonts.salsa(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor),
                                  )
                          ]),
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Responsive.isDesktop(context)
                ? Padding(
                    padding: const EdgeInsets.only(top: 100.0, right: 180),
                    child: Image.asset("Assets/helloHand.png"),
                  )
                : const Padding(padding: EdgeInsets.all(8.0))
          ],
        ),
      ),
    ));
  }
}
