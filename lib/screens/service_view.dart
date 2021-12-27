import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:finalportfolio/constants.dart';
import 'package:finalportfolio/on_hover.dart';
import 'package:finalportfolio/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({
    Key? key,
  }) : super(key: key);

  static const String _url = 'https://flutter.dev/';
  static const String _url02 = 'https://wordpress.com/';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: darkBG02),
      child: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "My Services",
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
                "what I provide",
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
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              direction: Responsive.isTablet(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [
                OnHover(
                  builder: (bool isHovered) {
                    return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 10,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: isHovered ? primaryColor : darkBG01,
                          ),
                          width: Responsive.isMediumMobile(context) ? 400 : 500,
                          height:
                              Responsive.isMediumMobile(context) ? 400 : 500,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "Assets/Apps-built-with-Flutter-removebg.png"),
                              Text(
                                "Flutter Applications for ",
                                style: GoogleFonts.salsa(
                                  fontSize:
                                      Responsive.isMobile(context) ? 25 : 30,
                                  color: Colors.white,
                                ),
                              ),
                              AnimatedTextKit(
                                  repeatForever: true,
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      "Android",
                                      textStyle: GoogleFonts.salsa(
                                        fontSize: Responsive.isMobile(context)
                                            ? 25
                                            : 30,
                                        color: isHovered
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "iPhone",
                                      textStyle: GoogleFonts.salsa(
                                        fontSize: Responsive.isMobile(context)
                                            ? 25
                                            : 30,
                                        color: isHovered
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "Web",
                                      textStyle: GoogleFonts.salsa(
                                        fontSize: Responsive.isMobile(context)
                                            ? 25
                                            : 30,
                                        color: isHovered
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "Desktop",
                                      textStyle: GoogleFonts.salsa(
                                        fontSize: Responsive.isMobile(context)
                                            ? 25
                                            : 30,
                                        color: isHovered
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                    TyperAnimatedText(
                                      "Linux",
                                      textStyle: GoogleFonts.salsa(
                                        fontSize: Responsive.isMobile(context)
                                            ? 25
                                            : 30,
                                        color: isHovered
                                            ? Colors.white
                                            : primaryColor,
                                      ),
                                    ),
                                  ]),
                              const SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                  onPressed: () => launch(_url),
                                  child: Text(
                                    "More about Flutter",
                                    style: GoogleFonts.salsa(
                                      fontSize: Responsive.isMobile(context)
                                          ? 15
                                          : 20,
                                      color: isHovered
                                          ? Colors.black
                                          : Colors.white38,
                                    ),
                                  ))
                            ],
                          ),
                        ));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                OnHover(builder: (bool isHovered) {
                  return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      elevation: 10,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: isHovered ? primaryColor : darkBG01,
                        ),
                        width: Responsive.isMediumMobile(context) ? 400 : 500,
                        height: Responsive.isMediumMobile(context) ? 400 : 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "Assets/clipart2939231.png",
                              height: 170,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Website Development ",
                              style: GoogleFonts.salsa(
                                fontSize:
                                    Responsive.isMobile(context) ? 25 : 30,
                                color: Colors.white,
                              ),
                            ),
                            AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    "WordPress",
                                    textStyle: GoogleFonts.salsa(
                                      fontSize: Responsive.isMobile(context)
                                          ? 25
                                          : 30,
                                      color: isHovered
                                          ? Colors.white
                                          : primaryColor,
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    "HTML",
                                    textStyle: GoogleFonts.salsa(
                                      fontSize: Responsive.isMobile(context)
                                          ? 25
                                          : 30,
                                      color: isHovered
                                          ? Colors.white
                                          : primaryColor,
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    "CSS",
                                    textStyle: GoogleFonts.salsa(
                                      fontSize: Responsive.isMobile(context)
                                          ? 25
                                          : 30,
                                      color: isHovered
                                          ? Colors.white
                                          : primaryColor,
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    "PHP",
                                    textStyle: GoogleFonts.salsa(
                                      fontSize: Responsive.isMobile(context)
                                          ? 25
                                          : 30,
                                      color: isHovered
                                          ? Colors.white
                                          : primaryColor,
                                    ),
                                  ),
                                  TyperAnimatedText(
                                    "JavaScript",
                                    textStyle: GoogleFonts.salsa(
                                      fontSize: Responsive.isMobile(context)
                                          ? 25
                                          : 30,
                                      color: isHovered
                                          ? Colors.white
                                          : primaryColor,
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                onPressed: () => launch(_url02),
                                child: Text(
                                  "More about WordPress",
                                  style: GoogleFonts.salsa(
                                    fontSize:
                                        Responsive.isMobile(context) ? 15 : 20,
                                    color: isHovered
                                        ? Colors.black
                                        : Colors.white38,
                                  ),
                                ))
                          ],
                        ),
                      ));
                })
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ]),
      ),
    );
  }
}
