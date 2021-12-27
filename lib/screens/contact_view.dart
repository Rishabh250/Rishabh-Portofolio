import 'package:finalportfolio/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContactView extends StatelessWidget {
  const MyContactView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Contact me",
            style: GoogleFonts.salsa(fontSize: 50, color: Colors.black),
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
                "get in touch",
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
