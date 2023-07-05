// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:consultancy/widgets/card.dart';
import 'package:consultancy/pages/pageTwo.dart';
import 'package:consultancy/pages/pageThree.dart';
import 'package:consultancy/pages/pageFour.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  TextStyle currentFontStyle(
      {required double fontsize,
      required Color color,
      FontWeight fontWeight = FontWeight.normal}) {
    return GoogleFonts.poppins(
        fontSize: fontsize, color: color, fontWeight: fontWeight);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: CircleAvatar(
                  minRadius: 10,
                  maxRadius: 20,
                ),
              ),
              Expanded(
                child: Text("Your Consultant",
                    textAlign: TextAlign.center,
                    style: currentFontStyle(
                        fontsize: MediaQuery.of(context).size.width * 0.06,
                        color: Color(0xff098127),
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: ConsultantCard(
              name: 'Madison Thompson',
              job: 'Consultant',
              color: Color.fromARGB(255, 211, 230, 245),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: ConsultantCard(
              name: 'Madison Thompson',
              job: 'Consultant',
              color: Colors.white,
            ),
          )
        ],
      );
  }
}

class HomeScreen_Mobile extends StatefulWidget {
  const HomeScreen_Mobile({super.key});

  @override
  State<HomeScreen_Mobile> createState() => _HomeScreen_MobileState();
}

class _HomeScreen_MobileState extends State<HomeScreen_Mobile> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
  ];

   Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.width*0.15,
            width: MediaQuery.of(context).size.width*0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _currentIndex == index ? Color(0xff2E75B6) : Colors.transparent,
            ),
            child: Icon(
              icon,
              color: _currentIndex == index ? Color.fromARGB(255, 211, 230, 245) : Color(0xff2E75B6),
              size: 20,
            ),
          ),
          
        ],
      ),
    );
  }

  TextStyle currentFontStyle(
      {required double fontsize,
      required Color color,
      FontWeight fontWeight = FontWeight.normal}) {
    return GoogleFonts.poppins(
        fontSize: fontsize, color: color, fontWeight: fontWeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          backgroundColor: Colors.transparent,
          title: Text('Icon here',
              style: currentFontStyle(
                  fontsize: MediaQuery.of(context).size.width * 0.08,
                  color: Color(0xff098127)))),
      body: _pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height*0.1,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*0.1,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 230, 245),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildNavBarItem(Icons.supervisor_account_rounded, 0),
                    buildNavBarItem(Icons.edit_rounded, 1),
                    buildNavBarItem(Icons.calendar_month_sharp, 2),
                    buildNavBarItem(Icons.account_box_rounded, 3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
