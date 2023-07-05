// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:consultancy/widgets/star-rating.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsultantCard_Desktop extends StatefulWidget {
  ConsultantCard_Desktop(
      {super.key, required this.name, required this.job, required this.color});

  String name;
  String job;
  Color color;

  @override
  State<ConsultantCard_Desktop> createState() => _ConsultantCard_DesktopState();
}

class _ConsultantCard_DesktopState extends State<ConsultantCard_Desktop> {
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
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.02,
        right: MediaQuery.of(context).size.width * 0.02,
        top: MediaQuery.of(context).size.height * 0.03,
      ),
      child: SizedBox(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              top: MediaQuery.of(context).size.height * 0.04,
                              right: MediaQuery.of(context).size.width * 0.02,
                              bottom: MediaQuery.of(context).size.height * 0.02,
                            ),
                            child: CircleAvatar(
                                backgroundColor: Color(0xff098127),
                                minRadius: 32,
                                maxRadius: 62,
                                child: CircleAvatar(
                                  minRadius: 30,
                                  maxRadius: 60,
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
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Color(0xff2E75B6))),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.01),
                                child: Text(widget.job,
                                    style: currentFontStyle(
                                        fontsize:
                                            MediaQuery.of(context).size.width *
                                                0.015,
                                        color: Color(0xffA8B7C6))),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.04,
                          right: MediaQuery.of(context).size.width * 0.02,
                          bottom: MediaQuery.of(context).size.height * 0.04,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff2E75B6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0), // Adjust the corner radius
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              child: Text('Schedule',
                                  style: currentFontStyle(
                                      fontsize:
                                          MediaQuery.of(context).size.width *
                                              0.015,
                                      color: Color(0xfff8f8f8),
                                      letterSpacing: 0.4)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02,
                            bottom: MediaQuery.of(context).size.height * 0.18,
                          ),
                          child: Text("About the consultant:",
                              style: currentFontStyle(
                                  fontsize:
                                      MediaQuery.of(context).size.width *
                                          0.01,
                                  color: Color(0xff032362),
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.4)),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width *
                                      0.02),
                              child: Text("Rating",
                                  style: currentFontStyle(
                                      fontsize:
                                          MediaQuery.of(context).size.width *
                                              0.01,
                                      color: Color(0xffA8B7C6))),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.width * 0.02,
                              ),
                              child: StarRating(
                                starCount: 5,
                                rating: 5,
                                color: Color(0xff098127),
                                size:
                                    MediaQuery.of(context).size.width * 0.01,
                                onRatingChanged: (rating) {
                                  //When rating is changed
                                  print("New rating selected: $rating");
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02,
                              bottom:
                                  MediaQuery.of(context).size.height * 0.04),
                          child: Text(
                              "Madison works closely with organizations to develop and implement mental health and emotional wellness programs tailored to their specific needs. Through her expertise and guidance, she helps employees navigate and address personal and professional challenges, reducing stress, burnout, and fostering a positive work-life balance Madison works closely with organizations to develop and implement mental health and emotional wellness programs tailored to their specific needs. Through her expertise and guidance, she helps employees navigate and address personal and professional challenges, reducing stress, burnout, and fostering a positive work-life balance Madison works closely with organizations to develop and implement mental health and emotional wellness programs tailored to their specific needs. Through her expertise and guidance, she helps employees navigate and address personal and professional challenges, reducing stress, burnout, and fostering a positive work-life balance",
                              style: currentFontStyle(
                                  fontsize:
                                      MediaQuery.of(context).size.width * 0.01,
                                  color: Color(0xff76ABDA),
                                  letterSpacing: 0.4)),
                        ),
                      ],
                    ))
                  ]),
                ],
              ))),
    );
  }
}
