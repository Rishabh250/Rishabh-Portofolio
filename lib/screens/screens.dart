import 'package:finalportfolio/screens/about_me.dart';
import 'package:finalportfolio/screens/contact_view.dart';
import 'package:finalportfolio/screens/projects_view.dart';
import 'package:finalportfolio/screens/service_view.dart';
import 'package:finalportfolio/screens/top_home_screen.dart';
import 'package:flutter/material.dart';

import 'my_skills_view.dart';

class DiffernectScreens extends StatelessWidget {
  const DiffernectScreens({
    Key? key,
    required ScrollController scrollController,
    required this.colorAnimationController,
    required Animation colorTween,
  }) : super(key: key);

  final AnimationController colorAnimationController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          HomeView(),
          AboutView(),
          ServiceView(),
          MySkillsView(),
          MyProjectsView(),
          MyContactView(),
        ],
      ),
    );
  }
}
