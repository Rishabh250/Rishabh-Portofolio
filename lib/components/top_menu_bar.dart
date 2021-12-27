import 'package:finalportfolio/constants.dart';
import 'package:finalportfolio/on_hover.dart';
import 'package:finalportfolio/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopMenuBar extends StatelessWidget {
  TopMenuBar({Key? key, required this.scrollController}) : super(key: key);

  final ScrollController scrollController;
  Color _color = primaryColor;

  double _offSet = 0;

  void _scrollToHome(_offSet) {
    scrollController.animateTo(_offSet,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  void _scrollToAbout(_offSet) {
    scrollController.animateTo(_offSet,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  void _scrollToService(_offSet) {
    scrollController.animateTo(_offSet,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  void _scrollToSkills(_offSet) {
    scrollController.animateTo(_offSet,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  void _scrollToProject(_offSet) {
    scrollController.animateTo(_offSet,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  void _scrollToContact(_offSet) {
    scrollController.animateTo(_offSet,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  getScrollState() {
    if (scrollController.offset != 0) {
      _color = Colors.white;
    } else {
      _color = primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) => Responsive.isDesktop(context)
      ? Flex(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          direction: Axis.horizontal,
          children: [
            const SizedBox(
              width: 500,
            ),
            OnHover(
              builder: (bool isHovered) {
                getScrollState();
                return GestureDetector(
                  onTap: () {
                    _scrollToHome(0);
                    print("Home");
                  },
                  child: Text("Home",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: isHovered ? _color : Colors.white,
                          fontWeight: FontWeight.bold)),
                );
              },
            ),
            OnHover(builder: (bool isHovered) {
              return GestureDetector(
                onTap: () {
                  print("About");
                  _scrollToAbout(750);
                },
                child: Text("About",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: isHovered ? _color : Colors.white,
                        fontWeight: FontWeight.bold)),
              );
            }),
            OnHover(builder: (bool isHovered) {
              return GestureDetector(
                onTap: () {
                  print("Service");
                  _scrollToService(1400);
                },
                child: Text("Service",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: isHovered ? _color : Colors.white,
                        fontWeight: FontWeight.bold)),
              );
            }),
            OnHover(builder: (bool isHovered) {
              return GestureDetector(
                onTap: () {
                  print("Skills");
                },
                child: Text("Skills",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: isHovered ? _color : Colors.white,
                        fontWeight: FontWeight.bold)),
              );
            }),
            OnHover(builder: (bool isHovered) {
              return GestureDetector(
                onTap: () {
                  print("Projects");
                },
                child: Text("Projects",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: isHovered ? _color : Colors.white,
                        fontWeight: FontWeight.bold)),
              );
            }),
            OnHover(builder: (bool isHovered) {
              return GestureDetector(
                onTap: () {
                  print("Contact");
                },
                child: Text("Contact",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: isHovered ? _color : Colors.white,
                        fontWeight: FontWeight.bold)),
              );
            }),
          ],
        )
      : SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Drawer(
            backgroundColor: const Color.fromRGBO(39, 0, 57, 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: 50,
                    right: 50,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ))),
                Flex(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  direction: Axis.vertical,
                  children: [
                    OnHover(
                      builder: (bool isHovered) {
                        final color =
                            isHovered ? Colors.orange : Colors.redAccent;
                        return GestureDetector(
                          onTap: () {
                            _scrollToHome(0);
                            print("Home");
                            Navigator.pop(context);
                          },
                          child: Text("Home",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        );
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        print("About");
                        _scrollToAbout(700);

                        Navigator.pop(context);
                      },
                      child: Text("About",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        print("Service");
                        _scrollToService(1550);
                      },
                      child: Text("Service",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        print("Skills");
                      },
                      child: Text("Skills",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        print("Projects");
                      },
                      child: Text("Projects",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        print("Contact");
                      },
                      child: Text("Contact",
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
}
