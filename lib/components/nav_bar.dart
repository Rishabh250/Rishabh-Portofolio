import 'package:finalportfolio/components/top_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../responsive.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.colorAnimationController,
    required Animation colorTween,
    required ScrollController scrollController,
    required Animation textColorTween,
  })  : _colorTween = colorTween,
        _scrollController = scrollController,
        _textColorTween = textColorTween,
        super(key: key);

  final AnimationController colorAnimationController;
  final Animation _colorTween;
  final ScrollController _scrollController;
  final Animation _textColorTween;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: AnimatedBuilder(
          animation: colorAnimationController,
          builder: (context, child) => Responsive.isDesktop(context)
              ? AppBar(
                  backgroundColor: _colorTween.value,
                  elevation: 10,
                  titleSpacing: 0.0,
                  flexibleSpace: TopMenuBar(
                    scrollController: _scrollController,
                  ),
                  title: Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 100, right: 10),
                    child: Text(
                      "Portfolio",
                      style: GoogleFonts.salsa(
                          color: _textColorTween.value, fontSize: 45),
                    ),
                  ),
                )
              : AppBar(
                  title: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, top: 30.0, left: 20),
                    child: Text(
                      "Portfolio...",
                      style: GoogleFonts.salsa(
                          color: _textColorTween.value, fontSize: 40),
                    ),
                  ),
                  elevation: 10,
                  backgroundColor: _colorTween.value,
                )),
    );
  }
}
