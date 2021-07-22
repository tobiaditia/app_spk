import 'package:app_spk/pages/home/laptop_page.dart';
import 'package:app_spk/pages/home/request_page.dart';
import 'package:app_spk/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/choose-weight');
        },
        backgroundColor: secondaryColor,
        child: Image.asset(
          "assets/icon_nav_cart.png",
          width: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              backgroundColor: bgColor4,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 0),
                      child: Icon(
                        Icons.laptop,
                        size: 21,
                        color: currentIndex == 0
                            ? primaryColor
                            : Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 15, bottom: 0),
                      child: Icon(
                        Icons.contact_support,
                        size: 21,
                        color: currentIndex == 1
                            ? primaryColor
                            : Color(0xff808191),
                      ),
                    ),
                    label: '')
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return LaptopPage();
          break;
        case 1:
          return RequestPage();
          break;
        default:
          return LaptopPage();
      }
    }

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: Center(
        child: body(),
      ),
    );
  }
}
