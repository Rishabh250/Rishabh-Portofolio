import 'package:finalportfolio/constants.dart';
import 'package:finalportfolio/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySkillsView extends StatelessWidget {
  const MySkillsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: darkBG01),
      child: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "My Skills",
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
                "what I know",
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
            crossAxisAlignment: CrossAxisAlignment.center,
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            children: const [
              Expanded(
                child: AnimatedCircularSkills(
                  label: 'Flutter',
                  percentage: 0.85,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: AnimatedCircularSkills(
                  label: 'Website',
                  percentage: 0.7,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: AnimatedCircularSkills(
                  label: 'Firebase',
                  percentage: 0.8,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class AnimatedCircularSkills extends StatelessWidget {
  const AnimatedCircularSkills({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: const Duration(seconds: 1),
              builder: (context, double value, child) => Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        color: Colors.blue,
                      ),
                      Center(
                          child: Text((value * 100).toInt().toString() + "%")),
                    ],
                  )),
        ),
        const SizedBox(
          height: 20 / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.fjordOne(),
        )
      ],
    );
  }
}
