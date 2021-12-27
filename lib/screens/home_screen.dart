import 'package:finalportfolio/components/nav_bar.dart';
import 'package:finalportfolio/components/top_menu_bar.dart';
import 'package:finalportfolio/screens/screens.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController colorAnimationController;
  late AnimationController textAnimationController;
  late Animation _colorTween;
  late Animation _textColorTween;
  late ScrollController _scrollController;

  @override
  void initState() {
    colorAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    _colorTween = ColorTween(
            begin: const Color.fromRGBO(19, 19, 41, 1), end: primaryColor)
        .animate(colorAnimationController);
    _textColorTween = ColorTween(begin: primaryColor, end: Colors.white)
        .animate(colorAnimationController);

    textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));

    _scrollController = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      colorAnimationController.animateTo(scrollInfo.metrics.pixels / 350);

      textAnimationController.animateTo((scrollInfo.metrics.pixels - 350) / 50);
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Scaffold(
              endDrawer: Responsive.isDesktop(context)
                  ? null
                  : TopMenuBar(
                      scrollController: _scrollController,
                    ),
              backgroundColor: const Color(0xFFEEEEEE),
              body: NotificationListener<ScrollNotification>(
                onNotification: _scrollListener,
                child: SizedBox(
                  child: Stack(
                    children: <Widget>[
                      SingleChildScrollView(
                          controller: _scrollController,
                          child: DiffernectScreens(
                              scrollController: _scrollController,
                              colorAnimationController:
                                  colorAnimationController,
                              colorTween: _colorTween)),
                      NavBar(
                          colorAnimationController: colorAnimationController,
                          colorTween: _colorTween,
                          scrollController: _scrollController,
                          textColorTween: _textColorTween),
                    ],
                  ),
                ),
              ),
            )));
  }
}
