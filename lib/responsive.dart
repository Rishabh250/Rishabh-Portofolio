import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
      required this.mobile,
      this.largeMobile,
      this.tablet,
      required this.desktop,
      this.mediumMobile,
      this.smallMobile})
      : super(key: key);

  final Widget mobile;
  final Widget? smallMobile;
  final Widget? largeMobile;
  final Widget? mediumMobile;
  final Widget? tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;
  static bool isMediumMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 760;
  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 900;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1060;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1250;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (_size.width >= 1250) {
      print("Desktop");
      return desktop;
    } else if (_size.width >= 900 && tablet != null) {
      print("tab");

      return tablet!;
    } else if (_size.width >= 750 && mediumMobile != null) {
      print("mediumMobile");

      return mediumMobile!;
    } else if (_size.width >= 600 && mediumMobile != null) {
      print("mm");
      return mediumMobile!;
    } else {
      print("mobile");
      return mobile;
    }
  }
}
