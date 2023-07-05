// ignore_for_file: prefer_const_constructors

import 'package:consultancy/widgets/card_desktop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/card.dart';

class PageOne_Desktop extends StatefulWidget {
  const PageOne_Desktop({super.key});

  @override
  State<PageOne_Desktop> createState() => _PageOne_DesktopState();
}

class _PageOne_DesktopState extends State<PageOne_Desktop> {
  TextStyle currentFontStyle(
      {required double fontsize,
      required Color color,
      FontWeight fontWeight = FontWeight.normal}) {
    return GoogleFonts.poppins(
        fontSize: fontsize, color: color, fontWeight: fontWeight);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width*0.02,
            top: MediaQuery.of(context).size.height*0.03,
          ),
          child: Text("Your Consultant",
              textAlign: TextAlign.center,
              style: currentFontStyle(
                  fontsize: MediaQuery.of(context).size.width * 0.02,
                  color: Color(0xff098127),
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: ConsultantCard_Desktop(
            name: 'Madison Thompson',
            job: 'Consultant',
            color: Color.fromARGB(255, 211, 230, 245),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: ConsultantCard_Desktop(
            name: 'Madison Thompson',
            job: 'Consultant',
            color: Colors.white,
          ),
        )
      ],
    ));
  }
}
