import 'package:finalportfolio/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProjectsView extends StatelessWidget {
  const MyProjectsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: darkBG01),
      child: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "My Projects",
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
                "what I do till now or in future",
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
          const SizedBox(
            height: 80,
          ),
        ]),
      ),
    );
  }
}
