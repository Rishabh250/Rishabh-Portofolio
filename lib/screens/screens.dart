import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:finalportfolio/constants.dart';
import 'package:finalportfolio/responsive.dart';
import 'package:finalportfolio/screens/about_me.dart';
import 'package:finalportfolio/screens/service_view.dart';
import 'package:finalportfolio/screens/top_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiffernectScreens extends StatelessWidget {
  const DiffernectScreens({
    Key? key,
    required ScrollController scrollController,
    required this.colorAnimationController,
    required Animation colorTween,
  })  : _scrollController = scrollController,
        _colorTween = colorTween,
        super(key: key);

  final ScrollController _scrollController;
  final AnimationController colorAnimationController;
  final Animation _colorTween;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeView(),
          const AboutView(),
          const ServiceView(),
          Flexible(
              child: Container(
            height: 500,
            decoration: const BoxDecoration(gradient: homeBackGround),
          )),
          Flexible(
              child: Container(
            height: 500,
            decoration: const BoxDecoration(gradient: homeBackGround),
          )),
          Flexible(
              child: Container(
            height: 500,
            decoration: const BoxDecoration(gradient: homeBackGround),
          )),
        ],
      ),
    );
  }
}
