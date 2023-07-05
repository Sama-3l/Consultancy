import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget phoneBuilder;
  final Widget iPadMiniBuilder;
  final Widget iPadProBuilder;
  final Widget desktopBuilder;

  ResponsiveWidget({
    required this.phoneBuilder,
    required this.iPadMiniBuilder,
    required this.iPadProBuilder,
    required this.desktopBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double screenWidth = constraints.maxWidth;

        if (screenWidth < 600) {
          // Phone layout
          if (phoneBuilder != null) {
            return phoneBuilder;
          }
        } else if (screenWidth >= 600 && screenWidth < 960) {
          // iPad Mini layout
          if (iPadMiniBuilder != null) {
            return iPadMiniBuilder;
          }
        } else if (screenWidth >= 960 && screenWidth < 1280) {
          // iPad Pro layout
          if (iPadProBuilder != null) {
            return iPadProBuilder;
          }
        } else {
          // Desktop layout
          if (desktopBuilder != null) {
            return desktopBuilder;
          }
        }

        return Container();
      },
    );
  }
}