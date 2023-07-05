// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:consultancy/widgets/star-rating.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsultantCard extends StatefulWidget {
  ConsultantCard({super.key, required this.name, required this.job, required this.color});

  String name;
  String job;
  Color color;

  @override
  State<ConsultantCard> createState() => ConsultantCardState();
}

class ConsultantCardState extends State<ConsultantCard> {
  TextStyle currentFontStyle(
      {required double fontsize,
      required Color color,
      FontWeight fontWeight = FontWeight.normal,
      double letterSpacing = 0.0}) {
    return GoogleFonts.poppins(
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 2,
            color: widget.color,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.04,
                        right: MediaQuery.of(context).size.width * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: CircleAvatar(
                          backgroundColor: Color(0xff098127),
                          minRadius: 32,
                          maxRadius: 42,
                          child: CircleAvatar(
                            minRadius: 30,
                            maxRadius: 40,
                            backgroundColor: Colors.blue,
                          )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.name,
                            style: currentFontStyle(
                                fontsize:
                                    MediaQuery.of(context).size.width * 0.05,
                                color: Color(0xff2E75B6))),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Text(widget.job,
                              style: currentFontStyle(
                                  fontsize:
                                      MediaQuery.of(context).size.width * 0.045,
                                  color: Color(0xffA8B7C6))),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05),
                      child: Text("Rating",
                          style: currentFontStyle(
                              fontsize:
                                  MediaQuery.of(context).size.width * 0.04,
                              color: Color(0xffA8B7C6))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: StarRating(
                        starCount: 5,
                        rating: 5,
                        color: Color(0xff098127),
                        size: MediaQuery.of(context).size.width * 0.05,
                        onRatingChanged: (rating) {
                          //When rating is changed
                          print("New rating selected: $rating");
                        },
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Text("About the consultant:",
                      style: currentFontStyle(
                          fontsize: MediaQuery.of(context).size.width * 0.04,
                          color: Color(0xff032362),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: Text(
                      "Madison works closely with organizations to develop and implement mental health and emotional wellness programs tailored to their specific needs. Through her expertise and guidance, she helps employees navigate and address personal and professional challenges, reducing stress, burnout, and fostering a positive work-life balance",
                      style: currentFontStyle(
                          fontsize: MediaQuery.of(context).size.width * 0.04,
                          color: Color(0xff76ABDA),
                          letterSpacing: 0.4)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.04,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2E75B6)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text('Schedule',
                            style: currentFontStyle(
                                fontsize:
                                    MediaQuery.of(context).size.width * 0.06,
                                color: Color(0xfff8f8f8),
                                letterSpacing: 0.4)),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
