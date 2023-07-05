// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/pageFour.dart';
import '../pages/pageThree.dart';
import '../pages/pageTwo.dart';
import '../pages/pageOneDesktop.dart';

import 'home.dart';



class HomeScreen_Desktop extends StatefulWidget {
  const HomeScreen_Desktop({super.key});

  @override
  State<HomeScreen_Desktop> createState() => _HomeScreen_DesktopState();
}

class _HomeScreen_DesktopState extends State<HomeScreen_Desktop> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    PageOne_Desktop(),
    PageTwo(),
    PageThree(),
    PageFour(),
  ];

  final List<IconData> icons = [
    Icons.supervisor_account_rounded,
    Icons.edit_rounded,
    Icons.calendar_month_sharp,
    Icons.account_box_rounded
  ];

  final List<String> icon_label = [
    'Your Consultant',
    'Appointment',
    'History',
    'Account'
  ];

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
        title: Text('Side Menu'),
      ),
      drawer: Drawer(
        elevation: 0,
        width: MediaQuery.of(context).size.width * 0.3,
        backgroundColor: Color.fromARGB(255, 211, 230, 245),
        child: ListView.builder(
          itemCount: _pages.length + 1, // Account for the header
          itemBuilder: (context, index) {
            if (index == 0) {
              return DrawerHeader(
                  child: Center(
                    child: Text('Icon here',
                        style: currentFontStyle(
                            fontsize: MediaQuery.of(context).size.width * 0.02,
                            color: Color(0xff098127))),
                  ));
            }

            final pageIndex = index - 1;
            final isSelected = _selectedIndex == pageIndex;

            return Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05,
                bottom: MediaQuery.of(context).size.height * 0.05,
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                leading: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.025,
                      right: MediaQuery.of(context).size.width * 0.01),
                  child: Icon(icons[pageIndex],
                      size: MediaQuery.of(context).size.width * 0.015,
                      color: isSelected
                          ? Color.fromARGB(255, 211, 230, 245)
                          : Color(0xff2E75B6)),
                ),
                title: Padding(
                  padding: EdgeInsets.only(),
                  child: Text(icon_label[pageIndex],
                      style: currentFontStyle(
                          fontsize: MediaQuery.of(context).size.width * 0.015,
                          color: isSelected
                              ? Color.fromARGB(255, 211, 230, 245)
                              : Color(0xff2E75B6))),
                ),
                selected: isSelected,
                selectedTileColor: Color(0xff2E75B6),
                tileColor: isSelected ? Colors.black26 : null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onTap: () {
                  _navigateToPage(pageIndex);
                  Navigator.pop(context);
                },
              ),
            );
          },
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }

  void _navigateToPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
